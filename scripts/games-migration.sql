-- Generated migration SQL

begin;

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
  'binary-cue-response',
  'Binary Cue Response Game',
  '6-16',
  6,
  16,
  'Whole class, individual response',
  'Q&A/Dialogue',
  'high',
  'fixed short answer',
  'Good for practicing fast, confident yes/no answers using clear question cues.',
  'High-energy game that keeps the whole class alert and responding quickly.',
  'high',
  'medium',
  'teacher-only',
  'medium',
  'light (optional)',
  'Practicing fast, confident short answers to a yes/no question using clear external cues.',
  'Binary Cue Response is a listening and speaking game where students answer yes/no questions. Two characters indicate the correct response: the Panda always answers ''yes'' and the Donkey always answers ''no''.'
);

insert into game_levels (game_id, level)
values ('binary-cue-response', 'CK');

insert into game_levels (game_id, level)
values ('binary-cue-response', 'ET1');

insert into game_levels (game_id, level)
values ('binary-cue-response', 'ET2');

insert into game_levels (game_id, level)
values ('binary-cue-response', 'PowerUp');

insert into game_materials (game_id, material)
values ('binary-cue-response', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('binary-cue-response', 1, 'Ask the target language question aloud, e.g., ''Can it swim?'' or ''Does he like apples?''.');

insert into game_steps (game_id, step_order, step_text)
values ('binary-cue-response', 2, 'Students respond ''Yes it can'' / ''No it can''t'' or ''Yes he/she does'' / ''No he/she doesn''t'' based on which character the question applies to.');

insert into game_steps (game_id, step_order, step_text)
values ('binary-cue-response', 3, 'Optionally, students can take turns asking each other questions using the same binary rules.');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'pattern', 'binary_question');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'pattern', 'fixed_response');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'output_type', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'cognitive_mode', 'listening_discrimination');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'cognitive_mode', 'rapid_decision');

insert into game_tags (game_id, tag_type, tag_value)
values ('binary-cue-response', 'cognitive_mode', 'fluency');

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
  'volcano-eruption',
  'Volcano Eruption',
  '6-20',
  6,
  20,
  'Pairs (reactive stations), whole-class control',
  'Vocab',
  'high',
  'single-word recognition',
  'Great for building fast listening recognition and single-word recall.',
  'High-energy reaction game that keeps students focused and ready to respond.',
  'high',
  'low',
  'teacher-only',
  'medium',
  'light (optional)',
  'Building fast listening recognition and reaction control with high engagement.',
  'Volcano Eruption is a high-energy TPR listening game designed to practice vocabulary and rapid comprehension. Students work in pairs, each guarding a flashcard. When the teacher calls out a word, only the student with that word reacts by performing the “eruption” action (squatting + shouting the word). On the rotation cue “Volcano Eruption / All Change,” students switch flashcards with their partners. The game emphasizes fast listening, accurate word recognition, and clear pronunciation. Pace can be adjusted by the teacher to match class energy, and safety cues should be maintained to prevent collisions.'
);

insert into game_levels (game_id, level)
values ('volcano-eruption', 'CP');

insert into game_levels (game_id, level)
values ('volcano-eruption', 'CK');

insert into game_levels (game_id, level)
values ('volcano-eruption', 'ET1');

insert into game_materials (game_id, material)
values ('volcano-eruption', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('volcano-eruption', 1, 'Assign one flashcard per student.');

insert into game_steps (game_id, step_order, step_text)
values ('volcano-eruption', 2, 'Explain the eruption action: squat + shout when your word is called.');

insert into game_steps (game_id, step_order, step_text)
values ('volcano-eruption', 3, 'Call out target words randomly; only the student with the matching word responds.');

insert into game_steps (game_id, step_order, step_text)
values ('volcano-eruption', 4, 'After several rounds, give the rotation cue and have students swap cards with a partner.');

insert into game_steps (game_id, step_order, step_text)
values ('volcano-eruption', 5, 'Continue until all students have had multiple turns, monitoring pace and engagement.');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'pattern', 'binary_question');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'pattern', 'target_phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'output_type', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'cognitive_mode', 'listening_reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('volcano-eruption', 'cognitive_mode', 'fluency');

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
  'restaurant-role-play',
  'Restaurant Role Play',
  '3-12',
  3,
  12,
  'Role-based (3–4 students active at a time)',
  'Roleplay',
  'medium',
  'dialogue',
  'Excellent for practicing structured question-and-answer exchanges in a real-life context.',
  'Medium energy roleplay that encourages engagement without losing control.',
  'medium',
  'medium',
  'TA-helpful',
  'medium',
  'None',
  'Practicing contextual sentence production through a predictable service interaction.',
  'Restaurant Role Play is a medium-energy roleplay for practicing question-and-answer pairs in a restaurant context. Students use target language like ''What do you like?'' / ''I like apples'' or ''Do you like burgers?'' / ''Yes, I do'' / ''No, I don''t.'' Roles include customer, waiter, and cook, and the cook can respond with controlled refusals (e.g., ''No apples'', ''No chicken'') to encourage repeated practice.'
);

insert into game_levels (game_id, level)
values ('restaurant-role-play', 'CK');

insert into game_levels (game_id, level)
values ('restaurant-role-play', 'ET1');

insert into game_levels (game_id, level)
values ('restaurant-role-play', 'ET2');

insert into game_levels (game_id, level)
values ('restaurant-role-play', 'PowerUp');

insert into game_levels (game_id, level)
values ('restaurant-role-play', 'CL');

insert into game_materials (game_id, material)
values ('restaurant-role-play', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 1, 'Assign roles: customer, waiter, cook (3–4 students active at a time).');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 2, 'Waiter asks the target language question from the lesson.');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 3, 'Customer responds in full sentences using the target language.');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 4, 'Cook responds as appropriate (teacher can control ''No'' responses to increase repetitions).');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 5, 'Rotate roles as needed so all students practice speaking and listening.');

insert into game_steps (game_id, step_order, step_text)
values ('restaurant-role-play', 6, 'Teacher monitors pacing, controls complexity, and ensures correct use of target language.');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'pattern', 'roleplay');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'pattern', 'contextual_dialogue');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'pattern', 'question_answer_pair');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'output_type', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'output_type', 'dialogue');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'cognitive_mode', 'fluency');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'cognitive_mode', 'pragmatic_production');

insert into game_tags (game_id, tag_type, tag_value)
values ('restaurant-role-play', 'cognitive_mode', 'turn_taking');

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
  'guess-who-descriptive-deduction',
  'Guess Who? (Descriptive Deduction)',
  '6-16',
  6,
  16,
  'Whole class, turn-based questioning',
  'Q&A/Dialogue',
  'medium',
  'Q+A',
  'Strong for practicing descriptive yes/no questions and logical thinking in English.',
  'Medium energy game that promotes focused discussion and careful listening.',
  'low',
  'medium',
  'teacher-only',
  'low',
  'light (optional)',
  'Practicing descriptive yes/no questions with logical deduction.',
  'Guess Who? (Descriptive Deduction) is a medium-energy, turn-based class game where students practice descriptive yes/no questions and logical deduction. It is best suited for the Q+A pair ''Is she wearing a...'' / ''Yes she is'' / ''No she isn''t'', but can also be adapted to ''Are they wearing a...'' to allow for a mystery person who may be a boy or a girl.'
);

insert into game_levels (game_id, level)
values ('guess-who-descriptive-deduction', 'ET1');

