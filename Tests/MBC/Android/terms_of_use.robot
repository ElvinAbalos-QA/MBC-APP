*** Settings ***
Documentation     A test case for a user is able to view terms of use screen
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
Terms of Use test case
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
    Swipe    205    1122    207    553      # swipe to view the Terms of Use
    Sleep    5
    Tap The Element     ${TERMS_OF_USE}
    Tap The Element     //android.view.View[@text='']   # OK - button
    Sleep    5
    Log To Console    'TERMS OF USE'

#    FOR    ${robot}    IN   @{RADIO_STATIONS}   # loop radio stations
#        Sleep    5
#        Log    ${robot}
#        View Radio Station    ${robot}
#        Handle Radio Station    ${MUTE_ICON}
#        Handle Radio Station    ${PLAY_ICON}
#        Handle Share Icon
#        Swipe    5    173    176    178         # to view the sidenav
#    END