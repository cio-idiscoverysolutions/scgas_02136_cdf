connection: "scgas-02136-cdf-only"

# include all the views
include: "*.view"



# include all the views
include: "*.view"

# Add Views as Standalone so visible in Explore
explore: questionnairedata_split {
  join: 006_plaintiff_search {
    type:  left_outer
    relationship: many_to_many
    sql_on: ${questionnairedata_split.PlaintiffNumber} = ${006_plaintiff_search.plaintiff_number};;
  }}


 explore: i_ds_vw_documents_received {
    label: "Documents Received"
    from:  i_ds_vw_documents_received }


explore: i_ds_vw_plaintiff_full_q_text_search {
  label: "i_ds_vw_plaintiff_full_q_text_search"
  from:  i_ds_vw_plaintiff_full_q_text_search }

explore: 006_plaintiff_search {
  label: "006 Plaintiff Search"
  from:  006_plaintiff_search }

explore: i_ds_vw_plaintiff_questionnaire_preview {
  label: "Plaintiff's Questionnaire Preview"
  from:  i_ds_vw_plaintiff_questionnaire_preview }
