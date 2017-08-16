connection: "athena_db_j"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: instances {
  join: cpu_usage {
    type: left_outer
    sql_on: ${instances.id} = ${cpu_usage.id} ;;
    relationship: one_to_many
  }

  join: bytes_read_in {
    type: left_outer
    sql_on: ${instances.id} = ${bytes_read_in.instance_id} ;;
    relationship: one_to_many
  }

  join: incoming_bytes {
    type: left_outer
    sql_on: ${instances.id} = ${incoming_bytes.instance_id} ;;
    relationship: one_to_many
  }

  join: outgoing_bytes {
    type: left_outer
    sql_on: ${instances.id} = ${outgoing_bytes.instance_id} ;;
    relationship: one_to_many
  }

  join: packets_in {
    type: left_outer
    sql_on: ${instances.id} = ${packets_in.instance_id} ;;
    relationship: one_to_many
  }

  join: packets_out {
    type: left_outer
    sql_on: ${instances.id} = ${packets_out.instance_id} ;;
    relationship: one_to_many
  }

  join: remaining_cpu_credit {
    type: left_outer
    sql_on: ${instances.id} = ${remaining_cpu_credit.instance_id} ;;
    relationship: one_to_many
  }
}
