view: customers {
  sql_table_name: `leigha-bq-dev.retail.customers`;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: previous_purchases {
    type: number
    sql: (select count(distinct transaction_id) from retail.transaction_detail where customer_id = ${id}) ;;
  }

  dimension: prior_spend {
    type: number
    sql: (select sum(i.sale_price) from retail.transaction_detail, unnest(line_items) as i where customer_id = ${id}) ;;
  }

  parameter: advertising_channel {
    default_value: "Accessories"
    allowed_value: {
      value: "Search"
    }
    allowed_value: {
      value: "Display"
    }
    allowed_value: {
      value: "Video"
    }
  }

  dimension: advertising_channel_ {
    type: string
    sql: {% parameter advertising_channel %} ;;
  }

  parameter: advertisement_category {
    default_value: "Accessories"
    allowed_value: {
      value: "Accessories"
    }
    allowed_value: {
      value: "Active"
    }
    allowed_value: {
      value: "Dresses"
    }
    allowed_value: {
      value: "Fashion Hoodies & Sweatshirts"
    }
    allowed_value: {
      value: "Jeans"
    }
    allowed_value: {
      value: "Outerwear & Coats"
    }
    allowed_value: {
      value: "Pants"
    }
    allowed_value: {
      value: "Shorts"
    }
    allowed_value: {
      value: "Swim"
    }
    allowed_value: {
      value: "Tops & Tees"
    }
  }

  dimension: advertisement_category_ {
    type: string
    sql: {% parameter advertisement_category %} ;;
  }


  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
    drill_fields: [zip, city]
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  measure: count {
    type: count
    drill_fields: [id, state, traffic_source, gender, created_date, age, transaction_detail.count]
  }

  measure: total_age {
    type: sum
    hidden: yes
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    value_format_name: decimal_1
    sql: ${age} ;;
  }

  measure: total_latitude {
    type: sum
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: total_longitude {
    type: sum
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_longitude {
    type: average
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_previous_purchases {
    value_format_name: decimal_1
    type: average
    sql: ${previous_purchases} ;;
  }

  measure: average_prior_spend {
    value_format_name: usd
    type: average
    sql: ${prior_spend} ;;
  }
}
