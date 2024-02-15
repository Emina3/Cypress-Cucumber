const { Before, After } = require("@badeball/cypress-cucumber-preprocessor");

Before(()=>{
    cy.log('Her testen once calisir.')
})

Before({tags:"@smoke"},()=>{
    cy.log('@smoke tagina ait  senaryolardan once calisir.')
})

After(()=>{
    cy.log('Her testen sonra calisir.')
})



