project_name: "data_science_app"

application: data-science-application {
  label: "Data Science for Marketing"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    new_window: yes
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
    new_window_external_urls: ["https://console.cloud.google.com/*"]
    external_api_urls: ["https://*.googleapis.com"]
    use_embeds: yes
    use_form_submit: yes
    core_api_methods: ["me", "dashboard_dashboard_filters","run_inline_query","update_look",
      "run_query","create_sql_query","run_sql_query","create_query","look"]
  }
}
