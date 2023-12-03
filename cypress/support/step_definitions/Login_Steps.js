import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When('I type a username {string}', (username) => {
    cy.get('[id="text"]').type(username);
})

When('I type a password {string}', (password) => {
    cy.get('[id="password"]').type(password);
})

When('I click the login button', () => {
    cy.get('[id="login-button"]').click()
})

Then('I should be presented with alert message {string}', (message) => {
    cy.on('window:alert', () => {
        expect(message).to.equal(`validation succeeded`)
      })
})