defmodule ElixirDrip.Storage.Provider do
  @moduledoc false

  @target Application.get_env(:elixir_drip, :storage_provider)

  def upload(path, content), do: @target.upload(path, content)
  def download(path), do: @target.download(path)
end
