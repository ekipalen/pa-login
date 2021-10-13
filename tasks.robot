*** Settings ***
Documentation   Template robot main suite.
Resource        C:\\RobotResources\\pa.resources.robot
Library         RPA.Browser.Selenium


*** Keywords ***
Avaa selain ja kirjaudu
    Open available Browser    ${url} 
    Maximize Browser Window
    Click Element When Visible    id:details-button
    Click Element When Visible    id:proceed-link
    
    Input Text When Element Is Visible   id:user    ${user}
    Input Text When Element Is Visible   id:passwd    ${pwd}
    Click Element    id:submit

*** Tasks ***
Minimal task
    Avaa selain ja kirjaudu
