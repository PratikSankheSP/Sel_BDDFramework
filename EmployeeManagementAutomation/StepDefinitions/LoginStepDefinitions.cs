using System;
using TechTalk.SpecFlow;

namespace EmployeeManagementAutomation.StepDefinitions
{
    [Binding]
    public class LoginStepDefinitions
    {

        [Given(@"I have browser with OrageHRM application")]
        public void GivenIHaveBrowserWithOrageHRMApplication()
        {
            Console.WriteLine("Given");
        }

        [When(@"I enter username as '(.*)'")]
        public void WhenIEnterUsernameAs(string username)
        {
            Console.WriteLine("When"+username);
        }

        [When(@"I enter password as '(.*)'")]
        public void WhenIEnterPasswordAs(string password)
        {
           Console.WriteLine("When"+password);
        }

        [When(@"I click on login")]
        public void WhenIClickOnLogin()
        {
           
        }

        [Then(@"I should get access to dashboard page with '(.*)'")]
        public void ThenIShouldGetAccessToDashboardPageWith(string message)
        {
           Console.WriteLine("Then "+message);
        }

       
        [Then(@"I should not get access to dashboard with error message as '(.*)'")]
        public void ThenIShouldNotGetAccessToDashboardWithErrorMessageAs(string errormsg)
        {
            Console.WriteLine("Then " + errormsg);
        }
    }
}
