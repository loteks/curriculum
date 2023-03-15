defmodule Counter do
  @moduledoc """
  Counter keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  use GenServer

  ##### CLIENT #####

  def start_link(opts) do
    GenServer.start_link(__MODULE__, opts)
  end

  def increment(pid) do
    GenServer.call(pid, :increment)
  end


  ##### SERVER #####

  @impl true
  def init(init_args) do
    {:ok, init_args}
  end

  @impl true
  def handle_call(:increment, _from, state) do
    response = state + 1
    {:reply, response, state}
  end

end
