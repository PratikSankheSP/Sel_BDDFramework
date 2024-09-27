Feature: Employee

In order to manage employee records
As an admin
I want to add,edit,delete the employee records


Scenario Outline: AddValidEmployeeRecord
	Given I have browser with OrageHRM application
	When I enter username as '<username>'
	And I enter password as '<password>'
	And I click on login
	And I click on PIM Menu
	And I click on Add Employee menu
	And I add new employee details
		| first name | middle name | last name |
		| <fname>    | <mname>     | <lname>   |
	And I click on save button
	And I should see profile name as '<fname>,<lname>'
	And I should be able to see employee full name in details
Examples:
	| <username> | <password> | <fname> | <mname> | <lname> |
	| Admin      | admin123   | john    | w       | wick    |
	| Admin      | admin123   | saul    | s       | cena    |
	| Admin      | admin123   | navi    | n       | long    |
