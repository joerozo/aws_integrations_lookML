view: digitalocean_cpu {
  sql_table_name: "default".digitalocean_cpu
    ;;
  suggestions: no

  dimension: cpu_usage {
    type: number
    sql: ${TABLE}.cpu_usage ;;
  }

  dimension: droplet_id {
    type: number
    sql: ${TABLE}.droplet_id ;;
    tags: [ "digitalocean_droplet_id" ]
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
