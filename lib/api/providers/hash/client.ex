defmodule Api.Providers.Hash.Client do
  @moduledoc """
      Main file to use provider
  """

  @behaviour Api.Providers.Hash.Behaviour

  def hash_password(string), do: hash_lib().hash_password(string)

  def verify_password(plain_password, hashed_password),
    do: hash_lib().verify_password(plain_password, hashed_password)

  defp hash_lib, do: Application.get_env(:api, :hash_lib)
end
