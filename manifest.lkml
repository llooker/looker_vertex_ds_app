project_name: "data_science_app"

application: data-science-application {
  label: "Data Science for Marketing"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    use_embeds: yes
    use_form_submit: yes
    core_api_methods: ["me", "dashboard_dashboard_filters","run_inline_query"]
  }
}
