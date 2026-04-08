*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} ${firstname} ${lastname} ${phone} ${newPassword} ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email              ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName          ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName           ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber        ${phone}
    CommonKeywords.Wait until element is ready then input text        name=newPassword        ${newPassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword    ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display validate register fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}