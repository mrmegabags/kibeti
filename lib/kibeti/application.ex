defmodule Kibeti.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      KibetiWeb.Telemetry,
      Kibeti.Repo,
      {DNSCluster, query: Application.get_env(:kibeti, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Kibeti.PubSub},
      # Start a worker by calling: Kibeti.Worker.start_link(arg)
      # {Kibeti.Worker, arg},
      # Start to serve requests, typically the last entry
      KibetiWeb.Endpoint,
      {AshAuthentication.Supervisor, [otp_app: :kibeti]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Kibeti.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    KibetiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
