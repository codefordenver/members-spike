defmodule RealWorld.Repo do
  use Ecto.Repo, otp_app: :real_world

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """

#  def init(_, opts) do
#    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
#  end

  def init(_key, config) do
    if config[:load_from_system_env] do
      port = System.get_env("PORT") || raise "expected the PORT environment variable to be set"
      {:ok, Keyword.put(config, :http, [:inet6, port: port])}
    else
      {:ok, config}
    end
  end

end
