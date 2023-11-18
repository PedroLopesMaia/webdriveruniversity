import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When(`I type a first name`, () => {
    cy.get('[name="first_name"]').type("Pedro");
})

When(`I type a last name`, () => {
    cy.get('[name="last_name"]').type("Lopes");
})

When(`I enter an email address`, () => {
    cy.get('[name="email"]').type("pedrolopes_maia@hotmail.com");
})

When(`I type a comment`, () => {
    cy.get('textarea[name="message"]').type("001101111001101 1111010101100 01 01 01 01 0101011010001.")
})

When(`I click on the submit button`, () => {
    cy.get('[type="submit"]').click();
})

Then(`I should be presented with a successful contact us submission message`, () => {
    cy.get('h1').should('have.text', 'Thank You for your Message!');
})

Then(`I should be presented with a unsuccessful contact us submission message`, () => {
    cy.get('body').contains('Error: Invalid email address');
})

When('I type a specific first name {string}', (firstName) => {
    cy.get('[name="first_name"]').type(firstName);
})

When('I type a specific last name {string}', (lastName) => {
    cy.get('[name="last_name"]').type(lastName);
})

When('I enter an specific email address {string}', (email) => {
    cy.get('[name="email"]').type(email);
})

When('I type a specific word {string} and number {int} within the comment input field', (word, number) => {
    cy.get('textarea[name="message"]').type(word + number)
})