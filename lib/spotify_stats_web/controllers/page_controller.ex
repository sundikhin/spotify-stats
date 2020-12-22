defmodule SpotifyStatsWeb.PageController do
  use SpotifyStatsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
