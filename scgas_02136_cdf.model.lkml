connection: "scgas-02136-cdf-only"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# include all the views
include: "*.view"

# Add Views as Standalone so visible in Explore
explore: questionnairedata_split {
  label: "Raw Questionnaire Data"
  from: questionnairedata_split}

explore: 006_plaintiff_search {
  label: "006 Plaintiff Search"
  from:  006_plaintiff_search }

explore: i_ds_vw_plaintiff_questionnaire_preview {
  label: "Plaintiff's Questionnaire Preview"
  from:  i_ds_vw_plaintiff_questionnaire_preview }
