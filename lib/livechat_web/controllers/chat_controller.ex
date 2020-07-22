defmodule LivechatWeb.ChatController do
  use LivechatWeb, :controller

  @doc """
  take connection map and convert it into a websocket and pass it along to our
  LiveView logic
  """
  def index(conn, _params) do
    # args: 1-connection(map), 2-where we want to handle this connection (in our module LivechatWeb.Live.Index), 3-
    # https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.Controller.html#live_render/3

    # *we are taking the connection map and passing the pieces of it we want to our web-socket,
    # and the web-socket itself has a map attached to it called assigns_map
    Phoenix.LiveView.Controller.live_render(
      conn,
      LivechatWeb.Live.Index,
      session: %{}
    )
  end
end
