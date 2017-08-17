view: incoming_bytes {
  sql_table_name: cloudwatchdata.incoming_bytes ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: bytes_in {
    label: "Incoming Bytes"
    type: number
    sql: ${TABLE}.bytes_in ;;
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

  measure: count {
    type: count
    drill_fields: [id, instances.id, instances.name]
    hidden: yes
  }

  measure: total_incoming_bytes {
    type: number
    sql: SUM(${bytes_in}) ;;
  }

  measure: average_incoming_bytes {
    type: number
    sql: AVG(${bytes_in}) ;;
  }

}
