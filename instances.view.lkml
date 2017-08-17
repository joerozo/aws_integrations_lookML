view: instances {
  sql_table_name: cloudwatchdata.instances ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: name {
    label: "EC2 Instance"
    type: string
    sql: ${TABLE}.name ;;
    tags: ["aws_resource_id"]
  }

  measure: instances_count {
    type: number
    sql:  COUNT(DISTINCT(${id})) ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  # ----- Sets of fields for drilling ------
#   set: detail {
#     fields: [
#       id,
#       name,
#       bytes_read_in.count,
#       cpu_usage.count,
#       incoming_bytes.count,
#       outgoing_bytes.count,
#       packets_in.count,
#       packets_out.count,
#       remaining_cpu_credit.count
#     ]
#   }
}
