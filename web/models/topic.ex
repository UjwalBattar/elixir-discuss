defmodule Discuss.Topic do
    use Discuss.Web, :model

    schema "topics" do
        field :title, :string
    end

    def changeSet(struct, params \\ %{}) do
        struct
        |> case(params, [:title])
        |> validate_required([:title])
    end
end