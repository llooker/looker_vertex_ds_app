- dashboard: users
  title: Users
  layout: newspaper
  preferred_viewer: dashboards-next
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Users
    name: Users
    model: data_science_app
    explore: transaction_detail
    type: single_value
    fields: [customers.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Country: customers.country
      Age: customers.age
      Gender: customers.gender
      Traffic Source: customers.traffic_source
      Previous Purchases: customers.previous_orders
    row: 3
    col: 2
    width: 5
    height: 3
  - name: User Information
    type: text
    title_text: User Information
    subtitle_text: Details on the users that meet criteria
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Users by State
    name: Users by State
    model: data_science_app
    explore: transaction_detail
    type: looker_map
    fields: [customers.count, customers.state]
    sorts: [customers.count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_colors: [white, purple]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen:
      Country: customers.country
      Age: customers.age
      Gender: customers.gender
      Traffic Source: customers.traffic_source
      Previous Purchases: customers.previous_orders
    row: 3
    col: 12
    width: 10
    height: 6
  - name: Purchase Predictions
    type: text
    title_text: Purchase Predictions
    subtitle_text: Explore from here to dig into predicted purchasers and take action
    body_text: ''
    row: 9
    col: 2
    width: 20
    height: 3
  - title: Avg Age
    name: Avg Age
    model: data_science_app
    explore: transaction_detail
    type: single_value
    fields: [customers.average_age]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Country: customers.country
      Age: customers.age
      Gender: customers.gender
      Traffic Source: customers.traffic_source
      Previous Purchases: customers.previous_orders
    row: 3
    col: 7
    width: 5
    height: 3
  - title: Avg Prior Orders
    name: Avg Prior Orders
    model: data_science_app
    explore: transaction_detail
    type: single_value
    fields: [customers.average_previous_purchases]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Country: customers.country
      Age: customers.age
      Gender: customers.gender
      Traffic Source: customers.traffic_source
      Previous Purchases: customers.previous_orders
    row: 6
    col: 2
    width: 5
    height: 3
  - name: Predicted Sales
    type: text
    title_text: Predicted Sales
    subtitle_text: Predicted revenue without advertisements
    body_text: ''
    row: 20
    col: 0
    width: 24
    height: 3
  - title: Avg Prior Spend
    name: Avg Prior Spend
    model: data_science_app
    explore: transaction_detail
    type: single_value
    fields: [customers.average_prior_spend]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Country: customers.country
      Age: customers.age
      Gender: customers.gender
      Traffic Source: customers.traffic_source
      Previous Purchases: customers.previous_orders
    row: 6
    col: 7
    width: 5
    height: 3
  - title: Percent Users Predicted to Purchase
    name: Percent Users Predicted to Purchase
    model: data_science_app
    explore: purchase_predictions
    type: single_value
    fields: [purchase_predictions.percent_predicted_to_order]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Table Name: purchase_predictions.table_name
    row: 12
    col: 0
    width: 6
    height: 3
  - title: Predicted Campaign Cost
    name: Predicted Campaign Cost
    model: data_science_app
    explore: purchase_predictions
    type: single_value
    fields: [purchase_predictions.predicted_cost]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Table Name: purchase_predictions.table_name
    row: 12
    col: 6
    width: 6
    height: 3
  - title: 'Purchase Likelihood by # Prior Orders'
    name: 'Purchase Likelihood by # Prior Orders'
    model: data_science_app
    explore: purchase_predictions
    type: looker_column
    fields: [purchase_predictions.average_prediction_score, purchase_predictions.previous_orders]
    sorts: [purchase_predictions.previous_orders]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_predictions.average_prediction_score,
            id: purchase_predictions.average_prediction_score, name: Average Prediction
              Score}], showLabels: false, showValues: true, minValue: 0.2, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Table Name: purchase_predictions.table_name
    row: 15
    col: 0
    width: 12
    height: 5
  - title: Purchase Likelihood by Customer Traffic Source
    name: Purchase Likelihood by Customer Traffic Source
    model: data_science_app
    explore: purchase_predictions
    type: looker_column
    fields: [purchase_predictions.average_prediction_score, purchase_predictions.traffic_source]
    sorts: [purchase_predictions.average_prediction_score desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_predictions.average_prediction_score,
            id: purchase_predictions.average_prediction_score, name: Average Prediction
              Score}], showLabels: false, showValues: true, minValue: 0.26, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Table Name: purchase_predictions.table_name
    row: 12
    col: 12
    width: 6
    height: 8
  - title: Purchase Likelihood by Age Tier
    name: Purchase Likelihood by Age Tier
    model: data_science_app
    explore: purchase_predictions
    type: looker_column
    fields: [purchase_predictions.average_prediction_score, purchase_predictions.age_tier]
    filters:
      purchase_predictions.age_tier: "-Below 0,-0 to 19,-100 or Above,-Undefined"
    sorts: [purchase_predictions.age_tier]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_predictions.average_prediction_score,
            id: purchase_predictions.average_prediction_score, name: Average Prediction
              Score}], showLabels: false, showValues: true, minValue: 0.27, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Table Name: purchase_predictions.table_name
    row: 12
    col: 18
    width: 6
    height: 8
  - title: Sales Forecast
    name: Sales Forecast
    model: data_science_app
    explore: transaction_detail
    type: looker_line
    fields: [transaction_detail__line_items.total_sale_price, transaction_detail.transaction_timestamp_date,
      is_prediction]
    pivots: [is_prediction]
    fill_fields: [transaction_detail.transaction_timestamp_date]
    filters:
      transaction_detail.transaction_timestamp_date: after 2020/04/05
    sorts: [transaction_detail.transaction_timestamp_date desc, is_prediction]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "${transaction_detail.transaction_timestamp_date}\
          \ > date(2021,04,08)", label: Is_Prediction, value_format: !!null '', value_format_name: !!null '',
        dimension: is_prediction, _kind_hint: dimension, _type_hint: yesno}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: transaction_detail__line_items.total_sale_price,
            id: No - transaction_detail__line_items.total_sale_price, name: Prior
              Sales}, {axisId: transaction_detail__line_items.total_sale_price, id: Yes
              - transaction_detail__line_items.total_sale_price, name: Predicted Sales}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_labels:
      No - transaction_detail__line_items.total_sale_price: Prior Sales
      Yes - transaction_detail__line_items.total_sale_price: Predicted Sales
    defaults_version: 1
    row: 23
    col: 6
    width: 18
    height: 6
  - title: Predicted Revenue (Next 7 Days)
    name: Predicted Revenue (Next 7 Days)
    model: data_science_app
    explore: transaction_detail
    type: single_value
    fields: [transaction_detail__line_items.total_sale_price]
    filters:
      is_prediction: 'Yes'
    limit: 500
    dynamic_fields: [{category: dimension, expression: "${transaction_detail.transaction_timestamp_date}\
          \ > date(2021,04,08)", label: Is_Prediction, value_format: !!null '', value_format_name: !!null '',
        dimension: is_prediction, _kind_hint: dimension, _type_hint: yesno}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: transaction_detail__line_items.total_sale_price,
            id: No - transaction_detail__line_items.total_sale_price, name: Prior
              Sales}, {axisId: transaction_detail__line_items.total_sale_price, id: Yes
              - transaction_detail__line_items.total_sale_price, name: Predicted Sales}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      No - transaction_detail__line_items.total_sale_price: Prior Sales
      Yes - transaction_detail__line_items.total_sale_price: Predicted Sales
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    defaults_version: 1
    row: 23
    col: 0
    width: 6
    height: 6
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: UK,USA
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options:
      - UK
      - USA
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.country
  - name: Age
    title: Age
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.age
  - name: Gender
    title: Gender
    type: field_filter
    default_value: Female,Male
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options:
      - Female
      - Male
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.gender
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value: Display,Search,Email,Facebook,Organic
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
      options:
      - Display
      - Email
      - Facebook
      - Organic
      - Search
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.traffic_source
  - name: Previous Purchases
    title: Previous Purchases
    type: field_filter
    default_value: "[0, 20]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 20
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.previous_orders
  - name: Advertisement Category
    title: Advertisement Category
    type: field_filter
    default_value: Accessories
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Accessories
      - Active
      - Dresses
      - Fashion Hoodies & Sweatshirts
      - Jeans
      - Outerwear & Coats
      - Pants
      - Shorts
      - Swim
      - Tops & Tees
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.advertisement_category_
  - name: Advertising Channel
    title: Advertising Channel
    type: field_filter
    default_value: Search
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: inline
      options:
      - Search
      - Display
      - Video
    model: data_science_app
    explore: transaction_detail
    listens_to_filters: []
    field: customers.advertising_channel_
  - name: Table Name
    title: Table Name
    type: string_filter
    default_value: '"leigha_test"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
