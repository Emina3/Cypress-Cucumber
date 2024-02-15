const { Given,When,Then,Before} = require("@badeball/cypress-cucumber-preprocessor");

Given("Ben ToolShop sitesine giderim", () => {
  cy.wait(5000);
  cy.visit("/");
  cy.wait(2000);
});

When("Sign in linkine tiklarim", () => {
  cy.wait(2000);
  cy.get('[data-test="nav-sign-in"]').click();
});

When('Github Repo linkine tiklarim',()=>{
  cy.openInSameTab('[href="https://github.com/testsmith-io/practice-software-testing"]')
})
