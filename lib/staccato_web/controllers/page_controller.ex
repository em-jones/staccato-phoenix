defmodule StaccatoWeb.PageController do
  use StaccatoWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def hx_test(conn, _), do: text(conn, "HTMX Response")
end
