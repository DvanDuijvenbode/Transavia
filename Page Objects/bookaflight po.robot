*** Settings ***
Library  Selenium2Library

*** Keywords ***
Get Page Title
    wait until page contains element  xpath=//h1[@class='header_title']
    ${title}  get element attribute  xpath=//h1[@class='header_title']@innerHTML
    [Return]  ${title}