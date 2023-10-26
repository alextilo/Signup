*** Settings ***
Library                 SeleniumLibrary
Documentation           Robot Framework

*** Variables ***
${FirstNameValue}       Alex
${LastNameValue}        Moore
${EmailValue}           alex.moore@gmail.com
${PhoneNumberValue}     650 555-1212

${url}                  https://alex.academy/signup
${browser}              headlessfirefox

# chrome
# headlesschrome
# firefox
# headlessfirefox
# safari
# edge  

${FistNameField}        id:id_fname
${LastNameField}        id:id_lname
${EmailField}           id:id_email
${PhoneField}           id:id_phone

${SubmitButton}         id:id_submit_button

${SignUpTitle}          Welcome to Sign Up
${ConfirmationTitle}    Confirmation

*** Test Cases ***
Test Sign Up Form
    [tags]  UI Validation
    [documentation]     This test case verifies Sign Up Form
    Launch Browser      ${url}              ${browser}
    Fill Out Form       ${FirstNameValue}   ${LastNameValue}    ${EmailValue}   ${PhoneNumberValue}   
    Submit Form         ${SubmitButton}
Test Validate Confirmation Page
     [tags]  UI Validation
     [documentation]     This test case verifies Confirmation Page
     Confirmation Page   ${FirstNameValue}   ${LastNameValue}    ${EmailValue}   ${PhoneNumberValue} 
     Close Browser

*** Keywords ***
Launch Browser
    [Arguments]         ${arg1}     ${arg2}
    open browser        ${arg1}     ${arg2}
    maximize browser window
#   set window size     950     750
    set selenium implicit wait  10 seconds
    Title Should Be     ${SignUpTitle}
    capture page screenshot     screenshot/page_01.png

Fill Out Form
    [Arguments]         ${arg1}     ${arg2}     ${arg3}     ${arg4}
    input text          ${FistNameField}    ${arg1}
    input text          ${LastNameField}    ${arg2}
    input text          ${EmailField}       ${arg3}
    input text          ${PhoneField}       ${arg4}
    capture page screenshot     screenshot/page_02.png

Submit Form
    [Arguments]         ${arg1}
    click element       ${arg1}
    Title Should Be     ${ConfirmationTitle}

Confirmation Page
    [Arguments]         ${arg1}     ${arg2}     ${arg3}     ${arg4}
    capture page screenshot     screenshot/page_03.png
    Element Text Should Be  ${FistNameField}    ${arg1}
    Element Text Should Be  ${LastNameField}    ${arg2}
    Element Text Should Be  ${EmailField}       ${arg3}
    Element Text Should Be  ${PhoneField}       ${arg4}

Close Browser
    Close All Browsers
