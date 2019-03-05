view: iot_data {
  derived_table: {
    sql: select * from IOT_solutions.iot_data
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: room_temp {
    type: number
    sql: ${TABLE}.room_temp ;;
  }

  dimension: room_humidity {
    type: number
    sql: ${TABLE}.room_humidity ;;
  }

  dimension: required_temp {
    type: number
    sql: ${TABLE}.required_temp ;;
  }

  dimension: current_temp {
    type: number
    sql: ${TABLE}.current_temp ;;
  }

  dimension_group: time {
    type: time
    sql: ${TABLE}.time ;;
  }

  dimension: diff_of_room_to_req {
    type: number
    sql: ${TABLE}.diff_of_room_to_req ;;
  }

  dimension: dew_point {
    type: number
    sql: ${TABLE}.dew_point ;;
  }

  dimension: diff_dewpoint_to_current_temp {
    type: number
    sql: ${TABLE}.diff_dewpoint_to_currentTemp ;;
  }

  dimension: diff_of_curr_to_req {
    type: number
    sql: ${TABLE}.diff_of_curr_to_req ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }

  dimension: cooler_status {
    type: number
    sql: ${TABLE}.cooler_status ;;
  }

  dimension: predicted {
    type: string
    sql: ${TABLE}.Predicted ;;
  }

  set: detail {
    fields: [
      room_temp,
      room_humidity,
      required_temp,
      current_temp,
      time_time,
      diff_of_room_to_req,
      dew_point,
      diff_dewpoint_to_current_temp,
      diff_of_curr_to_req,
      seconds,
      cooler_status,
      predicted
    ]
  }
}
