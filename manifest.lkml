project_name: "data_science_app"

application: data-science-application {
  label: "Data Science for Marketing"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    new_window: yes
    new_window_external_urls: ["https://console.cloud.google.com/*"]
    use_embeds: yes
    use_form_submit: yes
    core_api_methods: ["me", "dashboard_dashboard_filters","run_inline_query","update_look","run_query","create_sql_query","run_sql_query"]
  }
}
