- view: tracks
  fields:

  - dimension: track_id
    primary_key: true
    type: int
    sql: ${TABLE}.Track_ID

  - dimension: album
    sql: ${TABLE}.Album

  - dimension: artist
    sql: ${TABLE}.Artist

  - dimension: artwork_count
    type: int
    sql: ${TABLE}.Artwork_Count

  - dimension: bit_rate
    type: int
    sql: ${TABLE}.Bit_Rate

  - dimension_group: date_added
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Date_Added

  - dimension_group: date_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Date_Modified

  - dimension: disc_count
    type: int
    sql: ${TABLE}.Disc_Count

  - dimension: disc_number
    type: int
    sql: ${TABLE}.Disc_Number

  - dimension: file_creator
    type: int
    sql: ${TABLE}.File_Creator

  - dimension: file_folder_count
    type: int
    sql: ${TABLE}.File_Folder_Count

  - dimension: file_type
    type: int
    sql: ${TABLE}.File_Type

  - dimension: genre
    sql: ${TABLE}.Genre

  - dimension: kind
    sql: ${TABLE}.Kind

  - dimension: library_folder_count
    type: int
    sql: ${TABLE}.Library_Folder_Count

  - dimension: location
    sql: ${TABLE}.Location

  - dimension: name
    sql: ${TABLE}.Name

  - dimension: persistent_id
    sql: ${TABLE}.Persistent_ID

  - dimension: play_count
    type: int
    sql: ${TABLE}.Play_Count

  - dimension_group: play_date_utc
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Play_Date_UTC

  - dimension: rating
    type: int
    sql: ${TABLE}.Rating

  - dimension: sample_rate
    type: int
    sql: ${TABLE}.Sample_Rate

  - dimension: season
    type: int
    sql: ${TABLE}.Season

  - dimension: size
    type: int
    sql: ${TABLE}.Size

  - dimension: skip_count
    type: int
    sql: ${TABLE}.Skip_Count

  - dimension_group: skip
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Skip_Date

  - dimension: total_time
    type: int
    sql: ${TABLE}.Total_Time

  - dimension: track_count
    type: int
    sql: ${TABLE}.Track_Count

  - dimension: track_number
    type: int
    sql: ${TABLE}.Track_Number

  - dimension: track_type
    sql: ${TABLE}.Track_Type

  - dimension: user_id
    type: int
    sql: ${TABLE}.User_ID

  - dimension: year
    type: int
    sql: ${TABLE}.Year

  - measure: count
    type: count
    drill_fields: [track_id, name, playlist_tracks.count]

