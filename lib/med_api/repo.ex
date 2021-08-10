defmodule MedApi.Repo do
  use Ecto.Repo,
    otp_app: :med_api,
    adapter: Ecto.Adapters.Postgres
end
