# phoenix_template_01
## Phoenix w/standard brunch + bootstrap configuration
## for Heroku

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Heroku Steps:
 * heroku create --buildpack "https://github.com/HashNuke/heroku-buildpack-elixir.git"
 * heroku buildpacks:add https://github.com/gjaldon/heroku-buildpack-phoenix-static.git
 * add url to config/prod.exs:
 * heroku addons:create heroku-postgresql:hobby-dev
 * heroku config:set POOL_SIZE=18
 * heroku run "POOL_SIZE=2 mix hello_phoenix.task"
 * mix phoenix.gen.secret
 * heroku config:set SECRET_KEY_BASE="[phoenix gen secret]"
 * ga . && gcm "heroku" && git push heroku master

DNS:
 * Once DNS is set from the registrar, change the config/url line in config/prod.exs

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
