view: iot_actual_vs_predicted {
  derived_table: {
    sql: SELECT required_temp,current_temp,time,cooler_status,
      CASE
          WHEN
            predicted = True
          THEN
            0
          ELSE
            1
      END AS predicted_value
      FROM IOT_solutions.iot_data
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: required_temp {
    type: sum
    sql: ${TABLE}.required_temp ;;
  }

  measure: current_temp {
    type: sum
    sql: ${TABLE}.current_temp ;;
  }

  dimension_group: time {
    type: time
    sql: ${TABLE}.time ;;
  }

  measure: cooler_status {
    type:sum
    sql: ${TABLE}.cooler_status ;;
  }

  measure: predicted_value {
    type: sum
    sql: ${TABLE}.predicted_value ;;
  }

  set: detail {
    fields: [required_temp, current_temp, time_time, cooler_status, predicted_value]
  }
}
