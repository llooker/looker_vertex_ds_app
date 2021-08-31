connection: "leigha-bq-dev"
include: "/views/*.view.lkml"


explore: transaction_detail {
  join: transaction_detail__line_items {
    view_label: "Transaction Detail: Line Items"
    sql: LEFT JOIN UNNEST(${transaction_detail.line_items}) as transaction_detail__line_items ;;
    relationship: one_to_many
  }
  join: customers {
    relationship: many_to_one
    sql_on: ${customers.id}=${transaction_detail.customer_id} ;;
  }
}


explore: purchase_predictions {
  # join: made_order_classes {
  #   view_label: "Classes"
  #   sql: LEFT JOIN UNNEST(${purchase_predictions.made_order_classes}) as made_order_classes ;;
  #   relationship: one_to_many
  # }

  # join: made_order_scores {
  #   view_label: "Scores"
  #   sql: LEFT JOIN UNNEST(${purchase_predictions.made_order_scores}) as made_order_scores ;;
  #   relationship: one_to_many
  # }

}



explore: timeseries_forecast {}
