*** Settings ***
Resource  ../Page Objects/landingpage po.robot
Resource  ../Page Objects/bookaflight po.robot

*** Keywords ***
User is on the page ${link}
    landingpage po.Go To Link  ${link}

User selects departure location ${departure}
    landingpage po.Select Departure Location  ${departure}

User selects destination ${destination}
    landingpage po.Select Destination  ${destination}

User selects departuredate ${departuredate}
    landingpage po.Select Departuredate  ${departuredate}

User selects returndate ${returndate}
    landingpage po.Select Returndate  ${returndate}

User clicks Search button
    landingpage po.Click Search

Page title should be ${title}
    ${actualtitle}  bookaflight po.Get Page Title
    should be equal as strings  ${title}  ${actualtitle}



