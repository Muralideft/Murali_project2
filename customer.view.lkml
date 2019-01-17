view: customer {
  sql_table_name: dbo.Customer ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, order.count]
  }
}
