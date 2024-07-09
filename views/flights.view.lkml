view: flights {
  sql_table_name: demo_db.flights ;;

  dimension: arr_delay {
    type: number
    sql: ${TABLE}.arr_delay ;;
  }
  dimension_group: arr {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arr_time ;;
  }
  dimension: cancelled {
    type: string
    sql: ${TABLE}.cancelled ;;
  }
  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }
  dimension: dep_delay {
    type: number
    sql: ${TABLE}.dep_delay ;;
  }
  dimension_group: dep {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dep_time ;;
  }
  dimension: destination {
    type: string
    sql: ${TABLE}.destination ;;
  }
  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }
  dimension: diverted {
    type: string
    sql: ${TABLE}.diverted ;;
  }
  dimension: flight_num {
    type: string
    sql: ${TABLE}.flight_num ;;
  }
  dimension: flight_time {
    type: number
    sql: ${TABLE}.flight_time ;;
  }
  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }
  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
  dimension: tail_num {
    type: string
    sql: ${TABLE}.tail_num ;;
  }
  dimension: taxi_in {
    type: number
    sql: ${TABLE}.taxi_in ;;
  }
  dimension: taxi_out {
    type: number
    sql: ${TABLE}.taxi_out ;;
  }
   parameter: period_range {
    label: "2: Number of Previous Periods"
    description: "Required for Period over Period. Select how many previous periods to visualize."
    type: number
    default_value: "4"
    allowed_value:{label: "0" value: "0"}
    allowed_value:{label: "1" value: "1"}
    allowed_value:{label: "2" value: "2"}
    allowed_value:{label: "3" value: "3"}
    allowed_value:{label: "4" value: "4"}
    allowed_value:{label: "5" value: "5"}
    allowed_value:{label: "6" value: "6"}
    allowed_value:{label: "7" value: "7"}
    allowed_value:{label: "8" value: "8"}
    allowed_value:{label: "9" value: "9"}
    allowed_value:{label: "10" value: "10"}
    allowed_value:{label: "11" value: "11"}
    allowed_value:{label: "12" value: "12"}
  }
  measure: count {
    type: count
  }
}