insert into game_levels (game_id, level)
values ('guess-who-descriptive-deduction', 'ET2');

insert into game_levels (game_id, level)
values ('guess-who-descriptive-deduction', 'PowerUp');

insert into game_levels (game_id, level)
values ('guess-who-descriptive-deduction', 'CL');

insert into game_materials (game_id, material)
values ('guess-who-descriptive-deduction', 'paper slips');

insert into game_materials (game_id, material)
values ('guess-who-descriptive-deduction', 'bag');

insert into game_materials (game_id, material)
values ('guess-who-descriptive-deduction', 'whiteboard');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 1, 'Students write their names on slips of paper and place them in a bag.');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 2, 'One student secretly draws a name without revealing it.');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 3, 'Other students take turns asking descriptive yes/no questions using the target language (e.g., ''Is she wearing a...'' or ''Are they wearing a...'').');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 4, 'The student who drew the name answers truthfully (''Yes she is'' / ''No she isn''t'').');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 5, 'Students use the answers to eliminate possibilities from their mental or written list.');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 6, 'The game ends when the hidden person is correctly identified.');

insert into game_steps (game_id, step_order, step_text)
values ('guess-who-descriptive-deduction', 7, 'Teacher models strong questions early and ensures repeated questions are avoided.');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'pattern', 'descriptive_questioning');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'pattern', 'deduction');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'pattern', 'yes_no_questions');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'output_type', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'output_type', 'short_phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'cognitive_mode', 'inference');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'cognitive_mode', 'listening');

insert into game_tags (game_id, tag_type, tag_value)
values ('guess-who-descriptive-deduction', 'cognitive_mode', 'hypothesis_testing');

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
  'counselor-schedule-roleplay',
  'Counselor Schedule Roleplay',
  '6-12',
  6,
  12,
  'Roleplay, small-group demo (3 roles) with whole-class rotation',
  'Roleplay',
  'medium',
  NULL,
  'Ideal for practicing full contrast sentences using ''but'' and he/she reporting.',
  'Medium energy structured roleplay that balances speaking practice with clear control.',
  NULL,
  NULL,
  NULL,
  'medium',
  'none (optional light team points)',
  'Practicing contrast sentences with ''but'' (like/love vs dont like/hate) and he/she reporting, using a fun authority-role twist and a visible schedule board',
  'Counselor Schedule Roleplay (Likes/Dislikes + But + Constraint Twist) is a medium-energy small-group roleplay where students practice full contrast sentences using ''but'' and he/she reporting. Students respond to counselor questions about likes and dislikes and optionally report on peers using target language frames. A visible schedule grid and constraint twists are used to maintain engagement and increase repetition of the target sentences.'
);

insert into game_levels (game_id, level)
values ('counselor-schedule-roleplay', 'CL');

insert into game_levels (game_id, level)
values ('counselor-schedule-roleplay', 'ET2');

insert into game_materials (game_id, material)
values ('counselor-schedule-roleplay', 'whiteboard');

insert into game_materials (game_id, material)
values ('counselor-schedule-roleplay', 'markers');

insert into game_materials (game_id, material)
values ('counselor-schedule-roleplay', 'blank cards');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 1, 'Teacher prepares a small list of school subjects and draws a schedule grid on the board (subjects across the top, times down the side).');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 2, 'Three roles are assigned: counselor asks questions, student answers preferences, parent answers about student using he/she frames.');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 3, 'Counselor asks ''What subjects do you like?'' and records responses on the grid using cards.');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 4, 'Students respond using contrast sentences: ''I like ___, but I don''t like ___'' or ''He/She likes ___, but he/she doesn''t like ___''.');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 5, 'Counselor introduces a constraint twist such as ''Sorry, you have to take ___'', requiring students to adapt responses while staying in the target frame.');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 6, 'Roles rotate so multiple students experience each role.');

insert into game_steps (game_id, step_order, step_text)
values ('counselor-schedule-roleplay', 7, 'Teacher monitors language accuracy, ensures pacing, and encourages full sentence production.');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'pattern', 'contrast_but');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'pattern', 'he_she_reporting');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'pattern', 'roleplay');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'pattern', 'preference_selection');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'output_type', 'full_sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'cognitive_mode', 'role_based_speaking');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'cognitive_mode', 'preference_selection');

insert into game_tags (game_id, tag_type, tag_value)
values ('counselor-schedule-roleplay', 'cognitive_mode', 'listening_comprehension');

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
  'line-question-game-faceoff',
  'Line Question Game – Face-Off Variant',
  '6-14',
  6,
  14,
  'Team vs Team, line formation, paired face-off',
  'Q&A/Dialogue',
  'medium',
  'Q+A',
  'Ideal for practicing full contrast sentences using ''but'' and he/she reporting.',
  'Medium energy structured roleplay that balances speaking practice with clear control.',
  'medium',
  'low',
  'teacher-only',
  'low',
  'Team-based (non-language-decided)',
  'Practicing question–answer exchanges when students need more thinking time, clearer monitoring, or reduced rep pressure',
  'Line Question Game – Face-Off Variant is a medium-energy team-based activity where students practice full question-and-answer exchanges in a controlled paired format. Students stand in two lines facing each other and take turns asking and answering using the target sentence frames. A separate non-language competitive mechanic is included to maintain engagement without affecting language accuracy.'
);

insert into game_levels (game_id, level)
values ('line-question-game-faceoff', 'CL');

insert into game_levels (game_id, level)
values ('line-question-game-faceoff', 'ET2');

insert into game_levels (game_id, level)
values ('line-question-game-faceoff', 'PowerUp');

insert into game_materials (game_id, material)
values ('line-question-game-faceoff', 'none');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 1, 'Students form two lines facing each other.');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 2, 'The student at the front of one line asks a question directly to the student facing them.');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 3, 'The opposing student answers using the target sentence frame (full sentence).');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 4, 'After the exchange, a non-language competitive mechanic is used, such as rock-paper-scissors or a dice roll, to determine which team rotates forward.');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 5, 'Teams rotate so new pairs face off, maintaining controlled monitoring of language.');

insert into game_steps (game_id, step_order, step_text)
values ('line-question-game-faceoff', 6, 'Teacher listens to ensure correct sentence formation and clear pronunciation, while keeping the game pace steady.');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'pattern', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'pattern', 'structured_exchange');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'pattern', 'target_sentence_frame');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'output_type', 'Q+A');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'cognitive_mode', 'question_formation');

insert into game_tags (game_id, tag_type, tag_value)
values ('line-question-game-faceoff', 'cognitive_mode', 'listening_comprehension');

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
  'number-call-clap-race',
  '1v1 Number Call Clap Response Race',
  '6-16',
  6,
  16,
  'Team vs Team, whole-class listening with paired responders',
  'Q&A/Dialogue',
  'medium',
  'fixed response',
  'Effective for reinforcing short, accurate answers to teacher-controlled questions.',
  'Medium energy competitive format that keeps all students listening carefully.',
  'medium',
  'low',
  'teacher-only',
  'low (optional add-ons)',
  'Team-based, speed-based',
  'Practicing accurate answers to teacher-controlled questions while enforcing whole-class listening and accountability',
  '1v1 Number Call Clap Response Race is a medium-energy, team-based listening game where students practice giving short, accurate answers to teacher-controlled questions. Students are assigned numbers, and the teacher calls a number to determine which pair races to respond. The focus is on careful listening, rapid recall, and quick physical response in a controlled competitive format.'
);

