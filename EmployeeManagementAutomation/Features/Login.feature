Feature: Login
Need to lgin in system to manage employees records

In order to Manage Employee Records
As a HR
I would like to access Orange HRM

A short summary of the feature

Scenario: ValidLogin
	Given I have browser with OrageHRM application
	When I enter username as 'Admin'
	And I enter password as 'admin123'
	And I click on login
	Then I should get access to dashboard page with 'Quick Launch'

Scenario Outline: InvalidLogin
	Given I have browser with OrageHRM application
	When I enter username as '<username>'
	And I enter password as '<password>'
	And I click on login
	Then I should not get access to dashboard with error message as '<actual error>'
Examples:
	| username | password | actual error        |
	| john     | John123  | Invalid Credentials |
	| cena     | cena123  | Invalid Credentials |
	| paul     | paul123  | Invalid Credentials |


