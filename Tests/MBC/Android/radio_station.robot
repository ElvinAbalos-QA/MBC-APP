*** Settings ***
Documentation     A test case for a user is able to view radio station and use the functionality (mute and unmute, play and pause ...)
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
Radio Station test case
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

    FOR    ${STATION}    IN   @{RADIO_STATIONS}   # loop radio stations
        Sleep    5
        Log To Console    ${STATION}
        View Radio Station      ${STATION}
        Handle Radio Station Icon    ${MUTE_ICON}
        Handle Radio Station Icon    ${PLAY_ICON}
        Handle Share Icon
        Swipe    5    173    176    178         # to view the sidenav
    END