insert into game_levels (game_id, level)
values ('number-call-clap-race', 'ET1');

insert into game_levels (game_id, level)
values ('number-call-clap-race', 'ET2');

insert into game_levels (game_id, level)
values ('number-call-clap-race', 'CL');

insert into game_levels (game_id, level)
values ('number-call-clap-race', 'PowerUp');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 1, 'Teacher assigns numbers so each number appears on two students in the class.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 2, 'Teacher asks a target language question and then calls a specific number.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 3, 'The two students with that number race to clap first.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 4, 'The first student to clap gives the full answer to the question for full points.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 5, 'The second student to clap answers for partial points.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 6, 'Points are tallied toward a team score, encouraging listening and engagement.');

insert into game_steps (game_id, step_order, step_text)
values ('number-call-clap-race', 7, 'Teacher monitors responses for accuracy and ensures fair play; optional movement or secondary tasks can be added to increase engagement.');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'pattern', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'pattern', 'fixed_response');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'pattern', 'short_answer');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'output_type', 'short_phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'cognitive_mode', 'listening_discrimination');

insert into game_tags (game_id, tag_type, tag_value)
values ('number-call-clap-race', 'cognitive_mode', 'rapid_recall');

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
  'whats-missing',
  'What''s Missing?',
  '4-16',
  4,
  16,
  'Whole class or team-based recall',
  'Vocab',
  'low',
  'single word or short phrase',
  'Good for strengthening vocabulary recall without visual support.',
  'Low-energy review activity that promotes calm focus and accuracy.',
  'medium',
  'low',
  'teacher-only',
  'Low',
  'Optional (individual or team)',
  'Checking recall and reinforcing vocabulary without visual support, especially as a short review or lesson bookend',
  'What''s Missing? is a low-energy whole-class recall game used to reinforce known vocabulary without visual support. Students study a visible set of flashcards, then identify which item has been removed. The focus is on accurate memory recall rather than recognition or extended sentence production.'
);

insert into game_levels (game_id, level)
values ('whats-missing', 'CK');

insert into game_levels (game_id, level)
values ('whats-missing', 'ET1');

insert into game_levels (game_id, level)
values ('whats-missing', 'ET2');

insert into game_levels (game_id, level)
values ('whats-missing', 'CL');

insert into game_materials (game_id, material)
values ('whats-missing', 'Flashcards (minimum 5 recommended)');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 1, 'Teacher displays a set of known vocabulary flashcards (at least 5 recommended).');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 2, 'Students look carefully at the full set.');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 3, 'Students close their eyes or turn around while the teacher removes one or more flashcards.');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 4, 'Teacher asks, ''What''s missing?''');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 5, 'Students respond with the missing word or words.');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 6, 'Difficulty increases by removing multiple cards or reducing viewing time.');

insert into game_steps (game_id, step_order, step_text)
values ('whats-missing', 7, 'Teacher monitors for accuracy and controls response format (individual, choral, or team-based).');

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
  'correct-the-teacher',
  'Correct the Teacher',
  '4-16',
  4,
  16,
  'Whole class or team-based correction',
  'Listening Comprehension',
  'medium',
  'short correction (word, phrase, or sentence)',
  'Excellent for checking understanding by having students detect and correct errors.',
  'Medium energy activity that keeps students mentally engaged without physical movement.',
  'medium',
  'low',
  'teacher-only',
  'low',
  'optional',
  'Checking understanding of meaning and form by having students detect and correct deliberate errors',
  'Correct the Teacher is a medium-energy whole-class activity where students listen for deliberate mistakes in the teacher’s use of the target language and correct them. The teacher intentionally produces an incorrect word, phrase, or sentence, and students must detect the error and provide the correct form. The focus is on understanding meaning and form through active error detection.'
);

insert into game_levels (game_id, level)
values ('correct-the-teacher', 'CK');

insert into game_levels (game_id, level)
values ('correct-the-teacher', 'ET1');

insert into game_levels (game_id, level)
values ('correct-the-teacher', 'ET2');

insert into game_levels (game_id, level)
values ('correct-the-teacher', 'CL');

insert into game_levels (game_id, level)
values ('correct-the-teacher', 'PowerUp');

insert into game_steps (game_id, step_order, step_text)
values ('correct-the-teacher', 1, 'Teacher says an incorrect version of the target language (word, phrase, or sentence).');

insert into game_steps (game_id, step_order, step_text)
values ('correct-the-teacher', 2, 'Students listen carefully and identify the mistake.');

insert into game_steps (game_id, step_order, step_text)
values ('correct-the-teacher', 3, 'Students correct the teacher using the proper form or meaning.');

insert into game_steps (game_id, step_order, step_text)
values ('correct-the-teacher', 4, 'Teacher confirms the correct answer or prompts until the correct version is clearly produced.');

insert into game_steps (game_id, step_order, step_text)
values ('correct-the-teacher', 5, 'Repeat with new deliberate errors, keeping each error focused on one issue at a time.');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'correction');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'error_detection');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'pattern', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'output_type', 'phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'cognitive_mode', 'error_detection');

insert into game_tags (game_id, tag_type, tag_value)
values ('correct-the-teacher', 'cognitive_mode', 'meaning_discrimination');

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
  'clap-swap-reading',
  'Clap-Swap Reading (Reading Relay)',
  '4-16',
  4,
  16,
  'Whole-class reading with rapid turn-taking',
  'Q&A/Dialogue',
  'medium',
  'sentence (reading aloud)',
  'Helpful for improving reading fluency, tracking, and sentence accuracy.',
  'Medium energy pacing tool that keeps students attentive during reading practice.',
  'medium',
  'low',
  'teacher-only',
  'low',
  'none (optional light team points)',
  'Keeping everyone engaged during dialogue/story reading while distributing turns and maintaining pacing',
  'Clap-Swap Reading (Reading Relay) is a medium-energy whole-class reading activity designed to improve fluency, tracking, and sentence accuracy. Students read aloud in rapid succession, switching readers instantly when the teacher gives a signal. The activity keeps all students actively tracking the text to ensure smooth transitions and sustained attention.'
);

insert into game_levels (game_id, level)
values ('clap-swap-reading', 'ET1');

insert into game_levels (game_id, level)
values ('clap-swap-reading', 'ET2');

insert into game_levels (game_id, level)
values ('clap-swap-reading', 'CL');

insert into game_levels (game_id, level)
values ('clap-swap-reading', 'PowerUp');

insert into game_materials (game_id, material)
values ('clap-swap-reading', 'Text or dialogue (book / worksheet / board / TV)');

insert into game_steps (game_id, step_order, step_text)
values ('clap-swap-reading', 1, 'All students follow along in the text while one student reads aloud.');

insert into game_steps (game_id, step_order, step_text)
values ('clap-swap-reading', 2, 'Teacher gives a predefined signal (such as a clap) to switch readers.');

insert into game_steps (game_id, step_order, step_text)
values ('clap-swap-reading', 3, 'The next student immediately continues reading from the exact stopping point without restarting the sentence.');

insert into game_steps (game_id, step_order, step_text)
values ('clap-swap-reading', 4, 'Switches happen frequently to ensure all students stay focused and track the text carefully.');

insert into game_steps (game_id, step_order, step_text)
values ('clap-swap-reading', 5, 'Teacher controls pacing and monitors pronunciation, accuracy, and tracking throughout the activity.');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'pattern', 'reading');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'pattern', 'tracking');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'pattern', 'fluency');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'pattern', 'relay');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'cognitive_mode', 'text_tracking');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'cognitive_mode', 'decoding');

