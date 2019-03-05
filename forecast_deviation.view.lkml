view: forecast_deviation {
  derived_table: {
    sql: SELECT PRODUCT_FAMILY,UPC_CODE,SKU,
        CASE
          WHEN
            (FORECAST > ACTUAL)
          THEN
            ROUND((FORECAST - ACTUAL)/NULLIF(ACTUAL, 0),2)
          ELSE
            ROUND((ACTUAL - FORECAST)/NULLIF(ACTUAL, 0),2)
          END  AS forecast_deviation
      FROM demand_forecast.sku_data
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }

  dimension: upc_code {
    type: number
    sql: ${TABLE}.UPC_CODE ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: forecast_deviation {
    type: number
    sql: ${TABLE}.forecast_deviation ;;
  }

  set: detail {
    fields: [product_family, upc_code, sku, forecast_deviation]
  }
}
