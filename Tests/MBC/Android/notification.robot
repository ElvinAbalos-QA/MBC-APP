*** Settings ***

Documentation     A test case for a user is able to view notification
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
Notification test case
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
    Swipe    205    1122    207    553      # swipe to view notification
    Sleep    5
    Tap The Element    //android.widget.TextView[@text='Notification']
    Tap The Element    ${TOGGLE}
    Handle Modals       //android.widget.TextView[@text='Notification turn off.']       //android.widget.Button[@text='OK']
    Tap The Element    ${TOGGLE}
    Handle Modals       //android.widget.TextView[@text='Notification turn on.']       //android.widget.Button[@text='OK']
    Swipe    5    173    176    178         # to view the sidenav
    Sleep    5
    Log To Console    'Notification'