defmodule HelloFly.Repo do
  use Ecto.Repo,
    otp_app: :hello_fly,
    adapter: Ecto.Adapters.Postgres
end
