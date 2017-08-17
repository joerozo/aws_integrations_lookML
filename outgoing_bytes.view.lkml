view: outgoing_bytes {
  sql_table_name: cloudwatchdata.outgoing_bytes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: bytes_out {
    label: "Outgoing Bytes"
    type: number
    sql: ${TABLE}.bytes_out ;;
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

  measure: total_outgoing_bytes {
    type: number
    sql: SUM(${bytes_out}) ;;
  }

  measure: average_outgoing_bytes {
    type: number
    sql: AVG(${bytes_out}) ;;
  }
}
