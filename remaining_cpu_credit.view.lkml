view: remaining_cpu_credit {
  sql_table_name: cloudwatchdata.remaining_cpu_credit ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: cpu_credit {
    label: "Remaining CPU Credit Balance"
    type: number
    sql: ${TABLE}.cpu_credit ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
    hidden: yes
  }

  dimension: instance_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instance_id ;;
    hidden: yes
  }

  dimension: time_ {
    type: string
    sql: ${TABLE}."time " ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    hidden: yes
  }

  measure: total_remaining_cpu_credit {
    type: number
    sql: SUM(${cpu_credit}) ;;
  }

  measure: average_remaining_cpu_credit {
    type: number
    sql: AVG(${cpu_credit}) ;;
  }
}
