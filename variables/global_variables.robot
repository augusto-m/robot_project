*** Variables ***

### URL's
${URL_base}             https://urlbaseaplicacao.com.br
${URL_base_upload}      https://urlbaseaplicacaoupload.com.br
${URL_base_download}    https://urlbaseaplicacaodownload.com.br
# {dit_1}               https://urlbaseaplicacaodev.com.br
# {ge1}                 https://urlbaseaplicacaodev2.com.br
# {perf}                https://urlbaseaplicacaoproducao.com.br



### Base Attachments API
${attachments_api}    /attachments/



### Domains
${domain}    CRM/



### User
${user_default}    1234



### Metadatas
&{default_metadata}    MetaKeys=Channel    MetaValues=eSupport-Contact-Web

&{default_metadata_update}    MetaKeys=ChannelTest    MetaValues=eSupportTest



### Endpoints Attachments API

# ~> Get Details
${get_details_id_endpoint}          ${attachments_api}
${get_details_metadata_endpoint}    ${attachments_api}
${get_events_id_endpoint}           /events

# ~> Download
${download_direct_endpoint}      /payload
${download_generate_endpoint}    ${attachments_api}urls/payload/generate

# ~> Public Link
${publicLink_generate_endpoint}    /urls/public/generate
${publicLink_lock_endpoint}        /urls/public/lock

# ~> Preview
${preview_direct_endpoint}                  /preview
${preview_generate_endpoint}                /urls/preview/generate
${page_preview_generate_endpoint}           /urls/pagepreview/generate
${preview_generate_download_API_endpont}    /preview/generate

# ~> Metadata
${add_metadata_endpoint}    /metadata

# ~> Delete
${delete_endpoint}    ${attachments_api}


### Endpoints Upload/Uploader API
${initiate_endpoint}    upload/initiate
${upload_endpoint}      upload/stream
${complete_endpoint}    upload/complete
${abort_endpoint}       upload/abort



### Fake Data

${fake_file_id}      f2fa397b-246b-459c-cadd-08d973a70000
${fake_upload_id}    f2fa397b-246b-459c-cadd-08d973a70011


### Default Download Path

${download_dir}    path=C:/test_files/download


### Variables loop scan
${timesRun}    50x
${timeWait}    1s