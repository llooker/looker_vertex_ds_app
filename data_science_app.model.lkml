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
