#encoding: utf-8

Feature: Saving goal to buy a house
Feature that allow user to plan the amount he need, and how much he need to save every month.

@insertAmount @onlyNumbers @maskNumbers @amountField
Scenario: Insert a amount on the money filed and check the mask
Given I am at the buy a house page
When I fill the money data with the value '50679899'
Then in the field I should have '506,798.99'

@insertWords @amountField
Scenario: Insert words on the amount field
Given I am at the buy a house page
When I fill the money data with the value 'Test'
Then The field should be empty

@pastMonth @dateField
Scenario: Check if the date field accept month from the past
Given I am at the buy a house page
Then The decrease arrow is not able to click

@changeMonth @dateField
Scenario: Change the month and go back to check if month change
Given I am at the buy a house page
When I click on the > icon
And I click on the < icon
Then stay in the actual month

@confirmButton 
Scenario: Use the saving goal and click on the confirm button
Given I am at the buy a house page
And I fill the money data with the value '50679899'
And I click on the > icon
When I click in the confirm button
Then in the field I should have '506,798.99'