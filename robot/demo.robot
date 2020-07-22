*** Settings ***
Documentation       Test on scenario login and add new user
Library             SeleniumLibrary
Library             BuiltIn
Library             Selenium_set_browser.py
# Suite Setup         Open Browser    about:blank    chrome
# Suite Teardown      Close All Browsers
*** Variables ***
${window_width}        1280
${window_height}       720
${delay}               0.5
${URL}                 http://mana-dev.touchdevops.com
${TITLE}               Traffic Reporter
${INPUT USER}          //*[@id="email"]/input
${INPUT PASSWORD}      //*[@id="password"]/span/input
${BTN LOGIN}           //*[@id="root"]/div/div/div/div/div/div[2]/form/div[3]/div/div/span/div/button
${email}               t1@mana.com
${password}            test123456
@{chrome_arguments}      --headless  --disable-gpu  --no-sandbox
*** Keywords ***
Set Chrome Options
    [Documentation]        Set Chrome options for headless mode
    ${options}=            Setter Chrome Option   @{chrome_arguments}
    [Return]               ${options}

Open Headless Chrome Browser to Page
    [Arguments]            ${URL}
    ${chrome_options}=     Set Chrome Options
    Create Webdriver       Chrome  chrome_options=${chrome_options}
    Go To                  ${URL}
Open Loginpage
    Open Headless Chrome Browser to Page  ${URL}
    Maximize Browser Window
    Title Should Be                     ${TITLE}
    Set Selenium Speed                  ${DELAY}
Input Username and Password
    Element Should Be Visible           ${INPUT USER}
    Element Should Be Visible           ${INPUT PASSWORD}
    Input Text                          ${INPUT USER}           ${email}
    Input Text                          ${INPUT PASSWORD}       ${password}
    Set Selenium Speed                  ${DELAY}
Submit Credentials
    Click Button                        ${BTN LOGIN}
    Set Selenium Speed                  ${DELAY}
Verify Welcome Page
    Location Should Be                  ${url}/traffic                     
*** Test Cases ***
Open Webpage
    Open Loginpage
Login
    Input Username And Password
    Submit Credentials
Open Welcome Page
    Verify Welcome Page
       




    