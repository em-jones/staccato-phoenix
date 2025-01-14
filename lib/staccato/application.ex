defmodule Staccato.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      StaccatoWeb.Telemetry,
      Staccato.Repo,
      {Oban, Application.fetch_env!(:staccato, Oban)},
      {DNSCluster, query: Application.get_env(:staccato, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Staccato.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Staccato.Finch},
      # Start a worker by calling: Staccato.Worker.start_link(arg)
      # {Staccato.Worker, arg},
      # Start to serve requests, typically the last entry
      StaccatoWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Staccato.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    StaccatoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