insert into game_tags (game_id, tag_type, tag_value)
values ('clap-swap-reading', 'cognitive_mode', 'sustained_attention');

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
  'hidden-word-or-choice',
  'Hidden Word Choice',
  '6-16',
  6,
  16,
  'Whole-class turn-based',
  'Q&A/Dialogue',
  'medium',
  'lexical-phrase',
  'Strong for practicing OR-questions and producing one clear, structured answer.',
  'Medium energy guessing format that maintains attention and engagement.',
  'high',
  'low',
  'teacher-mediated',
  'optional',
  'light',
  'Practicing OR-questions that require selecting and producing one explicit option',
  'Hidden Word Choice is a medium-energy whole-class guessing game designed to practice OR-questions and structured answer production. Students ask a question with two options, and the answering student must infer and produce one clear option using the full answer frame. The activity reinforces forced-choice language patterns and careful listening.'
);

insert into game_levels (game_id, level)
values ('hidden-word-or-choice', 'CK');

insert into game_levels (game_id, level)
values ('hidden-word-or-choice', 'CL');

insert into game_levels (game_id, level)
values ('hidden-word-or-choice', 'ET');

insert into game_materials (game_id, material)
values ('hidden-word-or-choice', 'whiteboard');

insert into game_materials (game_id, material)
values ('hidden-word-or-choice', 'marker');

insert into game_steps (game_id, step_order, step_text)
values ('hidden-word-or-choice', 1, 'One student asks an OR-question using the target frame (e.g., ''Is it a tiger or a bear?'').');

insert into game_steps (game_id, step_order, step_text)
values ('hidden-word-or-choice', 2, 'The teacher secretly selects one of the two options and writes it on a mini whiteboard while keeping the word hidden from direct view.');

insert into game_steps (game_id, step_order, step_text)
values ('hidden-word-or-choice', 3, 'Students carefully watch the teacher’s hand movement and writing motion to infer which word is being written (based on length, letter shapes, and stroke patterns).');

insert into game_steps (game_id, step_order, step_text)
values ('hidden-word-or-choice', 4, 'The answering student responds using the full answer frame (e.g., ''It''s a bear'').');

insert into game_steps (game_id, step_order, step_text)
values ('hidden-word-or-choice', 5, 'Rotate roles so multiple students practice asking and answering while the teacher controls visibility, pacing, and clarity of writing movement.');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'pattern', 'OR_question');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'pattern', 'forced_choice');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'pattern', 'lexical_selection');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'output_type', 'phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'cognitive_mode', 'inference');

insert into game_tags (game_id, tag_type, tag_value)
values ('hidden-word-or-choice', 'cognitive_mode', 'forced_choice');

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
  'hoop-race',
  'Hoop Race!',
  '4-10 (played in pairs)',
  4,
  10,
  'Head-to-head physical race',
  'Vocab',
  'high',
  'single-word',
  'Strong for rapid repetition of a single target vocabulary item with clear pronunciation under mild pressure.',
  'High-energy race format that combines repetition with physical movement, increasing engagement and urgency.',
  'very high',
  'medium',
  'teacher-observed during action',
  'required',
  'direct head-to-head',
  'Fast, repetitive drilling of single vocabulary items with physical engagement',
  'Hoop Race! is a high-energy head-to-head physical drilling game designed for rapid repetition of a single target vocabulary word. Two students race while repeatedly saying the target word, combining movement with pronunciation practice under light competitive pressure.'
);

insert into game_levels (game_id, level)
values ('hoop-race', 'CP');

insert into game_levels (game_id, level)
values ('hoop-race', 'CK');

insert into game_levels (game_id, level)
values ('hoop-race', 'ET');

insert into game_levels (game_id, level)
values ('hoop-race', 'CL');

insert into game_materials (game_id, material)
values ('hoop-race', '4 small hoops per player');

insert into game_materials (game_id, material)
values ('hoop-race', '1 main hoop');

insert into game_materials (game_id, material)
values ('hoop-race', 'target flashcard or object');

insert into game_materials (game_id, material)
values ('hoop-race', 'chair');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race', 1, 'Two students stand ready with four small hoops each.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race', 2, 'On the teacher’s signal, both students race to place their hoops one at a time onto the teacher’s arm.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race', 3, 'Each time a hoop is placed, the student must clearly say the target vocabulary word.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race', 4, 'After placing all hoops, the student retrieves the final flashcard or object and says the word one more time.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race', 5, 'Teacher monitors pronunciation and ensures clear, accurate repetition before awarding the win.');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race', 'pattern', 'single_word_vocab');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race', 'pattern', 'lexical_repetition');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race', 'cognitive_mode', 'recall');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race', 'cognitive_mode', 'reaction');

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
  'hoop-race-2',
  'Hoop Race! 2',
  '4-12 (played in 2–3 student sets)',
  4,
  12,
  'Head-to-head seated physical race',
  'Vocab',
  'high',
  'single-word',
  'Strong for rapid repetition and recall of target vocabulary under physical engagement.',
  'High-energy race with simultaneous competitors; builds excitement and urgency.',
  'very high',
  'medium',
  'teacher-observed',
  'required',
  'direct head-to-head',
  'Quick repetition and recall of vocabulary items; can scale with sentence-final output.',
  'Hoop Race! 2 is a high-energy seated head-to-head race designed for rapid repetition and recall of a target vocabulary word. Students compete simultaneously while removing hoops and saying the word each time, combining physical engagement with fast pronunciation practice.'
);

insert into game_levels (game_id, level)
values ('hoop-race-2', 'CP');

insert into game_levels (game_id, level)
values ('hoop-race-2', 'CK');

insert into game_levels (game_id, level)
values ('hoop-race-2', 'ET');

insert into game_levels (game_id, level)
values ('hoop-race-2', 'CL');

insert into game_materials (game_id, material)
values ('hoop-race-2', '3 small hoops per student');

insert into game_materials (game_id, material)
values ('hoop-race-2', 'main hoop');

insert into game_materials (game_id, material)
values ('hoop-race-2', 'flashcard/object');

insert into game_materials (game_id, material)
values ('hoop-race-2', 'chairs');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 1, 'Students sit with three small hoops each placed on the main hoop or setup area.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 2, 'On the teacher’s signal, competitors remove one hoop at a time.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 3, 'Each time a hoop is removed, the student must clearly say the target vocabulary word.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 4, 'After removing all hoops, the student retrieves the final flashcard or object and says the word again.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 5, 'The first student to complete all repetitions accurately wins the round.');

insert into game_steps (game_id, step_order, step_text)
values ('hoop-race-2', 6, 'Teacher monitors pronunciation and ensures accuracy before confirming the winner.');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race-2', 'pattern', 'single_word_vocab');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race-2', 'pattern', 'lexical_repetition');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race-2', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race-2', 'cognitive_mode', 'recall');

insert into game_tags (game_id, tag_type, tag_value)
values ('hoop-race-2', 'cognitive_mode', 'reaction');

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
  'quick-switch',
  'Quick Switch!',
  '4-12',
  4,
  12,
  'Small-group reaction game',
  'Listening Comprehension',
  'high',
  'single-word',
  'Practices listening comprehension and immediate recognition of target vocabulary.',
  'Fast-paced movement around the table keeps attention and reinforces quick reaction.',
  'high',
  'medium',
  'teacher-observed',
  'required',
  'group reaction',
  'Listening and quick recognition of single vocabulary items.',
  'Quick Switch! is a high-energy small-group reaction game designed to reinforce listening comprehension and rapid recognition of target vocabulary. Students respond physically to Yes/No questions connected to a flashcard, reacting immediately based on their understanding.'
);

