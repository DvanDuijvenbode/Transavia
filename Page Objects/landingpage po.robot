*** Settings ***
Library           Selenium2Library

*** Keywords ***
Go To Link
    [Arguments]    ${link}
    Open browser    ${link}    chrome
    maximize browser window
    wait until page contains element    xpath=//button[@class='for-desktop button button-primary button-call-to-action cc-button fixed-right medium cookie-consent-close']
    sleep    2s
    click element    xpath=//button[@class='for-desktop button button-primary button-call-to-action cc-button fixed-right medium cookie-consent-close']
    sleep    2s

Select Departure Location
    [Arguments]    ${departure}
    wait until page contains element    id=routeSelection_DepartureStation-input
    input text    id=routeSelection_DepartureStation-input    ${departure}
    sleep    2s

Select Destination
    [Arguments]    ${destination}
    input text    id=routeSelection_ArrivalStation-input    ${destination}
    sleep    2s

Select Departuredate
    [Arguments]    ${destinationdate}
    input text    id=dateSelection_OutboundDate-datepicker    ${destinationdate}
    sleep    2s

Select Returndate
    [Arguments]    ${returndate}
    input text    id=dateSelection_IsReturnFlight-datepicker    ${returndate}
    sleep    2s

Click Search
    click element    xpath=//*[@id="desktop"]/section/div[3]/div/button
    sleep    2s
