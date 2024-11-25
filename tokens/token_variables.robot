*** Variables ***

### Data User/Token
${URL_token}         https://urlgerartoken.com.br
${token_endpoint}    token
&{client_data}       client_id=111111-22222-3333-4444-5555555
...                  client_secret=1234567890
...                  grant_type=client_credentials



### Headers
&{token_headers}    Content-Type=application/x-www-form-urlencoded"




### -----------------------------------------------------------------------------
### -------------------------------Uploader API----------------------------------
### -----------------------------------------------------------------------------




### Data User/Token Uploader_API
${token_uploader_endpoint}    /attachments/token
&{client_data_uploader}       client_id=111111-22222-3333-4444-5555555
...                           client_secret=1234567890
...                           grant_type=client_credentials



### Headers Uploader_API
&{token_headers_uploader}    Content-Type=application/x-www-form-urlencoded"
...                          User=1234

