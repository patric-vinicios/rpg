defmodule Api.Users.UserTest do
  @moduledoc false
  use Api.DataCase, async: true
  alias Api.Users.User

  @moduletag :unit

  describe "users" do
    setup do
      params = %{
        username: "master_user",
        email: "master_user@master.com",
        password_hash: "123456",
        role: "admin"
      }

      %{params: params}
    end

    test "should return a valid changeset if all params are valid", %{params: params} do
      assert %Ecto.Changeset{valid?: true} = User.changeset(params)
    end

    for field <- [:username, :email, :password_hash] do
      test "should return an invalid changeset if #{field} is missing", %{params: params} do
        assert %Ecto.Changeset{valid?: false} =
                 params
                 |> Map.drop([unquote(field)])
                 |> User.changeset()
      end
    end

    test "should return an invalid changeset if email is not valid", %{params: params} do
      invalid_email = "invalid_email@com"

      assert %Ecto.Changeset{valid?: false} =
               params
               |> Map.put(:email, invalid_email)
               |> User.changeset()
    end
  end
end
