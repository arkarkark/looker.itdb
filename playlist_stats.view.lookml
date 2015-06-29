- view: playlist_stats
  fields:

  - dimension: count
    type: int
    sql: ${TABLE}.Count

  - dimension: playlist_id
    type: int
    # hidden: true
    sql: ${TABLE}.Playlist_ID

  - dimension: rating
    type: int
    sql: ${TABLE}.Rating

  - dimension: user_id
    type: int
    sql: ${TABLE}.User_ID

  - measure: count_measure
    type: count
    drill_fields: [playlists.name, playlists.playlist_id]

