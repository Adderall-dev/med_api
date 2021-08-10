defmodule MedApiWeb.Resolvers.UserResolver do
  alias MedApi.Accounts
  def users(_,_,_) do
    {:ok, Accounts.list_users()}
  end
end
