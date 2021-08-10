defmodule MedApiWeb.Schema do
  use Absinthe.Schema

  alias MedApiWeb.Resolvers
  # import types
  import_types(MedApiWeb.Schema.Types)

  query do

    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      #resolver
      resolve(&Resolvers.UserResolver.users/3)
    end
  end
end
