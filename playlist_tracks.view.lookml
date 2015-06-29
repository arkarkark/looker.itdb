- view: playlist_tracks
  fields:

  - dimension: playlist_id
    type: int
    # hidden: true
    sql: ${TABLE}.Playlist_ID

  - dimension: track_id
    type: int
    # hidden: true
    sql: ${TABLE}.Track_ID

  - dimension: user_id
    type: int
    sql: ${TABLE}.User_ID

  - measure: count
    type: count
    drill_fields: [playlists.name, playlists.playlist_id, tracks.track_id, tracks.name]

