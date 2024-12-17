defmodule StaccatoWeb.Router do
  use StaccatoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {StaccatoWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :hx_req
  end

  def hx_req(conn, _) do
    get_req_header(conn, "HX-Request") 
    |> List.first("false")
    |> then(&assign(conn, :hx_req, &1))
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StaccatoWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/hx-test", PageController, :hx_test
  end

  # Other scopes may use custom stacks.
  # scope "/api", StaccatoWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:staccato, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: StaccatoWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
