- view: playlists
  fields:

  - dimension: playlist_id
    primary_key: true
    type: int
    sql: ${TABLE}.Playlist_ID

  - dimension: name
    sql: ${TABLE}.Name

  - dimension: parent_persistent_id
    sql: ${TABLE}.Parent_Persistent_ID

  - dimension: playlist_persistent_id
    sql: ${TABLE}.Playlist_Persistent_ID

  - dimension: user_id
    type: int
    sql: ${TABLE}.User_ID

  - measure: count
    type: count
    drill_fields: [playlist_id, name, playlist_stats.count, playlist_tracks.count]

