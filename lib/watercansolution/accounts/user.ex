defmodule Watercansolution.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Watercansolution.Accounts.User


  schema "users" do
    field :aadhar_no, :integer
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :aadhar_no])
    |> validate_required([:username, :aadhar_no])
  end
end
