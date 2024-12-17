defmodule Staccato.Repo do
  use Ecto.Repo,
    otp_app: :staccato,
    adapter: Ecto.Adapters.Postgres
end
