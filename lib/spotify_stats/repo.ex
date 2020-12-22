defmodule SpotifyStats.Repo do
  use Ecto.Repo,
    otp_app: :spotify_stats,
    adapter: Ecto.Adapters.Postgres
end
