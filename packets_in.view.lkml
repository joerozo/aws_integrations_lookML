view: packets_in {
  sql_table_name: cloudwatchdata.packets_in ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
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

  dimension: packets_in {
    label: "Incoming Number of Packets"
    type: number
    sql: ${TABLE}.packets_in ;;
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

  measure: total_number_of_incoming_packets {
    type: number
    sql: SUM(${packets_in}) ;;
  }

  measure: average_number_of_incoming_packets {
    type: number
    sql: AVG(${packets_in}) ;;
  }
}
