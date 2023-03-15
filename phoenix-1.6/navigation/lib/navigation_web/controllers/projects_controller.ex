defmodule NavigationWeb.ProjectsController do
  use NavigationWeb, :controller
  
  def projects(conn, _params) do
    render(conn, "projects.html")
  end
end
