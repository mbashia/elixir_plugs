# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirPlugs.Repo.insert!(%ElixirPlugs.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias ElixirPlugs.Accounts
alias ElixirPlugs.Posts

user_list = [
  %{email: "admin@gmail.com", password: "password1", role: "admin"},
  %{email: "user2@example.com", password: "password2", role: "user"},
  %{email: "user3@example.com", password: "password3", role: "user"},
  %{email: "user4@example.com", password: "password4", role: "user"},
  %{email: "user5@example.com", password: "password5", role: "user"},
  %{email: "user6@example.com", password: "password6", role: "user"},
  %{email: "user7@example.com", password: "password7", role: "user"},
  %{email: "user8@example.com", password: "password8", role: "user"},
  %{email: "user9@example.com", password: "password9", role: "user"},
  %{email: "user10@example.com", password: "password10", role: "user"}
]

Enum.map(user_list, fn user ->
  IO.inspect(Accounts.register_user(user))
end)

posts = [
  %{body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", title: "Post 1"},
  %{body: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", title: "Post 2"},
  %{
    body:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    title: "Post 3"
  },
  %{
    body:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    title: "Post 4"
  },
  %{
    body:
      "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Post 5"
  },
  %{body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", title: "Post 6"},
  %{body: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", title: "Post 7"},
  %{
    body:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    title: "Post 8"
  },
  %{
    body:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    title: "Post 9"
  },
  %{
    body:
      "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Post 10"
  },
  %{body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", title: "Post 11"},
  %{body: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", title: "Post 12"},
  %{
    body:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    title: "Post 13"
  },
  %{
    body:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    title: "Post 14"
  },
  %{
    body:
      "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Post 15"
  }
]

Enum.map(posts, fn post ->
  IO.inspect(Posts.create_post(post))
end)