insert into game_levels (game_id, level)
values ('quick-switch', 'CP');

insert into game_levels (game_id, level)
values ('quick-switch', 'CK');

insert into game_levels (game_id, level)
values ('quick-switch', 'ET');

insert into game_levels (game_id, level)
values ('quick-switch', 'CL');

insert into game_materials (game_id, material)
values ('quick-switch', 'table');

insert into game_materials (game_id, material)
values ('quick-switch', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('quick-switch', 1, 'Place a flashcard where all students can clearly see it.');

insert into game_steps (game_id, step_order, step_text)
values ('quick-switch', 2, 'Teacher asks a Yes/No question related to the flashcard.');

insert into game_steps (game_id, step_order, step_text)
values ('quick-switch', 3, 'If the correct answer is YES, students freeze in place.');

insert into game_steps (game_id, step_order, step_text)
values ('quick-switch', 4, 'If the correct answer is NO, students quickly move around the table and return to their spot.');

insert into game_steps (game_id, step_order, step_text)
values ('quick-switch', 5, 'Teacher monitors for correct reactions, safety, and clear understanding before continuing with the next question.');

insert into game_tags (game_id, tag_type, tag_value)
values ('quick-switch', 'pattern', 'single_word_vocab');

insert into game_tags (game_id, tag_type, tag_value)
values ('quick-switch', 'pattern', 'yes_no_decision');

insert into game_tags (game_id, tag_type, tag_value)
values ('quick-switch', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('quick-switch', 'cognitive_mode', 'reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('quick-switch', 'cognitive_mode', 'recognition');

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
  'flashcard-cup-grab',
  'Flashcard Cup Grab',
  '4-16',
  4,
  16,
  'Head-to-head reaction duel',
  'Vocab',
  'high',
  'single-word',
  'Strengthens rapid vocabulary recognition and listening accuracy.',
  'Competitive, fast-paced grabbing duel keeps engagement high.',
  'high',
  'medium',
  'teacher-observed',
  'required',
  'direct head-to-head',
  'Speed and accuracy in recognizing spoken vocabulary items.',
  'Flashcard Cup Grab is a high-energy head-to-head reaction game designed to strengthen rapid vocabulary recognition and listening accuracy. Students race to cover the correct flashcard with a cup as quickly as possible after hearing the teacher call out a word.'
);

insert into game_levels (game_id, level)
values ('flashcard-cup-grab', 'CP');

insert into game_levels (game_id, level)
values ('flashcard-cup-grab', 'CK');

insert into game_levels (game_id, level)
values ('flashcard-cup-grab', 'ET');

insert into game_levels (game_id, level)
values ('flashcard-cup-grab', 'CL');

insert into game_materials (game_id, material)
values ('flashcard-cup-grab', 'Flashcards');

insert into game_materials (game_id, material)
values ('flashcard-cup-grab', 'cups or markers');

insert into game_steps (game_id, step_order, step_text)
values ('flashcard-cup-grab', 1, 'Students stand back-to-back facing the flashcards.');

insert into game_steps (game_id, step_order, step_text)
values ('flashcard-cup-grab', 2, 'Teacher calls out a target vocabulary word.');

insert into game_steps (game_id, step_order, step_text)
values ('flashcard-cup-grab', 3, 'Students race to cover the correct flashcard with their cup.');

insert into game_steps (game_id, step_order, step_text)
values ('flashcard-cup-grab', 4, 'First student to cover the correct flashcard earns a point.');

insert into game_steps (game_id, step_order, step_text)
values ('flashcard-cup-grab', 5, 'Repeat for multiple rounds, keeping score if desired.');

insert into game_tags (game_id, tag_type, tag_value)
values ('flashcard-cup-grab', 'pattern', 'single_word_vocab');

insert into game_tags (game_id, tag_type, tag_value)
values ('flashcard-cup-grab', 'pattern', 'auditory_recognition');

insert into game_tags (game_id, tag_type, tag_value)
values ('flashcard-cup-grab', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('flashcard-cup-grab', 'cognitive_mode', 'reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('flashcard-cup-grab', 'cognitive_mode', 'recall');

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
  'blindfold-bonk',
  'Blindfold Bonk',
  '3-4',
  4,
  16,
  'Blindfolded listening game',
  'Vocab',
  'high',
  'single-word',
  'Reinforces clear pronunciation and listening discrimination for vocabulary items.',
  'Movement and guessing under high-energy conditions keeps students engaged.',
  'medium',
  'medium-high',
  'teacher-guided',
  'required',
  'direct stealth/reaction',
  'Listening-based navigation and vocabulary recall under fun, high-energy conditions.',
  'Blindfold Bonk is a high-energy blindfolded listening game that reinforces vocabulary pronunciation, listening discrimination, and spatial awareness. Students repeat their word while moving silently and the blindfolded teacher or designated student tries to ''bonk'' them based on hearing the word.'
);

insert into game_levels (game_id, level)
values ('blindfold-bonk', 'CP');

insert into game_levels (game_id, level)
values ('blindfold-bonk', 'CK');

insert into game_levels (game_id, level)
values ('blindfold-bonk', 'ET');

insert into game_levels (game_id, level)
values ('blindfold-bonk', 'CL');

insert into game_materials (game_id, material)
values ('blindfold-bonk', 'Flashcards');

insert into game_materials (game_id, material)
values ('blindfold-bonk', 'soft ''bonker'' object');

insert into game_materials (game_id, material)
values ('blindfold-bonk', 'blindfold or sleep mask');

insert into game_steps (game_id, step_order, step_text)
values ('blindfold-bonk', 1, 'Each student holds a target vocabulary word.');

insert into game_steps (game_id, step_order, step_text)
values ('blindfold-bonk', 2, 'One student (or teacher) is blindfolded and attempts to bonk other students.');

insert into game_steps (game_id, step_order, step_text)
values ('blindfold-bonk', 3, 'Students move silently around the space while repeating their word clearly.');

insert into game_steps (game_id, step_order, step_text)
values ('blindfold-bonk', 4, 'The last student not bonked wins the round.');

insert into game_steps (game_id, step_order, step_text)
values ('blindfold-bonk', 5, 'Ensure safe movement and avoid running; rounds can be repeated with different words or sentence structures.');

insert into game_tags (game_id, tag_type, tag_value)
values ('blindfold-bonk', 'pattern', 'single_word_vocab');

insert into game_tags (game_id, tag_type, tag_value)
values ('blindfold-bonk', 'pattern', 'auditory_guided');

insert into game_tags (game_id, tag_type, tag_value)
values ('blindfold-bonk', 'output_type', 'word');

insert into game_tags (game_id, tag_type, tag_value)
values ('blindfold-bonk', 'cognitive_mode', 'listening');

insert into game_tags (game_id, tag_type, tag_value)
values ('blindfold-bonk', 'cognitive_mode', 'spatial_awareness');

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
  'dialogue-duel',
  'Dialogue Duel',
  '4-12',
  4,
  12,
  'Head-to-head Q&A duel',
  'Q&A/Dialogue',
  'high',
  'short QA/dialogue',
  'Practices structured dialogue, question formation, and quick response under mild competitive pressure.',
  'Physical dueling adds excitement while students complete language task first.',
  'medium',
  'medium',
  'teacher-observed',
  'optional',
  'direct head-to-head',
  'Short structured dialogue practice with reaction-based reinforcement.',
  'Dialogue Duel is a competitive head-to-head Q&A game that practices structured dialogue, question formation, and quick response under mild competitive pressure. Students answer correctly before engaging in a brief reaction duel with a soft object to reinforce attention and engagement.'
);

insert into game_levels (game_id, level)
values ('dialogue-duel', 'CP');

insert into game_levels (game_id, level)
values ('dialogue-duel', 'CK');

insert into game_levels (game_id, level)
values ('dialogue-duel', 'ET');

insert into game_levels (game_id, level)
values ('dialogue-duel', 'CL');

insert into game_materials (game_id, material)
values ('dialogue-duel', 'Soft ''bonker'' object');

insert into game_materials (game_id, material)
values ('dialogue-duel', 'shield');

insert into game_materials (game_id, material)
values ('dialogue-duel', 'table');

insert into game_steps (game_id, step_order, step_text)
values ('dialogue-duel', 1, 'Student A asks the target question to Student B.');

insert into game_steps (game_id, step_order, step_text)
values ('dialogue-duel', 2, 'Student B answers using the correct target structure.');

insert into game_steps (game_id, step_order, step_text)
values ('dialogue-duel', 3, 'Immediately play Rock-Paper-Scissors to determine who grabs the bonker/shield.');

insert into game_steps (game_id, step_order, step_text)
values ('dialogue-duel', 4, 'Award points based on successful bonk or successful defense.');

insert into game_steps (game_id, step_order, step_text)
values ('dialogue-duel', 5, 'Switch roles for the next round and repeat.');

insert into game_tags (game_id, tag_type, tag_value)
values ('dialogue-duel', 'pattern', 'QA_structure');

insert into game_tags (game_id, tag_type, tag_value)
values ('dialogue-duel', 'pattern', 'dialogue_practice');

insert into game_tags (game_id, tag_type, tag_value)
values ('dialogue-duel', 'output_type', 'short_sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('dialogue-duel', 'cognitive_mode', 'recall');

insert into game_tags (game_id, tag_type, tag_value)
values ('dialogue-duel', 'cognitive_mode', 'reaction');

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
  'vocabulary-balance-challenge',
  'Vocabulary Balance Challenge',
  '4-12',
  4,
  12,
  'Teams of 2, cooperative, whole-class active',
  'Vocab',
  'medium',
  'single-word recall',
  'Great for practicing vocabulary recognition and recall while promoting communication and teamwork.',
  'Medium energy; requires coordination and movement without high-intensity bursts.',
  'medium',
  'low',
  'teacher-only',
  'medium',
  'light (team-based)',
  'Cooperative vocabulary drills with active engagement and teamwork.',
  'Vocabulary Balance Challenge is a physically engaging team game that combines vocabulary recall with a steady-handed balancing act. Teams of two students must keep a soft object balanced between their shoulders while moving to retrieve target vocabulary cards called out by the teacher. This game emphasizes teamwork, communication, and careful coordination under light physical pressure.'
);

insert into game_levels (game_id, level)
values ('vocabulary-balance-challenge', 'ET1');

insert into game_levels (game_id, level)
values ('vocabulary-balance-challenge', 'CL');

insert into game_levels (game_id, level)
values ('vocabulary-balance-challenge', 'CK');

insert into game_materials (game_id, material)
values ('vocabulary-balance-challenge', 'soft objects for balancing');

insert into game_materials (game_id, material)
values ('vocabulary-balance-challenge', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 1, 'Divide students into teams of 2.');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 2, 'Place a soft object between each pair''s shoulders.');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 3, 'Scatter vocabulary flashcards in a central area.');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 4, 'Call out a target word; teams move to retrieve the correct card without dropping the object.');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 5, 'The first team to successfully retrieve and show the card scores a point.');

