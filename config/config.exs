# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :spotify_stats,
  ecto_repos: [SpotifyStats.Repo]

# Configures the endpoint
config :spotify_stats, SpotifyStatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6SROhQ/yIB3Hs53wru51sC1B/grqsKtBmDUrGkbEXlzj8SlR9UMN5nT05PLU6fpz",
  render_errors: [view: SpotifyStatsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SpotifyStats.PubSub,
  live_view: [signing_salt: "PZkolj2y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
