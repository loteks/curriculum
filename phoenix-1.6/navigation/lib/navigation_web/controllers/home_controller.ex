defmodule NavigationWeb.HomeController do
  use NavigationWeb, :controller
  
  def home(conn, _params) do
    render(conn, "home.html")
  end
end
