defmodule Api.Providers.Hash.Faker do
  @moduledoc """
      Faker for provider.
  """
  @behaviour Api.Providers.Hash.Behaviour

  def hash_password(string), do: string
  def verify_password(plain_password, hashed_password), do: plain_password == hashed_password
end
