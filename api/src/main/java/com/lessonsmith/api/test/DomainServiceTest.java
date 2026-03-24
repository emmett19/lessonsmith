package com.lessonsmith.api.test;

import com.lessonsmith.api.service.DomainService;
import com.fasterxml.jackson.databind.ObjectMapper;

public class DomainServiceTest {

    public static void main(String[] args) throws Exception {
        ObjectMapper objectMapper = new ObjectMapper();
        DomainService domainService = new DomainService(objectMapper);
        domainService.init();  // force @PostConstruct manually

        System.out.println("=== DOMAIN JSON LOAD TEST ===");
        System.out.println("Loaded domain keywords: " + domainService.detectDomains("")); // just prints the keys

        // Quick checks
        String[] testInputs = {
                "I love pizza and mango",
                "Math and Science are fun"
        };

        for (String input : testInputs) {
            System.out.println("\nInput: " + input);
            System.out.println("Detected domains: " + domainService.detectDomains(input));
        }
    }
}
