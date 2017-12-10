defmodule Watercansolution.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :aadhar_no, :integer

      timestamps()
    end

  end
end
