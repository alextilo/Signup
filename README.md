# Signup Test Automation

Python Signup Test Automation using the Robot Framework framework.

## Prerequisites

* Python 3.12.0 						``https://www.python.org/downloads``
* Git 2.42								``brew install git``
* Robot Framework 6.1.1 				``pip3 install robotframework``
* SeleniumLibrary 3.0.0 				``pip3 install robotframework-seleniumlibrary``
* DataDriver for Robot Framework 2.16.1 ``pip3 install robotframework-datadriver``
* Selenium 4.12.0 						``pip3 install selenium``

## UI Testing
### Action to do in Browser
### Test Steps:
1. Go to https://alex.academy/signup using Browser [Firefox or Chrome or MS Edge or Safari]
2. Fulfill the form on the Sign Up page
3. Submit the form
4. Validate Confirmation page

## Running Robot Framework DataDriver test
* Clone Repo 			``git clone https://github.com/alextilo/Signup.git``
* Go into directory 	``cd  Signup``
* Run Robot Framework:  ``robot --dryrun tests/signup_test.robot``
* Run Robot Framework:  ``robot -d results -i 'UI Validation' tests/signup_test.robot``
* Run Robot Framework:  ``robot -d results -i 'UI Validation' tests/signup_test.robot && open report.html && open log.html``

```
==============================================================================
Signup Test
==============================================================================
Test Sign Up Form                                                     | PASS |
------------------------------------------------------------------------------
Signup Test                                                           | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Output:  /Users/alexkhatilov/DDD/Signup/output.xml
Log:     /Users/alexkhatilov/DDD/Signup/log.html
Report:  /Users/alexkhatilov/DDD/Signup/report.html
```
