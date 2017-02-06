defmodule Chat.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chatters" do
    field :username, :string, size: 20
    field :tel, :string, size: 15
  end

	def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username, :tel])
    |> validate_required([:username, :tel])
  end
end
