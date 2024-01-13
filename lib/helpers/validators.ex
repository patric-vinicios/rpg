defmodule Api.Helpers.Validators do
  @moduledoc """
      Provides functions to validate fields
  """

  def email, do: ~r/^[A-Za-z0-9\._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$/
end
