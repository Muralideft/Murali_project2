view: product {
  sql_table_name: dbo.Product ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: is_discontinued {
    type: string
    sql: ${TABLE}.IsDiscontinued ;;
  }

  dimension: package {
    type: string
    sql: ${TABLE}.Package ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SupplierId ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      product_name,
      supplier.id,
      supplier.company_name,
      supplier.contact_name,
      order_item.count
    ]
  }
}