insert into game_steps (game_id, step_order, step_text)
values ('vocabulary-balance-challenge', 6, 'Repeat for several rounds, rotating vocabulary.');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'pattern', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'cognitive_mode', 'listening_reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('vocabulary-balance-challenge', 'cognitive_mode', 'coordination');

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
  'word-relay',
  'Word Relay',
  '6-20',
  6,
  20,
  'Single-file line or circle, team relay',
  'Vocab',
  'high',
  'single-word or short-phrase recall',
  'Builds speaking fluency and vocabulary recall under time pressure.',
  'High-energy relay; keeps students engaged and moving.',
  'high',
  'medium',
  'teacher-only',
  'high',
  'moderate (team race)',
  'Rapid vocabulary review and team coordination in a fast-paced setting.',
  'Word Relay is a fast-paced team game where students pass a flashcard along a line or circle, saying the target word aloud before passing. The last student runs to the front to continue the relay. The game emphasizes fluency, accurate pronunciation, listening, and peer-supported pacing.'
);

insert into game_levels (game_id, level)
values ('word-relay', 'CP');

insert into game_levels (game_id, level)
values ('word-relay', 'CK');

insert into game_levels (game_id, level)
values ('word-relay', 'ET1');

insert into game_levels (game_id, level)
values ('word-relay', 'CL');

insert into game_materials (game_id, material)
values ('word-relay', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('word-relay', 1, 'Arrange students in a line or circle.');

insert into game_steps (game_id, step_order, step_text)
values ('word-relay', 2, 'Introduce the first flashcard and say the target word clearly.');

insert into game_steps (game_id, step_order, step_text)
values ('word-relay', 3, 'The first student says the word and passes the card to the next student.');

insert into game_steps (game_id, step_order, step_text)
values ('word-relay', 4, 'Continue passing and vocalizing until the last student reaches the front.');

insert into game_steps (game_id, step_order, step_text)
values ('word-relay', 5, 'Repeat with new words or phrases, maintaining fast pace.');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'pattern', 'sequential_passing');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'output_type', 'short_phrase');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'cognitive_mode', 'fluency');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-relay', 'cognitive_mode', 'listening_reaction');

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
  'secret-handoff',
  'Secret Handoff',
  '6-20',
  6,
  20,
  'Whole-class active, chaser and deliverer',
  'Vocab',
  'high',
  'single-word recognition',
  'Practices vocabulary recognition and listening under suspenseful, interactive conditions.',
  'High-energy; students move and react quickly in response to tactile cues.',
  'high',
  'medium',
  'teacher-only',
  'high',
  'moderate (duel-style)',
  'Quick-response listening practice with a fun chase mechanic.',
  'Secret Handoff is an active vocabulary game where a ''Deliverer'' stealthily hands a flashcard to a ''Chaser'' while the class chants the target word. The Chaser must react quickly upon receiving the card, turning drill practice into an exciting chase game that emphasizes listening accuracy, reaction speed, and motor skills.'
);

insert into game_levels (game_id, level)
values ('secret-handoff', 'CP');

insert into game_levels (game_id, level)
values ('secret-handoff', 'CK');

insert into game_levels (game_id, level)
values ('secret-handoff', 'ET1');

insert into game_levels (game_id, level)
values ('secret-handoff', 'CL');

