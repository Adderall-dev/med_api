defmodule MedApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MedApiWeb.Schema.Types

  import_types(Types.UserType)
  import_types(Types.SessionType)
end
