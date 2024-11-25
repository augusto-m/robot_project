*** Settings ***

Library    DateTime


*** Keywords ***

Get today date

    ${currentDate}    Get Current Date

    ${changeTimeUTC}    Add Time To Date    ${currentDate}    3 hours

    ${currentDateUTC}    Convert Date    ${changeTimeUTC}    result_format=%Y-%m-%d

    [Return]    ${currentDateUTC}