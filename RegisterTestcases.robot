*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to Register success with valid credential
    ${email}     Set Variable    JhenJ@gmail.com
    ${firstname}     Set Variable    Jhenwat
    ${lastname}     Set Variable    Kaewarsa
    ${phone}     Set Variable    0812345678
    ${newPassword}     Set Variable    004711Jk
    ${confirmPassword}     Set Variable    004711Jk
    ${expected_message}     Set Variable    ระบบได้ส่งรหัส OTP ไปยังอีเมลของคุณแล้ว
    When user register to future skill platform with ${email} ${firstname} ${lastname} ${phone} ${newPassword} ${confirmPassword} 
    [Teardown]    Close Browser
