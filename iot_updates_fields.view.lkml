view: iot_updates_fields {
  sql_table_name: inboard.iot_updates_fields ;;
  suggestions: no

  dimension: batterylevel {
    type: number
    sql: ${TABLE}.batterylevel ;;
  }

  dimension: bleconnected {
    type: yesno
    sql: ${TABLE}.bleconnected ;;
  }

  dimension: cloudconnected {
    type: yesno
    sql: ${TABLE}.cloudconnected ;;
  }

  dimension_group: datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.datetime ;;
  }

  dimension: firmware {
    type: number
    sql: ${TABLE}.firmware ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: serial {
    type: number
    sql: ${TABLE}.serial ;;
  }

  dimension: thingname {
    type: string
    sql: ${TABLE}.thingname ;;
  }

  measure: count {
    type: count
    drill_fields: [thingname]
  }
}
