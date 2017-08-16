view: instances {
  sql_table_name: cloudwatchdata.instances ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      bytes_read_in.count,
      cpu_usage.count,
      incoming_bytes.count,
      outgoing_bytes.count,
      packets_in.count,
      packets_out.count,
      remaining_cpu_credit.count
    ]
  }
}