insert into game_materials (game_id, material)
values ('secret-handoff', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('secret-handoff', 1, 'Choose one student as Chaser and one as Deliverer.');

insert into game_steps (game_id, step_order, step_text)
values ('secret-handoff', 2, 'The class chants the target word while the Deliverer approaches the Chaser.');

insert into game_steps (game_id, step_order, step_text)
values ('secret-handoff', 3, 'Deliverer places the card in Chaser''s hands without being noticed.');

insert into game_steps (game_id, step_order, step_text)
values ('secret-handoff', 4, 'Chaser immediately reacts to tag the Deliverer or let them reach a safe ''home'' chair.');

insert into game_steps (game_id, step_order, step_text)
values ('secret-handoff', 5, 'Rotate roles and repeat with new vocabulary.');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'pattern', 'reactive_chase');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'cognitive_mode', 'listening_reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('secret-handoff', 'cognitive_mode', 'motor_skills');

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
  'word-sprint-claim-and-conquer',
  'Word Sprint / Claim and Conquer',
  '6-20',
  6,
  20,
  'Duel-style, dual chair race, whole-class audience',
  'Vocab',
  'high',
  'single-word recall',
  'Reinforces vocabulary recognition, recall, and listening comprehension.',
  'High-energy competitive game with running, sprinting, and fast decision-making.',
  'high',
  'medium',
  'teacher-only',
  'high',
  'high (head-to-head duels)',
  'Vocabulary practice with speed, accuracy, and safe competitive engagement.',
  'Word Sprint / Claim and Conquer is a duel-style vocabulary game where students race to claim flashcards called out by the teacher and finish by sprinting to their assigned chairs. It emphasizes listening comprehension, speed, and strategic positioning while keeping physical interactions safe.'
);

insert into game_levels (game_id, level)
values ('word-sprint-claim-and-conquer', 'CP');

insert into game_levels (game_id, level)
values ('word-sprint-claim-and-conquer', 'CK');

insert into game_levels (game_id, level)
values ('word-sprint-claim-and-conquer', 'ET1');

insert into game_levels (game_id, level)
values ('word-sprint-claim-and-conquer', 'CL');

insert into game_materials (game_id, material)
values ('word-sprint-claim-and-conquer', 'flashcards');

insert into game_materials (game_id, material)
values ('word-sprint-claim-and-conquer', '2 chairs per duel');

insert into game_steps (game_id, step_order, step_text)
values ('word-sprint-claim-and-conquer', 1, 'Scatter 8-12 flashcards in an open area.');

insert into game_steps (game_id, step_order, step_text)
values ('word-sprint-claim-and-conquer', 2, 'Assign two students as Duelists with designated chairs.');

insert into game_steps (game_id, step_order, step_text)
values ('word-sprint-claim-and-conquer', 3, 'Teacher calls a word; Duelists race to step on it and say it aloud.');

insert into game_steps (game_id, step_order, step_text)
values ('word-sprint-claim-and-conquer', 4, 'After several rounds, Duelists sprint to their assigned chairs.');

insert into game_steps (game_id, step_order, step_text)
values ('word-sprint-claim-and-conquer', 5, 'The first to sit wins; rotate challengers and repeat.');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'pattern', 'duel');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'pattern', 'reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'cognitive_mode', 'listening_reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('word-sprint-claim-and-conquer', 'cognitive_mode', 'speed_decision');

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
  'hula-hoop-pass-vocabulary-relay',
  'Hula Hoop Pass / Vocabulary Relay',
  '6-20',
  6,
  20,
  'Single-file line, cooperative, hula hoop passed along line',
  'Vocab',
  'medium',
  'single-word or sentence',
  'Promotes clear articulation, vocabulary recall, and sequence awareness.',
  'Medium energy; involves movement coordinated with verbal output.',
  'medium',
  'low',
  'teacher-only',
  'medium',
  'low (cooperative)',
  'Cooperative vocabulary drills with emphasis on timing and verbal coordination.',
  'Hula Hoop Pass / Vocabulary Relay is a cooperative game where students pass a hula hoop along a line while saying the target word or sentence as it passes over them. It combines teamwork, accurate articulation, and sequencing practice.'
);

insert into game_levels (game_id, level)
values ('hula-hoop-pass-vocabulary-relay', 'CP');

insert into game_levels (game_id, level)
values ('hula-hoop-pass-vocabulary-relay', 'CK');

insert into game_levels (game_id, level)
values ('hula-hoop-pass-vocabulary-relay', 'ET1');

insert into game_materials (game_id, material)
values ('hula-hoop-pass-vocabulary-relay', 'hula hoop');

insert into game_steps (game_id, step_order, step_text)
values ('hula-hoop-pass-vocabulary-relay', 1, 'Form students in a single-file line.');

insert into game_steps (game_id, step_order, step_text)
values ('hula-hoop-pass-vocabulary-relay', 2, 'Assign the target word or sentence for the round.');

insert into game_steps (game_id, step_order, step_text)
values ('hula-hoop-pass-vocabulary-relay', 3, 'First student passes hoop over themselves while saying the word, then passes to the next.');

insert into game_steps (game_id, step_order, step_text)
values ('hula-hoop-pass-vocabulary-relay', 4, 'Continue until hoop reaches the last student without breaking the chain.');

insert into game_steps (game_id, step_order, step_text)
values ('hula-hoop-pass-vocabulary-relay', 5, 'Celebrate completion or repeat with new vocabulary.');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'pattern', 'sequence');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'output_type', 'sentence');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'cognitive_mode', 'coordination');

insert into game_tags (game_id, tag_type, tag_value)
values ('hula-hoop-pass-vocabulary-relay', 'cognitive_mode', 'fluency');

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
  'hot-potato-bomb-vocabulary-bomb',
  'Hot Potato Bomb / Vocabulary Bomb',
  '6-20',
  6,
  20,
  'Circle passing, elimination-based',
  'Vocab',
  'high',
  'single-word recall',
  'Practices speaking, vocabulary recall, and listening under pressure.',
  'High-energy; students move and react quickly to the passing ''bomb''.',
  'high',
  'medium',
  'teacher-only',
  'medium',
  'moderate (elimination)',
  'Vocabulary recall drills with suspense and rapid reaction practice.',
  'Hot Potato Bomb / Vocabulary Bomb is an elimination game where students pass a soft ball while saying target vocabulary. The teacher sets a hidden timer, and the student holding the ball when it goes off is ''out''. The game continues until one student remains.'
);

insert into game_levels (game_id, level)
values ('hot-potato-bomb-vocabulary-bomb', 'CP');

insert into game_levels (game_id, level)
values ('hot-potato-bomb-vocabulary-bomb', 'CK');

insert into game_levels (game_id, level)
values ('hot-potato-bomb-vocabulary-bomb', 'ET1');

insert into game_levels (game_id, level)
values ('hot-potato-bomb-vocabulary-bomb', 'CL');

insert into game_materials (game_id, material)
values ('hot-potato-bomb-vocabulary-bomb', 'soft ball');

insert into game_materials (game_id, material)
values ('hot-potato-bomb-vocabulary-bomb', 'timer');

insert into game_materials (game_id, material)
values ('hot-potato-bomb-vocabulary-bomb', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('hot-potato-bomb-vocabulary-bomb', 1, 'Students sit or stand in a circle.');

insert into game_steps (game_id, step_order, step_text)
values ('hot-potato-bomb-vocabulary-bomb', 2, 'Teacher chooses vocabulary set and hidden timer.');

insert into game_steps (game_id, step_order, step_text)
values ('hot-potato-bomb-vocabulary-bomb', 3, 'Start passing the ball quickly while saying the target word.');

insert into game_steps (game_id, step_order, step_text)
values ('hot-potato-bomb-vocabulary-bomb', 4, 'When timer goes off, student holding ball is out.');

insert into game_steps (game_id, step_order, step_text)
values ('hot-potato-bomb-vocabulary-bomb', 5, 'Continue rounds until a winner is determined.');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'pattern', 'elimination');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'cognitive_mode', 'fluency');

