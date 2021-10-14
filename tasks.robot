*** Settings ***
Documentation   Template robot main suite.
Resource        C:\\RobotResources\\pa.resources.robot
Library         RPA.Browser.Selenium    auto_close=${FALSE}


*** Keywords ***
Open Browser and login
    Set Selenium Timeout    20 seconds
    Open Available Browser    ${url}  
    Maximize Browser Window
    Click Element When Visible    id:details-button
    Click Element When Visible    id:proceed-link
    
    Input Text When Element Is Visible   id:user    ${user}
    Input Text When Element Is Visible   id:passwd    ${pwd}
    Click Element    id:submit
    
    Execute Javascript   window.open()
    Switch Window   NEW
    Go To    ${url2}
    Click Element When Visible    id:details-button
    Click Element When Visible    id:proceed-link
    Input Text When Element Is Visible   id:user    ${user2}
    Input Text When Element Is Visible   id:passwd    ${pwd2}
    Click Element    id:submit

*** Tasks ***
Minimal task
    Open Browser and login
