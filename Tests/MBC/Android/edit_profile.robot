*** Settings ***

Documentation     A test case for a user is able to edit user profile
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***
Edit Profile test case
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
    Tap The Element    //android.widget.TextView[@text='Edit Profile']
    Sleep    5
    Log To Console    'Edit Profile'
    # Edit First Name
    Edit TextField      //android.widget.EditText[@index=2]     Test
    # Edit Last Name
    Edit TextField     //android.widget.EditText[@index=3]     check
    Swipe    335    1174    356    670
#    Edit TextField    //android.widget.EditText[@index=11]     casy
    Tap The Element     //android.widget.TextView[@text='SUBMIT']
