*** Settings ***

Documentation     A test case for a user is able to log in and check the validation messages
Resource          ../../../Resources/resources.robot
Suite Setup     Open MBC Application
Test Setup      Launch Application
Test Teardown    Quit Application
Suite Teardown    Close Application

*** Test Cases ***

Login negative valid email and wrong password test case
    [Documentation]     This is to be able to check a negative test case for a valid email and wrong password fields.
    [Tags]      negative    invalid_credentials
    Handle Location and Notification Android
    Go To Login Screen      ${LOGIN_BUTTON}
    Sign With User      ${USER_DETAILS}[email]     ${LOGIN_EMAIL_FIELD}     ${USER_DETAILS}[wrong_password]     ${LOGIN_PASSWORD_FIELD}
    Submit Login Button     ${LOGIN_BUTTON}
    Handle Login Failed     ${LOGIN_FAILED_INVALID_CREDENTIALS}    ${LOGIN_FAILED}     ${OK_BUTTON}

Login negative wrong email and valid password test case
    [Documentation]     This is to be able to check a negative test case for a wrong email and valid password fields.
    [Tags]      negative    invalid_credentials
    Handle Location and Notification Android
    Go To Login Screen      ${LOGIN_BUTTON}
    Sign With User      ${USER_DETAILS}[wrong_email]     ${LOGIN_EMAIL_FIELD}       ${USER_DETAILS}[password]       ${LOGIN_PASSWORD_FIELD}
    Submit Login Button     ${LOGIN_BUTTON}
    Handle Login Failed     ${LOGIN_FAILED_INVALID_CREDENTIALS}     ${LOGIN_FAILED}     ${OK_BUTTON}

Login positive test case
    [Tags]    sanity       positive
    Handle Location and Notification Android
    Go To Login Screen      ${LOGIN_BUTTON}
    Sign With User      ${USER_DETAILS}[email]     ${LOGIN_EMAIL_FIELD}       ${USER_DETAILS}[password]       ${LOGIN_PASSWORD_FIELD}
    Submit Login Button     ${LOGIN_BUTTON}
    Handle Modals       ${MODAL_LOGGED_IN_ANOTHER_DEVICE}       ${USE_HERE_BUTTON}
    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element        ${VERIFICATION_MODAL}
    Run Keyword If       '${PASSED}' == 'True'      Handle Verification
#    Remove this for now Game Tutorial
#    Game Tutorial   //android.view.ViewGroup[@index=3]      # FINISH TUTORIAL BUTTON
    Click The Logout Button     ${LOGOUT_TAB}