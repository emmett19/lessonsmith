const fs = require("fs");
const path = require("path");

const inputPath = path.join(__dirname, "anchor-games.json");
const outputPath = path.join(__dirname, "games-migration.sql");

const games = JSON.parse(fs.readFileSync(inputPath, "utf8"));

function sqlString(value) {
  if (value === null || value === undefined) return "NULL";
  return `'${String(value).replace(/'/g, "''")}'`;
}

function sqlNumber(value) {
  if (value === null || value === undefined || value === "") return "NULL";
  const num = Number(value);
  return Number.isNaN(num) ? "NULL" : String(num);
}

function sqlBoolean(value) {
  if (value === null || value === undefined) return "false";
  return value ? "true" : "false";
}

const lines = [];

lines.push("-- Generated migration SQL");
lines.push("begin;");

for (const game of games) {
  lines.push(`
insert into games (
  id,
  name,
  class_size,
  class_size_min,
  class_size_max,
  format,
  category,
  energy,
  production_depth,
  language_reason,
  energy_reason,
  rep_density,
  control_risk,
  monitoring_model,
  movement,
  competition,
  best_for,
  description
) values (
  ${sqlString(game.id)},
  ${sqlString(game.name)},
  ${sqlString(game.classSize)},
  ${sqlNumber(game.classSizeMin)},
  ${sqlNumber(game.classSizeMax)},
  ${sqlString(game.format)},
  ${sqlString(game.category)},
  ${sqlString(game.energy)},
  ${sqlString(game.productionDepth)},
  ${sqlString(game.languageReason)},
  ${sqlString(game.energyReason)},
  ${sqlString(game.repDensity)},
  ${sqlString(game.controlRisk)},
  ${sqlString(game.monitoringModel)},
  ${sqlString(game.movement)},
  ${sqlString(game.competition)},
  ${sqlString(game.bestFor)},
  ${sqlString(game.description)}
);`.trim());

  if (Array.isArray(game.levels)) {
    for (const level of game.levels) {
      lines.push(`
insert into game_levels (game_id, level)
values (${sqlString(game.id)}, ${sqlString(level)});
      `.trim());
    }
  }

  if (Array.isArray(game.materials)) {
    for (const material of game.materials) {
      lines.push(`
insert into game_materials (game_id, material)
values (${sqlString(game.id)}, ${sqlString(material)});
      `.trim());
    }
  }

  if (Array.isArray(game.howToRun)) {
    game.howToRun.forEach((step, index) => {
      lines.push(`
insert into game_steps (game_id, step_order, step_text)
values (${sqlString(game.id)}, ${index + 1}, ${sqlString(step)});
      `.trim());
    });
  }

  if (game.tags) {
    if (Array.isArray(game.tags.patterns)) {
      for (const tag of game.tags.patterns) {
        lines.push(`
insert into game_tags (game_id, tag_type, tag_value)
values (${sqlString(game.id)}, 'pattern', ${sqlString(tag)});
        `.trim());
      }
    }

    if (Array.isArray(game.tags.outputTypes)) {
      for (const tag of game.tags.outputTypes) {
        lines.push(`
insert into game_tags (game_id, tag_type, tag_value)
values (${sqlString(game.id)}, 'output_type', ${sqlString(tag)});
        `.trim());
      }
    }

    if (Array.isArray(game.tags.cognitiveModes)) {
      for (const tag of game.tags.cognitiveModes) {
        lines.push(`
insert into game_tags (game_id, tag_type, tag_value)
values (${sqlString(game.id)}, 'cognitive_mode', ${sqlString(tag)});
        `.trim());
      }
    }
  }
}

lines.push("commit;");

fs.writeFileSync(outputPath, lines.join("\n\n"), "utf8");
console.log(`Wrote SQL to ${outputPath}`);