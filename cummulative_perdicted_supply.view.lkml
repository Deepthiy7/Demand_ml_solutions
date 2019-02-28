view: cummulative_predicted_supply {
  derived_table: {
    sql: SELECT
        DATE,
        UPC_CODE,
        SKU ,
        PRODUCT_FAMILY,
        FORECAST,
        ACTUAL,
        INVENTORY_STOCK,
        ETA_FOR_GOODS,
        CASE
        WHEN ACTUAL is NULL THEN ABS((INVENTORY_STOCK + ETA_FOR_GOODS) - COALESCE(ACTUAL,FORECAST))
        ELSE 0
      END as cumulative_predictive_supply
      FROM demand_forecast.sku_data  AS sku_data

      GROUP BY 1,2,3,4,5,6,7,8
      ORDER BY 1
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  dimension: upc_code {
    type: number
    sql: ${TABLE}.UPC_CODE ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }
    measure: forecast {
    type: sum
    sql: ${TABLE}.FORECAST ;;
  }

  measure: actual {
    type: sum
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension: inventory_stock {
    type: number
    sql: ${TABLE}.INVENTORY_STOCK ;;
  }

  dimension: eta_for_goods {
    type: number
    sql: ${TABLE}.ETA_FOR_GOODS ;;
  }

  dimension: cumulative_predictive_supply {
    type: number
    sql: ${TABLE}.cumulative_predictive_supply ;;
  }

  set: detail {
    fields: [
      date,
      upc_code,
      sku,
      product_family,
      forecast,
      actual,
      inventory_stock,
      eta_for_goods,
      cumulative_predictive_supply
    ]
  }
}
