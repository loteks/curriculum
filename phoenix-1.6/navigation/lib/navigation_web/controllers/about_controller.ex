defmodule NavigationWeb.AboutController do
  use NavigationWeb, :controller

  def about(conn, _params) do
    render(conn, "about.html")
  end
end
