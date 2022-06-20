defmodule ElixirDrip.Storage.Providers.GoogleCloudStorageLocal do
  @behaviour ElixirDrip.Behaviours.StorageProvider

  require Logger

  def upload(path, content) do
    # Logger.debug("Uploading #{inspect(byte_size(content))} bytes to Google Cloud Storage, path: #{path}")
    Logger.debug(fn ->
      "Uploading #{inspect(byte_size(content))} bytes to Google Cloud Storage, path: #{path}"
    end)

    {:ok, :uploaded}
  end

  def download(path) do
    # Logger.debug("Downloading #{path} from Google Cloud Storage")
    Logger.debug(fn -> "Downloading #{path} from Google Cloud Storage" end)
    {:ok, "downloaded_content"}
  end
end
