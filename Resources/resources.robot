*** Settings ***
Documentation    This is the resources file keywords
Library     Browser
Library     AppiumLibrary

*** Variables ***
#*** Test variables ***
&{USER_DETAILS}               email=bliimocheck@mailinator.com     wrong_email=adonisyes@mailinator.com    password=Password@123   wrong_password=wrongpassword
&{USER_DETAILS_2}               email=bliimo@mailinator.com    password=Password@123

# *** Login Failed ***
# ANDROID
${LOGIN_FAILED}                 //android.widget.TextView[@text='ERROR']
${LOGIN_FAILED_IOS}     (//XCUIElementTypeOther[@name="ERROR"])
${OK_BUTTON}                    //android.widget.TextView[@text='OK']
${OK_BUTTON_IOS}     (//XCUIElementTypeOther[@name="OK"])
${LOGIN_FAILED_EMPTY}      //android.widget.TextView[@text='Fields should not be empty. Please note that your myeasytrip app username and password is different from myeastrip web. Please try again.']
${LOGIN_FAILED_INVALID_CREDENTIALS}      //android.widget.TextView[@text='Log in failed! Invalid email or password.']
${LOGIN_FAILED_INVALID_CREDENTIALS_IOS}     (//XCUIElementTypeOther[@name="ERROR Log in failed! Invalid email or password."])[1]

#*** APPLICATION Variables ***
${MBC-APPLICATION-ID}              com.mbcapp
${MBC-APPLICATION-ACTIVITY}        ${MBC-APPLICATION-ID}.MainActivity
${ADB_NAME}     192.168.0.24:1234
#${ADB_NAME}     4SPRMFUGIRBQ4PKR

#*** Login Page ***
${LOGIN_EMAIL_FIELD}            //android.widget.EditText[@text='Email']
${LOGIN_EMAIL_FIELD_IOS}        xpath=(//XCUIElementTypeOther[@name="Email"])[2]/XCUIElementTypeTextField
${LOGIN_PASSWORD_FIELD}         //android.widget.EditText[@text='Password']
${LOGIN_PASSWORD_FIELD_IOS}         //XCUIElementTypeOther[@name="Password"]/XCUIElementTypeSecureTextField
${LOGIN_BUTTON}                 //android.widget.TextView[@text='LOG IN']
${LOGIN_BUTTON_IOS}             xpath=(//XCUIElementTypeOther[@name="LOG IN"])[2]
${LOGIN_WITH_FACEBOOK_BUTTON}       //android.view.ViewGroup[@index=2]
${LOGIN_WITH_FACEBOOK_BUTTON_IOS}       xpath=(//XCUIElementTypeOther[@name=""])[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther
${LOGIN_WITH_GMAIL_BUTTON}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.View

#*** Logged In Another Device ***
${MODAL_LOGGED_IN_ANOTHER_DEVICE}       //android.widget.TextView[@text='You are currently logged in on another device']
${USE_HERE_BUTTON}                      //android.widget.TextView[@text='USE HERE']

# IOS
${MODAL_LOGGED_IN_ANOTHER_DEVICE_IOS}       xpath=(//XCUIElementTypeOther[@name="You are currently logged in on another device"])
${USE_HERE_BUTTON_IOS}      xpath=(//XCUIElementTypeButton[@name="USE HERE"])

#*** NOTIFICATIONS ***
${NOTIFICATION_IOS}     //XCUIElementTypeOther[@name="Notification"]
${TOGGLE}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Switch
${TOGGLE_IOS}       //XCUIElementTypeOther[@name="Notifications"]/XCUIElementTypeOther/XCUIElementTypeButton

#*** RADIO STATIONS ***
@{RADIO_STATIONS}=      //android.widget.TextView[@text='LOVE RADIO']     //android.widget.TextView[@text='YES! THE BEST']     //android.widget.TextView[@text='EASY ROCK']    //android.widget.TextView[@text='RADYO NATIN']     //android.widget.TextView[@text='DZRH']      //android.widget.TextView[@text='AKSYON RADYO']
${MUTE_ICON}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.ImageView
${PLAY_ICON}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup/android.widget.TextView
${SHARE_ICON}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.widget.ImageView

#*** Verification Modal ***
${VERIFICATION_MODAL}       //android.widget.TextView[@text='VERIFICATION!']
${VERIFICATION_MODAL_IOS}       xpath=(//XCUIElementTypeOther[@name="VERIFICATION!"])
${VERIFIED_BUTTON}          //android.widget.TextView[@text='I have verified my account.']
${MODAL_LOGGED_IN_ANOTHER_DEVICE}       //android.widget.TextView[@text='You are currently logged in on another device']

#*** Game Tutorial ***
${SKIP_TUTORIAL}        //android.widget.TextView[@text='Skip Tutorial']
${SKIP_TUTORIAL_IOS}        xpath=(//XCUIElementTypeOther[@name="Skip Tutorial "])[4]
${FINISH_TUTORIAL_BUTTON_IOS}       xpath=(//XCUIElementTypeOther[@name=" Don't show this again"])[4]/XCUIElementTypeOther[3]
${GAME_TITLE}       Testing game
${GAME_NAME}        //android.widget.TextView[@text='${GAME_TITLE}']
${ROULETTE_SCHED}       1126002020114000pm  # month-day-year + 00 and the time
${CITY}     Binmaley

#*** Registration - EMAIL ***
${EMAIL_FIELD}        //android.widget.EditText[@text='Email Address']
${FIRST_NAME_FIELD}        //android.widget.EditText[@text='First Name']
${LAST_NAME_FIELD}        //android.widget.EditText[@text='Last Name']
${MOBILE_FIELD}     //android.widget.EditText[@text='Mobile No.']
${BIRTHDAY_FIELD}       //android.widget.TextView[@text='Birthday']
${YEAR}     id=android:id/date_picker_header_year
${SELECT_YEAR}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.ScrollView/android.widget.ViewAnimator/android.widget.ListView/android.widget.TextView[3]
${NORTH_LUZON}      //android.widget.TextView[@text='North Luzon']
${FIRST_NAME}       Bliimo
${LAST_NAME}        Test
${MOBILE_NUMBER}    09123456789

#*** Dashboard Page ***
${PROFILE_ICON}                 //android.view.ViewGroup[@index=2]//android.widget.ImageView[@index=0]

#*** Sidenav ***
${HAMBURGER_ICON}               //android.view.ViewGroup//android.widget.ImageView
${MY_PAPREMYO}                  //android.widget.TextView[@text='My Papremyo']
${MY_PAPREMYO_IOS}              //XCUIElementTypeOther[@name="My Papremyo"]
${TERMS_OF_USE}                 //android.widget.TextView[@text='Terms of Use']
${TERMS_OF_USE_IOS}             xpath=(//XCUIElementTypeOther[@name="Terms of Use"])
${PRIVACY_POLICY}               //android.widget.TextView[@text='Privacy Policy']
${PRIVACY_POLICY_IOS}           xpath=(//XCUIElementTypeOther[@name="Privacy Policy"])

#*** Reloading Partners Page
${RELOADING_PARTNERS}           //android.widget.TextView[@text='Reloading Partners']

#*** Logout ***
${NOTIF_TAB}                   //android.widget.TextView[@text='Notification']
#${LOGOUT_TAB}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.HorizontalScrollView[2]/android.view.ViewGroup
${LOGOUT_TAB}                  //android.widget.TextView[@text='Logout']
${LOGOUT_TAB_IOS}              //XCUIElementTypeOther[@name="Logout"]

#*** Forgot Password ***
${FORGOT PASSWORD TEXT}         //android.widget.TextView[@text='Forgot your password?']
${FORGOT PASSWORD TEXT - IOS}   //XCUIElementTypeOther[@name="Forgot Password?"]
${FORGOT PASSWORD FIELD}        //android.widget.EditText[@text='Please enter your email']

#*** WEB VARIABLES ***
@{URL}          https://www.mailinator.com/     http://mbc-api-staging.bliimo.com       https://appcms.mbcpapremyo.com.ph
${BROWSER}      chromium
${TITLE}        Mailinator

*** Keywords ***
Wait
    Sleep    5s

Run Keyword Until Success
    [Arguments]    ${KW}    @{KWARGS}
    Wait Until Keyword Succeeds    5s      1s  ${KW}    @{KWARGS}

Open MBC Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    appPackage=${MBC-APPLICATION-ID}      appActivity=${MBC-APPLICATION-ACTIVITY}      udid=${ADB_NAME}     automationName=Uiautomator2
#    Open Application    http://localhost:4723/wd/hub    platformName=Android     automationName=Uiautomator2      app=/Users/qa_tester/Downloads/MBC PaPremyo 1.0.32(60).apk

Open MBC Application IOS
    Open Application    http://localhost:4723/wd/hub    platformName=iOS	platformVersion=15.0.2	    deviceName=Test iPhone    automationName=XCUITest      udid=3d9405ebce32f773d38e43236ce17f49523e12c2    bundleId=com.mbc.mbcpapremyo    #app=/Users/qa_tester/Desktop/mbcapp2/mbcapp.ipa

Handle Modals
    [Arguments]     ${MODAL_NAME}       ${BUTTON}
    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element       ${MODAL_NAME}
    Run Keyword If       ${PASSED} == True      Tap The Element     ${BUTTON}

Handle Verification
    log to console      'This account is not verified yet!!!'

Handle View and Join Game
    Log To Console    'Handle View and Join Game'
    Tap The Element     ${GAME_NAME}
    Wait Until Page Contains Element    //android.widget.TextView[@text='WAIT KA LANG!']
    Sleep    20
    Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.webkit.WebView/android.webkit.WebView/android.view.View
    Scroll Down    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.webkit.WebView/android.webkit.WebView/android.view.View
    Sleep    5

Handle Hide Keyboard
    Sleep    3
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="LOG IN  Vertical scroll bar, 1 page Horizontal scroll bar, 1 page LOG IN Forgot your password? QUICK ACCESS WITH  BACK TO MAIN SCREEN"])[2]/XCUIElementTypeOther[1]/XCUIElementTypeImage
    Click Element    xpath=(//XCUIElementTypeOther[@name="LOG IN  Vertical scroll bar, 1 page Horizontal scroll bar, 1 page LOG IN Forgot your password? QUICK ACCESS WITH  BACK TO MAIN SCREEN"])[2]/XCUIElementTypeOther[1]/XCUIElementTypeImage

Handle Sign Up Via Social Media's
    [Arguments]    ${username}
    Input Text           //android.widget.EditText[@text='Mobile No.']       09123456789
    Handle Birthday
    Select Gender
    Select Region
    Select Province
    Select City
    Input Element       //android.widget.EditText[@text='USERNAME']       ${username}
    Tap The Element    //android.widget.TextView[@text='SUBMIT']

Sign with User
    [Arguments]     ${EMAIL}    ${EMAIL_FIELD}      ${USERPASSWORD}     ${PASSWORD_FIELD}
    Input User Email        ${EMAIL}        ${EMAIL_FIELD}
    Input User Password     ${USERPASSWORD}     ${PASSWORD_FIELD}

Game Tutorial
    [Arguments]    ${BUTTON}
    FOR     ${i}    IN RANGE        6
        Sleep   3
        Swipe    628    646    59    649
        log to console    ${i}
    END
    Sleep    5
    Wait Until Page Contains Element        ${BUTTON}
    Tap The Element     ${BUTTON}
    Sleep   5

Sign Up with User
    Sleep   8
    Wait Until Page Contains Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[4]
    Tap The Element         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[4]

Select Gender
    Tap The Element    //android.widget.TextView[@text='Select Gender']
    Tap The Element    //android.widget.TextView[@text='Male']

Handle Register
    [Arguments]    ${EMAIL}
    Wait Until Page Contains Element        //android.widget.TextView[@text='REGISTER']
    Swipe    352    1133    352    534
    Tap The Element     //android.widget.TextView[@text='SUBMIT']
    Swipe    359    280    347    872
    Wait Until Page Contains Element        ${MOBILE_FIELD}
    Input Text      ${FIRST_NAME_FIELD}     ${FIRST_NAME}
    Input Text      ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text      ${EMAIL_FIELD}      ${EMAIL}
    Input Text      ${MOBILE_FIELD}     ${MOBILE_NUMBER}
    Handle Birthday
    Select Gender
    Select Region
    Select Province
    Select City
    Input Element       //android.widget.EditText[@text='USERNAME']       ROOT
    Input Element       //android.widget.EditText[@text='PASSWORD']       Password@123
    Input Element       //android.widget.EditText[@text='CONFIRM PASSWORD']       Password@123
    Sleep    5
    Swipe    680    1093    687    820
    Tap The Element     //android.widget.TextView[@text='SUBMIT']
    Handle Modals       //android.widget.TextView[@text='Email has already been taken']       //android.widget.TextView[@text='OK']

Edit TextField
    [Arguments]    ${FIELD}     ${NAME}
    Wait Until Page Contains Element    ${FIELD}
    AppiumLibrary.Clear Text      ${FIELD}
    AppiumLibrary.Input Text      ${FIELD}     ${NAME}

View Radio Station
    [Arguments]    ${STATION}
    Sleep    5
    Wait Until Page Contains Element    ${STATION}
    Tap The Element    ${STATION}
    Sleep    5

Handle Radio Station Icon
    Comment    This is the handle for mute and play icon
    [Arguments]    ${ICON}
    FOR     ${i}    IN RANGE        2
        Sleep    3
        Wait Until Page Contains Element    ${ICON}
        Click Element    ${ICON}
        Sleep    10
    END

Handle Share Icon
    Tap The Element    ${SHARE_ICON}
    Sleep    5
    Tap The Element    //android.widget.TextView[@text='Copy to clipboard']
    Sleep    5

Handle Year
    Sleep    3
    Swipe    535    439    528    772   # 2000
    Swipe    537    482    535    684

Handle Day
    Sleep    3
    Swipe    383    487    385    646   # 27

Handle Month
    Sleep    3
    Swipe    164    516    164    687   # July

Handle Birthday
    Tap The Element    ${BIRTHDAY_FIELD}
    Handle Year
    Handle Day
    Handle Month
    Tap The Element     ${OK_BUTTON}

Select Region
    Tap The Element    //android.widget.TextView[@text='Select Region']
    Tap The Element    ${NORTH_LUZON}

Select Province
    Tap The Element    //android.widget.TextView[@text='Select Province']
    Sleep    3
    FOR     ${i}    IN RANGE        3
        Swipe    342    915    357    494
        log to console    ${i}
    END
    Tap The Element    //android.widget.TextView[@text='Pangasinan']

Select City
    Tap The Element    //android.widget.TextView[@text='Select City']
    Sleep    3
    FOR     ${i}    IN RANGE        3
        Swipe    335    867    332    622
        log to console    ${i}
    END
    Tap The Element    //android.widget.TextView[@text='Binmaley']
    Sleep    3
    Swipe    665    974    668    622

Input Element
    [Arguments]     ${locator}      ${value}
    Wait Until Page Contains Element       ${locator}
    Input Text      ${locator}      ${value}

Tap The Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element       ${locator}
    Click Element                          ${locator}

Forgot Password
    Tap The Element                        ${FORGOT PASSWORD TEXT}
    Wait Until Page Contains Element       ${FORGOT PASSWORD FIELD}
    Input Text                             ${FORGOT PASSWORD FIELD}               ${USER_DETAILS}[email]
    Run Keyword Until Success              Click Element                          //android.widget.TextView[@text='CONFIRM']
    Sleep    5
    Wait Until Page Contains Element       //android.widget.TextView[@text='SUCCESS']
    Run Keyword Until Success              Click Element                          //android.widget.TextView[@text='OK']

#Check code
    #Check code and Resend Code

Go To Login Screen
    [Arguments]    ${BUTTON}
    Sleep   5
    Submit Login Button     ${BUTTON}

Go To Login Screen IOS
    Sleep   5
    Submit Login Button IOS

Go to Facebook
    [Arguments]    ${FACEBOOK_TEXT}      ${BUTTON}
    Sleep    5
    Wait Until Page Contains Element    ${FACEBOOK_TEXT}
    Wait Until Page Contains Element    ${BUTTON}
    Tap The Element    ${BUTTON}

Facebook Sign Up
    [Arguments]     ${FB_SIGN_UP}
    Sleep    5
    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element        ${FB_SIGN_UP}
    Run Keyword If       '${PASSED}' == 'True'      Handle Sign Up Via Social Media's   User101
    # Login Facebook
    Sleep    10
    Log To Console    'Sign up with Facebook'

Select Gmail account
    Sleep    5
    Swipe    383    851    375    492
    Swipe    383    851    375    492
    Tap The Element    //android.widget.TextView[@text='bliimombc2@gmail.com']      #ctcbliimo1@gmail.com
    ${PASSED}=      Run Keyword And Return Status       Wait Until Page Contains Element        ${SKIP_TUTORIAL}
    Run Keyword If       ${PASSED} == True      Tap The Skip Tutorial   ${SKIP_TUTORIAL}
    Handle Modals       ${MODAL_LOGGED_IN_ANOTHER_DEVICE}       ${USE_HERE_BUTTON}
    Capture Page Screenshot

Gmail Sign Up
    Tap The Element    ${LOGIN_WITH_GMAIL_BUTTON}
    Sleep    5
    ${PASSED}=      Run Keyword And Return Status   Page Should Contain Element    //android.widget.TextView[@text='Choose an account']
    Run Keyword If       ${PASSED} == True      Select Gmail Account
    ${PASSED}=      Run Keyword And Return Status   Page Should Contain Element    //android.widget.TextView[@text='Choose an account']
    Run Keyword If       ${PASSED} == True      Select Gmail Account
    Sleep    5
    Comment    Sign Up with Google

Tap The Skip Tutorial
    [Arguments]    ${SKIP_TUTORIAL}
#    Wait Until Page Contains Element        ${SKIP_TUTORIAL}
#    Tap The Element     ${SKIP_TUTORIAL}
    Log To Console    'Not Displaying the Game Tutorial'

Forgot Password IOS
    Tap The Element                             ${FORGOT PASSWORD TEXT - IOS}

Input User Email
    [Arguments]    ${EMAIL}     ${FIELD}
    Run Keyword Until Success           Wait Until Page Contains Element              ${FIELD}
    Run Keyword Until Success       Input Text        ${FIELD}        ${EMAIL}

Input User Password
    [Arguments]     ${PASSWORD}     ${FIELD}
    Run Keyword Until Success       Wait Until Page Contains Element        ${FIELD}
    Run Keyword Until Success       Input Password        ${FIELD}     ${PASSWORD}

Handle Location and Notification IOS
    Sleep    5
    Handle Modals    //XCUIElementTypeAlert[@name="Allow “MBC PaPremyo” to use your location?"]     //XCUIElementTypeButton[@name="Allow Once"]
    Handle Modals    //XCUIElementTypeAlert[@name="“MBC PaPremyo” Would Like to Send You Notifications"]    //XCUIElementTypeButton[@name="Allow"]

Handle Location and Notification Android
    Handle Modals       //android.widget.TextView[@text='Allow MBC Papremyo to access this device's location?']     //android.widget.TextView[@text='ALLOW ONLY WHILE USING THE APP']

Submit Login Button
    [Arguments]    ${BUTTON}
    Sleep    5
    Page Should Contain Element     ${BUTTON}
    Tap The Element     ${BUTTON}

Submit Login Button IOS
    Run Keyword Until Success       appiumlibrary.Wait Until Page Contains Element     ${LOGIN_BUTTON_IOS}
    Get Element Location            ${LOGIN_BUTTON_IOS}
    Run Keyword Until Success       appiumlibrary.Click Element     ${LOGIN_BUTTON_IOS}

Handle Login Failed
    [Arguments]     ${DISPLAY_MESSAGE}      ${LOGIN_FAILED}     ${OK_BUTTON}
    Run Keyword Until Success       Wait Until Page Contains Element    ${LOGIN_FAILED}
    Run Keyword Until Success       Wait Until Page Contains Element    ${DISPLAY_MESSAGE}
    Run Keyword Until Success       Click Element                       ${OK_BUTTON}

Verify Login Is Successful
    Run Keyword Until Success       Wait Until Page Contains Element              ${HAMBURGER_ICON}

Click The Logout Button
    [Arguments]    ${BUTTON}
    Swipe    5    173    176    178         # to view the sidenav
    Swipe    205    1122    207    553      # swipe to view the logout
    Sleep    5
    Page Should Contain Element              ${BUTTON}
    Click Element                            ${BUTTON}
    Sleep    3
    Page Should Contain Element     //android.widget.TextView[@text='Radyo, Palaro at Papremyo!']

# ====================================================================================

# ***  Browser Library  ***
Open Mailinator
    Browser.Open Browser    ${URL}      ${BROWSER}
    Get Title       ==       ${TITLE}

Input Field
    [Arguments]    ${field}     ${value}
    Wait For Elements State    ${field}
    Fill Text    ${field}    ${value}

Select Element From List
    [Arguments]    ${arrow}     ${list}
    Click    ${arrow}
    Click    ${list}
