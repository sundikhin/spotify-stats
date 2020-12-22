defmodule SpotifyStats.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      SpotifyStats.Repo,
      # Start the Telemetry supervisor
      SpotifyStatsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SpotifyStats.PubSub},
      # Start the Endpoint (http/https)
      SpotifyStatsWeb.Endpoint
      # Start a worker by calling: SpotifyStats.Worker.start_link(arg)
      # {SpotifyStats.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SpotifyStats.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SpotifyStatsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
