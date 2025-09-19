defmodule Kibeti.Accounts do
  use Ash.Domain, otp_app: :kibeti, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource Kibeti.Accounts.Token
    resource Kibeti.Accounts.User
  end
end