insert into game_tags (game_id, tag_type, tag_value)
values ('hot-potato-bomb-vocabulary-bomb', 'cognitive_mode', 'listening_reaction');

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
  'center-jump-challenge',
  'Center Jump Challenge',
  '6-16',
  6,
  16,
  'Pairs, head-to-head across central flashcards',
  'Vocab',
  'high',
  'single-word recognition',
  'Practices listening and quick word recognition.',
  'High-energy reaction game with competitive jumping.',
  'medium',
  'medium',
  'teacher-only',
  'high',
  'high (duel)',
  'Fast-paced vocabulary review in pairs with emphasis on listening accuracy.',
  'Center Jump Challenge is a head-to-head vocabulary game where two students jump into hoops on either side of a target flashcard when the teacher calls it. The first to jump correctly scores points, emphasizing listening accuracy, reaction speed, and motor coordination.'
);

insert into game_levels (game_id, level)
values ('center-jump-challenge', 'CP');

insert into game_levels (game_id, level)
values ('center-jump-challenge', 'CK');

insert into game_levels (game_id, level)
values ('center-jump-challenge', 'Beginner');

insert into game_materials (game_id, material)
values ('center-jump-challenge', 'flashcards');

insert into game_materials (game_id, material)
values ('center-jump-challenge', 'hula hoops');

insert into game_steps (game_id, step_order, step_text)
values ('center-jump-challenge', 1, 'Place flashcards in the center with hoops on either side.');

insert into game_steps (game_id, step_order, step_text)
values ('center-jump-challenge', 2, 'Select two students to compete on a word.');

insert into game_steps (game_id, step_order, step_text)
values ('center-jump-challenge', 3, 'Teacher calls a word; students jump into corresponding hoop.');

insert into game_steps (game_id, step_order, step_text)
values ('center-jump-challenge', 4, 'Score points for correct, fast jumps. Rotate pairs for next round.');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'pattern', 'reactive_duel');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'cognitive_mode', 'listening_reaction');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('center-jump-challenge', 'cognitive_mode', 'motor_skills');

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
  'chair-and-cup-challenge',
  'Chair and Cup Challenge',
  '6-20',
  6,
  20,
  'Teams, multi-step table/room layout',
  'Vocab',
  'medium',
  'single-word recall',
  'Builds vocabulary recall, pronunciation, and sequencing skills.',
  'Medium-energy, hands-on race keeps students engaged.',
  'medium',
  'low',
  'teacher-only',
  'medium',
  'moderate (team race)',
  'Word-level vocabulary drills combined with motor coordination and friendly competition.',
  'Chair & Cup Challenge is a hands-on vocabulary game where students place cups on upturned chairs while saying target words, then retrieve matching flashcards. It reinforces vocabulary, pronunciation, and sequencing in a cooperative or competitive setting.'
);

insert into game_levels (game_id, level)
values ('chair-and-cup-challenge', 'CP');

insert into game_levels (game_id, level)
values ('chair-and-cup-challenge', 'CK');

insert into game_levels (game_id, level)
values ('chair-and-cup-challenge', 'ET');

insert into game_materials (game_id, material)
values ('chair-and-cup-challenge', 'upturned chairs');

insert into game_materials (game_id, material)
values ('chair-and-cup-challenge', 'cups');

insert into game_materials (game_id, material)
values ('chair-and-cup-challenge', 'flashcards');

insert into game_steps (game_id, step_order, step_text)
values ('chair-and-cup-challenge', 1, 'Set up two upturned chairs with cups and flashcards.');

insert into game_steps (game_id, step_order, step_text)
values ('chair-and-cup-challenge', 2, 'Split class into teams.');

insert into game_steps (game_id, step_order, step_text)
values ('chair-and-cup-challenge', 3, 'Students race to place cups on chair legs while saying target word, then retrieve matching card.');

insert into game_steps (game_id, step_order, step_text)
values ('chair-and-cup-challenge', 4, 'Repeat rounds with different words or single-word drill mode.');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'pattern', 'multi-step_sequence');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'cognitive_mode', 'coordination');

insert into game_tags (game_id, tag_type, tag_value)
values ('chair-and-cup-challenge', 'cognitive_mode', 'fluency');

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
  'phonics-racer-vocabulary-duel',
  'Phonics Racer! / Vocabulary Duel',
  '6-14',
  6,
  14,
  'Team duel, board track race',
  'Phonics',
  'medium',
  'single-word or phonics sound',
  'Builds phonics recall, pronunciation, and vocabulary under competitive conditions.',
  'Medium-high energy; students perform repeated Rock, Paper, Scissors style duels with language output.',
  'high',
  'low',
  'teacher-only',
  'medium',
  'high (team duel)',
  'Advanced phonics and vocabulary practice with team engagement and race mechanics.',
  'Phonics Racer / Vocabulary Duel is a competitive team game where students perform Rock, Paper, Scissors style duels while saying target words or phonics sounds. The winning team moves their token forward on the race track, reinforcing pronunciation, vocabulary recall, and engagement.'
);

insert into game_levels (game_id, level)
values ('phonics-racer-vocabulary-duel', 'CK');

insert into game_levels (game_id, level)
values ('phonics-racer-vocabulary-duel', 'ET');

insert into game_levels (game_id, level)
values ('phonics-racer-vocabulary-duel', 'CL');

insert into game_levels (game_id, level)
values ('phonics-racer-vocabulary-duel', 'Power UP');

insert into game_levels (game_id, level)
values ('phonics-racer-vocabulary-duel', 'TJ NCE');

insert into game_materials (game_id, material)
values ('phonics-racer-vocabulary-duel', 'board or whiteboard');

insert into game_materials (game_id, material)
values ('phonics-racer-vocabulary-duel', 'team tokens');

insert into game_materials (game_id, material)
values ('phonics-racer-vocabulary-duel', 'markers');

insert into game_materials (game_id, material)
values ('phonics-racer-vocabulary-duel', 'list of target words');

insert into game_steps (game_id, step_order, step_text)
values ('phonics-racer-vocabulary-duel', 1, 'Set up a race track on a board with 10-15 spaces.');

insert into game_steps (game_id, step_order, step_text)
values ('phonics-racer-vocabulary-duel', 2, 'Divide class into two teams, place tokens at Start.');

insert into game_steps (game_id, step_order, step_text)
values ('phonics-racer-vocabulary-duel', 3, 'Teacher points to a word/sound; duelists shout it instead of rock/paper/scissors.');

insert into game_steps (game_id, step_order, step_text)
values ('phonics-racer-vocabulary-duel', 4, 'Winner moves token forward, loser moves back. Continue rounds until a token reaches Finish.');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'pattern', 'target_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'pattern', 'duel');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'pattern', 'phonics');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'output_type', 'single_word');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'output_type', 'A');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'cognitive_mode', 'retrieval');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'cognitive_mode', 'fluency');

insert into game_tags (game_id, tag_type, tag_value)
values ('phonics-racer-vocabulary-duel', 'cognitive_mode', 'listening_reaction');

commit;