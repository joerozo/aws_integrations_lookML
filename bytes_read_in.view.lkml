view: bytes_read_in {
  sql_table_name: cloudwatchdata.bytes_read_in ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: bytes_read_in {
    type: number
    sql: ${TABLE}.bytes_read_in ;;
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
  }

  measure: total_bytes_read_in {
    type: number
    sql: SUM(${bytes_read_in}) ;;
  }

  measure: average_bytes_read_in {
    type: number
    sql: AVG(${bytes_read_in}) ;;
  }
}
