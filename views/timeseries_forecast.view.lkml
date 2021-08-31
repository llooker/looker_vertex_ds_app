view: timeseries_forecast {
  sql_table_name: `sara-vertex-demos.looker_vertex_demo.predictions_2021_08_27T07_23_50_125Z` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.date ;;
  }

  dimension: predicted_sales__value {
    type: number
    sql: ${TABLE}.predicted_sales.value ;;
    group_label: "Predicted Sales"
    group_item_label: "Value"
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_predicted_sales__value {
    type: sum
    sql: ${predicted_sales__value} ;;
  }

  measure: average_predicted_sales__value {
    type: average
    sql: ${predicted_sales__value} ;;
  }

  measure: total_sales {
    type: sum
    hidden: yes
    sql: ${sales} ;;
  }

  measure: average_sales {
    type: average
    hidden: yes
    sql: ${sales} ;;
  }
}
