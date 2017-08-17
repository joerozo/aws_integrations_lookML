view: packets_out {
  sql_table_name: cloudwatchdata.packets_out ;;

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
    hidden: yes
  }

  dimension: id_ {
    type: number
    sql: ${TABLE}."id " ;;
    hidden: yes
  }

  dimension: instance_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.instance_id ;;
    hidden: yes
  }

  dimension: packets_out {
    label: "Outgoing Number of Packets"
    type: number
    sql: ${TABLE}.packets_out ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    hidden: yes
  }

  measure: total_number_of_outgoing_packets {
    type: number
    sql: SUM(${packets_out}) ;;
  }

  measure: average_number_of_outgoing_packets {
    type: number
    sql: AVG(${packets_out}) ;;
  }
}
