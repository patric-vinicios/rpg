defmodule Api.Providers.Hash.Argon2 do
  @moduledoc """
      Provider to handle with passwords
  """

  @behaviour Api.Providers.Hash.Behaviour

  def hash_password(password), do: Argon2.hash_pwd_salt(password)

  def verify_password(plain_password, hashed_password),
    do: Argon2.verify_pass(plain_password, hashed_password)
end
