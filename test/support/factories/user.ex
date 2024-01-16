defmodule Api.Factories.User do
  @moduledoc false

  use ExMachina.Ecto, repo: Api.Repo

  alias Api.Users.User

  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %User{
          username: "master_user",
          email: "master_user@master.com",
          password_hash: "123456",
          role: :admin
        }
      end
    end
  end
end
