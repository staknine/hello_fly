defmodule HelloFlyWeb.PageController do
  use HelloFlyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
