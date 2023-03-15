defmodule CounterWeb.CountController do
  use CounterWeb, :controller

  def count(conn, _params) do
    render(conn, "count.html")
  end
end
