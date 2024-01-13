defmodule Api.Users.User do
  @moduledoc """
      User module to represent users table.
  """

  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.SoftDelete.Schema

  alias Api.Helpers.Validators
  alias Ecto.Enum

  @type t :: %__MODULE__{
          id: binary(),
          username: String.t(),
          email: String.t(),
          password_hash: String.t(),
          role: atom
        }

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @fields [:username, :email, :password_hash, :role]
  @required_fields @fields -- [:role]

  schema "users" do
    field :username, :string
    field :email, :string
    field :password_hash, :string
    field :role, Enum, values: [:admin, :mod, :player]

    timestamps()
    soft_delete_schema()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@required_fields)
    |> validate_format(:email, Validators.email())
    |> unique_constraint(:email)
  end
end
