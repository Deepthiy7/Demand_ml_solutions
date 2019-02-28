view: second_max_month {
  derived_table: {
    sql: SELECT
      CAST(CAST(sku_data.DATE  AS TIMESTAMP) AS DATE) AS date,
      FORMAT_TIMESTAMP('%m', CAST(sku_data.DATE  AS TIMESTAMP)) AS month,
      FORMAT_TIMESTAMP('%Y', CAST(sku_data.DATE  AS TIMESTAMP)) AS year,
      sku_data.product_family  AS product_family,
      sku_data.upc_code  AS upc_code,
        COALESCE(SUM(sku_data.ACTUAL ), 0) AS actual,
        COALESCE(SUM(sku_data.FORECAST ), 0) AS predicted
      FROM demand_forecast.sku_data  AS sku_data
      WHERE
      FORMAT_TIMESTAMP('%Y', CAST(sku_data.DATE  AS TIMESTAMP)) = (SELECT MAX(FORMAT_TIMESTAMP('%Y', CAST(sku_data.DATE  AS TIMESTAMP)))  FROM  demand_forecast.sku_data ) AND
      CAST(FORMAT_TIMESTAMP('%m', CAST(sku_data.DATE  AS TIMESTAMP))  AS NUMERIC) = (SELECT MAX(CAST(FORMAT_TIMESTAMP('%m', CAST(sku_data.DATE  AS TIMESTAMP)) AS NUMERIC)) - 1 FROM  demand_forecast.sku_data )
      GROUP BY 1,2,3,4,5
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    sql: ${TABLE}.date ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.product_family ;;
  }

  dimension: upc_code {
    type: number
    sql: ${TABLE}.upc_code ;;
  }

  measure: actual {
    type: sum
    sql: ${TABLE}.actual ;;
  }

  measure: predicted {
    type: sum
    sql: ${TABLE}.predicted ;;
  }

  set: detail {
    fields: [
      date,
      month,
      year,
      product_family,
      upc_code,
      actual,
      predicted
    ]
  }
}
