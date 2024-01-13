defmodule Api.Repo.Migrations.AddUsersMigration do
  @moduledoc false

  use Ecto.Migration
  import Ecto.SoftDelete.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :email, :string
      add :password_hash, :string
      add :role, :string

      timestamps()
      soft_delete_columns()
    end

    create unique_index(:users, [:email])
    create unique_index(:users, [:username])
  end
end
