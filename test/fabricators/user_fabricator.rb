Fabricator(:user) do
  login    'user'
  email    'user@example.com'
  password 'secret'
  password_confirmation 'secret'
end
