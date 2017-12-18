defmodule Porcelain.Supervisor do
  @moduledoc false

  use Supervisor

  def start_link(_) do
    GenServer.start_link(__MODULE__, name: __MODULE__)
  end

  ## Callbacks

  def init(porcelain) do
    case Porcelain.Init.init() do
      :ok -> {:ok, porcelain}
      other -> other
    end
  end
end
