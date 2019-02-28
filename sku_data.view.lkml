view: sku_data {
  sql_table_name: demand_forecast.sku_data ;;

  dimension: actual {
    type: number
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension: average_selling_price {
    type: number
    sql: ${TABLE}.AVERAGE_SELLING_PRICE ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: eta_for_goods {
    type: number
    sql: ${TABLE}.ETA_FOR_GOODS ;;
  }

  dimension: forecast {
    type: number
    sql: ${TABLE}.FORECAST ;;
  }

  dimension: inventory_stock {
    type: number
    sql: ${TABLE}.INVENTORY_STOCK ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.TOTAL_PRICE ;;
  }

  dimension: upc_code {
    type: number
    sql: ${TABLE}.UPC_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
