defmodule Porcelain.App do
  @moduledoc false

  use Application

  def start(_, _) do
    opts = [strategy: :one_for_one, name: Porcelain.Supervisor]
    Porcelain.Supervisor.start_link([])
  end
end
