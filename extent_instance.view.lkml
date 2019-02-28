view: extent_instance {
  derived_table: {
    sql: SELECT DATE,UPC_CODE,SKU,PRODUCT_FAMILY,FORECAST,ACTUAL_DERIVED AS ACTUAL,cummulative_predictive_supply,
        CASE
              WHEN cummulative_predictive_supply > (10 * ACTUAL_DERIVED)
              THEN 1
              ELSE 0
            END AS excess_instance_type
            FROM (SELECT
  DATE,
  UPC_CODE,
  SKU ,
  PRODUCT_FAMILY,
  FORECAST,
  ACTUAL,
  INVENTORY_STOCK,
  ETA_FOR_GOODS,
  CASE WHEN ACTUAL is NULL then 0 ELSE ACTUAL END AS ACTUAL_DERIVED,
  CASE
  WHEN ACTUAL is NULL THEN ABS((INVENTORY_STOCK + ETA_FOR_GOODS) - COALESCE(ACTUAL,FORECAST))
  ELSE 0
END as cummulative_predictive_supply
FROM demand_forecast.sku_data  AS sku_data
GROUP BY 1,2,3,4,5,6,7,8) AS a
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

  dimension: cummulative_predictive_supply {
    type: number
    sql: ${TABLE}.cummulative_predictive_supply ;;
  }

  dimension: excess_instance_type {
    type: number
    sql: ${TABLE}.excess_instance_type ;;
  }

  set: detail {
    fields: [
      date,
      upc_code,
      sku,
      product_family,
      forecast,
      actual,
      cummulative_predictive_supply,
      excess_instance_type
    ]
  }
}
