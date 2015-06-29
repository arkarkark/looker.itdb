- connection: arkitunes

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: playlist_stats
  joins:
    - join: playlists
      foreign_key: playlist_id


- explore: playlist_tracks
  joins:
    - join: playlists
      foreign_key: playlist_id

    - join: tracks
      foreign_key: track_id


- explore: playlists

- explore: tracks

