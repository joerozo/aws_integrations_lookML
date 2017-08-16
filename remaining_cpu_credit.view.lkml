view: remaining_cpu_credit {
  sql_table_name: cloudwatchdata.remaining_cpu_credit ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cpu_credit {
    type: number
    sql: ${TABLE}.cpu_credit ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: instance_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instance_id ;;
  }

  dimension: time_ {
    type: string
    sql: ${TABLE}."time " ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instances.id, instances.name]
  }
}
