Certainly! Here's an updated version of your README file with the additional instructions:

---

# ElixirPlugs

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * **Run seed data:** Seed your database with sample data by running `mix ecto.seed`.

  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`()

Now you can visit [`localhost:4000`](http://localhost:4000/posts) from your browser.

---

### Note on User Roles:

After starting the server and accessing the browser:

- **Login with the following user account:**
  ```elixir
  %{email: "user2@example.com", password: "password2", role: "user"}
  ```
  Try accessing the route `/admin/dashboard`. You'll encounter an error indicating that you do not have permission to access this page.

- **Login with the following admin account:**
  ```elixir
  %{email: "admin@gmail.com", password: "password1", role: "admin"}
  ```
  Accessing `/admin/dashboard` with this account will allow you to proceed without any access restrictions.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

---

This updated README provides clear instructions on how to run the seed data, and it outlines the difference in access permissions based on user roles when accessing the `/admin/dashboard` route. Adjust the URLs and paths as needed based on your actual application configuration.