# Temple.Phoenix

[Phoenix](https://github.com/phoenixframework/phoenix) integration for [Temple](https://github.com/mhanberg/temple).

## Installation

```elixir
def deps do
  [
    {:temple_phoenix, "~> 0.1.0-rc.0"}
  ]
end
```

<!-- MDOC !-->

This package provides

- Phoenix template engine for Phoenix views and co-located LiveView templates.

## Phoenix template engine

The Temple.Phoenix.Engine module makes it possible to use Temple with Phoenix controllers and LiveViews.

To get started, you will configure Phoenix to use this module for `.exs` files and configure Temple to
use the appropriate EEx engine..

```elixir
# config.exs
config :phoenix, :template_engines,
  # this will work for files named like `index.html.exs`
  exs: Temple.Phoenix.Engine

config :temple,
  engine: Phoenix.HTML.Engine # or Phoenix.LiveView.Engine

# config/dev.exs
config :your_app, YourAppWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"lib/myapp_web/(live|views)/.*(ex|exs)$",
      ~r"lib/myapp_web/templates/.*(eex|exs)$"
    ]
  ]

# my_app/
#   lib/
#     my_app/
#     my_app_web/
#       templates/
#         posts/
#           show.html.exs
#       live/
#         posts_live/
#           show.ex
#           show.html.exs
```

Now you can get started by writing `exs` files in the templates directory and they will be compiled as you would expect.
