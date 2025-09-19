defmodule Kibeti.Secrets do
  use AshAuthentication.Secret

  def secret_for(
        [:authentication, :tokens, :signing_secret],
        Kibeti.Accounts.User,
        _opts,
        _context
      ) do
    Application.fetch_env(:kibeti, :token_signing_secret)
  end
end
