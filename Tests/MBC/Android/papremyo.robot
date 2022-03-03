*** Settings ***
Documentation     A test case for a user is able to view My Papremyo list screen
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
My Papremyo test case
    [Tags]    sanity       positive
    Go To Login Screen      ${LOGIN_BUTTON}
    Sign With User      ${USER_DETAILS}[email]     ${LOGIN_EMAIL_FIELD}       ${USER_DETAILS}[password]       ${LOGIN_PASSWORD_FIELD}
    Submit Login Button     ${LOGIN_BUTTON}
    Handle Modals       ${MODAL_LOGGED_IN_ANOTHER_DEVICE}       ${USE_HERE_BUTTON}
    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element        ${VERIFICATION_MODAL}
    Run Keyword If       '${PASSED}' == 'True'      Handle Verification
    Tap The Skip Tutorial    ${SKIP_TUTORIAL}
    Sleep    5
    Swipe    5    173    176    178         # to view the sidenav
    Swipe    205    1122    207    553      # swipe to view the Papremyo
    Sleep    5
    Tap The Element    ${MY_PAPREMYO}
    Sleep    10
    Log To Console    'My Papremyo'