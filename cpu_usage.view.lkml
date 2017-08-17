view: cpu_usage {
  sql_table_name: cloudwatchdata.cpu_usage ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: cpu_usage {
    type: number
    sql: ${TABLE}.cpu_usage ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
    hidden: yes
  }

  dimension: instance_id {
    type: number
    sql: ${TABLE}.instance_id ;;
    hidden: yes
  }

  dimension_group: cpu_time {
    type: time
    timeframes: [year, month, date, time]
    sql: ${TABLE}."time" ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    hidden: yes
  }

  measure: total_cpu_usage {
    type: sum
    sql: ${TABLE}.cpu_usage ;;
  }

  measure: average_cpu_usage {
    type: average
    sql: ${cpu_usage} ;;
  }
}
