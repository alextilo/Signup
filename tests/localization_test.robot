*** Settings ***
Library                 SeleniumLibrary
Documentation           Robot Framework :: Localization Test
Resource                ../config/common.resource
Resource                ../config/en_labels.resource

*** Variables ***
${browser}              chrome

*** Test Cases ***
Test Sign Up Form
    [tags]  Localization Validation
    [documentation]     This test case verifies localization of Sign Up Form
    Launch Browser              ${url}              ${browser}
    Run Keyword And Continue On Failure     Localization Validation   ${PageTitle}        ${PageTitleActual}
    Run Keyword And Continue On Failure     Localization Validation   ${FistNameLabel}    ${FistNameLabelActual}
    Run Keyword And Continue On Failure     Localization Validation   ${LastNameLabel}    ${LastNameLabelActual}
    Close Browser

*** Keywords ***
Launch Browser
    [Arguments]         ${arg1}     ${arg2}
    open browser        ${arg1}     ${arg2}
#   maximize browser window
    set window size    950  750
    set selenium implicit wait  10 seconds
    Title Should Be     Welcome to Sign Up
    capture page screenshot     screenshot/page_01.png
    sleep   3s


Localization Validation
    [Arguments]             ${arg1}     ${arg2}
    Element Text Should Be  ${arg1}     ${arg2}
#   ${ElementValue}=    Get Text    ${arg1}
#   Log     ${ElementValue}

Close Browser
    Close All Browsers
