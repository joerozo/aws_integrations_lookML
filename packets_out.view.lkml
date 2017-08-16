view: packets_out {
  sql_table_name: cloudwatchdata.packets_out ;;
  suggestions: no

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: id_ {
    type: number
    sql: ${TABLE}."id " ;;
  }

  dimension: instance_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instance_id ;;
  }

  dimension: packets_out {
    type: number
    sql: ${TABLE}.packets_out ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [instances.id, instances.name]
  }
}
