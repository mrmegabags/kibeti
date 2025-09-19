defmodule KibetiWeb.PageController do
  use KibetiWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
