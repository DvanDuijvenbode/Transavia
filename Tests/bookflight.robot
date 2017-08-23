*** Settings ***
Library           Selenium2Library
Resource          ../Business Objects/bookflight.robot

*** Test Cases ***
Select destination and departure date
    [Tags]    dev
    Given User is on the page https://www.transavia.com/en-NL/home/
    When User selects departure location Amsterdam (Schiphol)
    And User selects destination Alicante, Spain
    And User selects departuredate 25 Aug 2017
    And User selects returndate 1 Sep 2017
    And User clicks Search button
    Then Page title should be Book a flight
