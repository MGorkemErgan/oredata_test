# The name of this view in Looker is "All National Matches All Features"
view: all_national_matches_all_features {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-sandbox.world_cup_101_dataset_west2.all_national_matches_all_features`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: neutral {
    type: yesno
    sql: ${TABLE}.neutral ;;
  }

  dimension: results {
    type: string
    sql: ${TABLE}.results ;;
  }

  dimension: t1_in_tournament_draw {
    type: number
    sql: ${TABLE}.t1_in_tournament_draw ;;
  }

  dimension: t1_in_tournament_lose {
    type: number
    sql: ${TABLE}.t1_in_tournament_lose ;;
  }

  dimension: t1_in_tournament_match_number {
    type: number
    sql: ${TABLE}.t1_in_tournament_match_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_t1_in_tournament_match_number {
    type: sum
    sql: ${t1_in_tournament_match_number} ;;
  }

  measure: average_t1_in_tournament_match_number {
    type: average
    sql: ${t1_in_tournament_match_number} ;;
  }

  dimension: t1_in_tournament_score {
    type: number
    sql: ${TABLE}.t1_in_tournament_score ;;
  }

  dimension: t1_in_tournament_score_against {
    type: number
    sql: ${TABLE}.t1_in_tournament_score_against ;;
  }

  dimension: t1_in_tournament_win {
    type: number
    sql: ${TABLE}.t1_in_tournament_win ;;
  }

  dimension: t1_score {
    type: number
    sql: ${TABLE}.t1_score ;;
  }

  dimension: t1_total_draw {
    type: number
    sql: ${TABLE}.t1_total_draw ;;
  }

  dimension: t1_total_lose {
    type: number
    sql: ${TABLE}.t1_total_lose ;;
  }

  dimension: t1_total_match_number {
    type: number
    sql: ${TABLE}.t1_total_match_number ;;
  }

  dimension: t1_total_score {
    type: number
    sql: ${TABLE}.t1_total_score ;;
  }

  dimension: t1_total_score_against {
    type: number
    sql: ${TABLE}.t1_total_score_against ;;
  }

  dimension: t1_total_win {
    type: number
    sql: ${TABLE}.t1_total_win ;;
  }

  dimension: t1_tournament_draw {
    type: number
    sql: ${TABLE}.t1_tournament_draw ;;
  }

  dimension: t1_tournament_lose {
    type: number
    sql: ${TABLE}.t1_tournament_lose ;;
  }

  dimension: t1_tournament_match_number {
    type: number
    sql: ${TABLE}.t1_tournament_match_number ;;
  }

  dimension: t1_tournament_score {
    type: number
    sql: ${TABLE}.t1_tournament_score ;;
  }

  dimension: t1_tournament_score_against {
    type: number
    sql: ${TABLE}.t1_tournament_score_against ;;
  }

  dimension: t1_tournament_win {
    type: number
    sql: ${TABLE}.t1_tournament_win ;;
  }

  dimension: t2_in_tournament_draw {
    type: number
    sql: ${TABLE}.t2_in_tournament_draw ;;
  }

  dimension: t2_in_tournament_lose {
    type: number
    sql: ${TABLE}.t2_in_tournament_lose ;;
  }

  dimension: t2_in_tournament_match_number {
    type: number
    sql: ${TABLE}.t2_in_tournament_match_number ;;
  }

  dimension: t2_in_tournament_score {
    type: number
    sql: ${TABLE}.t2_in_tournament_score ;;
  }

  dimension: t2_in_tournament_score_against {
    type: number
    sql: ${TABLE}.t2_in_tournament_score_against ;;
  }

  dimension: t2_in_tournament_win {
    type: number
    sql: ${TABLE}.t2_in_tournament_win ;;
  }

  dimension: t2_score {
    type: number
    sql: ${TABLE}.t2_score ;;
  }

  dimension: t2_total_draw {
    type: number
    sql: ${TABLE}.t2_total_draw ;;
  }

  dimension: t2_total_lose {
    type: number
    sql: ${TABLE}.t2_total_lose ;;
  }

  dimension: t2_total_match_number {
    type: number
    sql: ${TABLE}.t2_total_match_number ;;
  }

  dimension: t2_total_score {
    type: number
    sql: ${TABLE}.t2_total_score ;;
  }

  dimension: t2_total_score_against {
    type: number
    sql: ${TABLE}.t2_total_score_against ;;
  }

  dimension: t2_total_win {
    type: number
    sql: ${TABLE}.t2_total_win ;;
  }

  dimension: t2_tournament_draw {
    type: number
    sql: ${TABLE}.t2_tournament_draw ;;
  }

  dimension: t2_tournament_lose {
    type: number
    sql: ${TABLE}.t2_tournament_lose ;;
  }

  dimension: t2_tournament_match_number {
    type: number
    sql: ${TABLE}.t2_tournament_match_number ;;
  }

  dimension: t2_tournament_score {
    type: number
    sql: ${TABLE}.t2_tournament_score ;;
  }

  dimension: t2_tournament_score_against {
    type: number
    sql: ${TABLE}.t2_tournament_score_against ;;
  }

  dimension: t2_tournament_win {
    type: number
    sql: ${TABLE}.t2_tournament_win ;;
  }

  dimension: team1 {
    type: string
    sql: ${TABLE}.team1 ;;
  }

  dimension: team2 {
    type: string
    sql: ${TABLE}.team2 ;;
  }

  dimension: tournament {
    type: string
    sql: ${TABLE}.tournament ;;
  }

  dimension: tournament_date {
    type: string
    sql: ${TABLE}.tournament_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
