*** Settings ***

Resource    ../../resources/attachments_requests.robot

Test Teardown    Run Keywords    Status Should Be    500                             ${response1}
...              AND             Should Contain      ${response1.json()}[message]    File preview not available    


*** Test Cases ***

Preview link of "json_file"

    ${response}    Full upload flow    json_file

    ${response1}    Generate preview link    


Preview link of "mp3_file"

    ${response}    Full upload flow   mp3_file

    ${response1}    Generate preview link


Preview link of "mp4_file"

    ${response}    Full upload flow   mp4_file

    ${response1}    Generate preview link


Preview link of "rar_file_rb_compacted"

    ${response}    Full upload flow   rar_file_rb_compacted

    ${response1}    Generate preview link


Preview link of "rar_file"

    ${response}    Full upload flow   rar_file

    ${response1}    Generate preview link


Preview link of "zip_file"

    ${response}    Full upload flow   zip_file

    ${response1}    Generate preview link 


Preview link of "7z_file"

    ${response}    Full upload flow   7z_file

    ${response1}    Generate preview link 
