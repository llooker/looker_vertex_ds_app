view: purchase_predictions {
  sql_table_name: (select * except(predicted_made_order),
  predicted_made_order.scores[offset(1)] as scores from `sara-vertex-demos.looker_vertex_demo.leigha_predictions_test`)
;;


  # (select * except(predicted_made_order) from `sara-vertex-demos.looker_vertex_demo.leigha_predictions_test`
  # left join unnest(predicted_made_order.classes) as classes
  # left join unnest(predicted_made_order.scores) as scores
  # where classes = '1');;

  # dimension: pk {
  #   primary_key: yes
  #   type: string
  #   sql: ${TABLE}.pk ;;
  # }

  dimension: customer_id {
    primary_key: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: advertisement_category {
    type: string
    sql: ${TABLE}.advertisement_category ;;
  }

  dimension: advertising_channel {
    type: string
    sql: ${TABLE}.advertising_channel ;;
  }

  dimension: age {
    type: number
    sql: cast(${TABLE}.age as NUMERIC);;
  }

  dimension: age_tier {
    type: tier
    tiers: [0,20,40,60,80,100]
    sql:  ${age};;
    style: integer
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: made_order {
    type: yesno
    sql: ${TABLE}.made_order='1' ;;
  }

  # dimension: made_order_classes {
  #   hidden: yes
  #   sql: ${TABLE}.predicted_made_order.classes;;
  # }

  # dimension: made_order_scores {
  #   hidden: yes
  #   sql: ${TABLE}.predicted_made_order.scores;;
  # }

  dimension: previous_orders {
    type: number
    sql: ${TABLE}.previous_orders ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  # dimension: classes {
  #   type: number
  #   sql: ${TABLE}.classes ;;
  # }

  dimension: score {
    type: number
    sql: ${TABLE}.scores ;;
  }

  measure: count {
    type: count
  }

  measure: count_predicted_to_order {
    type: count
    filters: [made_order: "yes"]
  }

  measure: percent_predicted_to_order {
    type: number
    value_format_name: percent_1
    sql: 1.0*${count_predicted_to_order}/nullif(${count},0)  ;;
  }

  measure: predicted_cost {
    type: number
    value_format_name: usd
    sql: ${count_predicted_to_order}*0.01 ;;
  }

  measure: average_prediction_score {
    type: average
    value_format_name: percent_2
    sql: ${score} ;;
  }
}

# view: made_order_scores {
#   # dimension: pk {
#   #   hidden: yes
#   #   primary_key: yes
#   #   sql: concat(${score},${purchase_predictions.pk}) ;;
#   # }

#   dimension: score {
#     type: number
#     sql: made_order_scores ;;
#   }

#   dimension: made_order_score {
#     type: number
#     sql: case when ${made_order_classes.class} = "1" then ${score} else null end ;;
#   }

#   dimension: score_tier {
#     type: tier
#     sql: ${made_order_score} ;;
#     value_format_name: percent_1
#     tiers: [0.7,0.75,0.8,0.85,0.9,0.95,1]
#     style: interval
#   }
# }

# view: made_order_classes {
#   dimension: class {
#     sql: made_order_classes ;;
#   }

# }
