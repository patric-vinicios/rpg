defmodule Api.Providers.Hash.Behaviour do
  @moduledoc """
      Behaviour where should define funtions
  """
  @callback hash_password(String.t()) :: String.t()
  @callback verify_password(String.t(), String.t()) :: String.t()
end
