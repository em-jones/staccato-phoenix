# Phoenix + HTMX + Vite starter
- [Phoenix](https://www.phoenixframework.org/)
- [Htmx 1.x](https://htmx.org)
- [Svelte](https://svelte.dev/)
## Prerequisites
- [ ] Install Docker
  - [ ] [Mac](https://docs.docker.com/desktop/setup/install/mac-install/)
- [ ] Initialize project
  - [ ] Run `init.sh` script to install devbox + devbox dependencies
  > Devbox requires the Nix Package Manager. If Nix is not detected when running a command, Devbox will install it for you in single-user mode for Linux. Don't worry: You can use Devbox without needing to learn the Nix Language.

  > If you would like to install Nix yourself, we recommend the [Determinate Nix Installer](https://determinate.systems/posts/determinate-nix-installer/).
- [ ] Open in VsCode and install recommended extensions
## Getting Started
- [ ] Prerequisites completed
- [ ] Use `vscode` and open in devbox:
  - [ ] `Ctrl + Shift + P` > ``
- [ ] Start project with `task start` from the commandline/`Task` extension installed in vscode

## Learning
- [ ] [Phoenix](https://hexdocs.pm/phoenix)
  > NOTE: You can safely ignore the `Asset Management` portion of the guides
  - [ ] [Package Glossary](https://hexdocs.pm/phoenix/packages_glossary.html) - Gain high-level understanding of the packages common to phoenix
  - [ ] Guides
    - [ ] [Directory structure](https://hexdocs.pm/phoenix/directory_structure.html) 
      > NOTE: Assets are treated slightly differently in this project because we're using `bun` + `vite` + `tailwindcss` as our asset build pipeline
    - [ ] [Request Lifecycle](https://hexdocs.pm/phoenix/request_lifecycle.html)
    - [ ] [Plug](https://hexdocs.pm/phoenix/plug.html)
    - [ ] [Routing](https://hexdocs.pm/phoenix/routing.html) 
    - [ ] [Controllers](https://hexdocs.pm/phoenix/controllers.html)
    - [ ] [Components and Heex](https://hexdocs.pm/phoenix/components.html)
    - [ ] [Ecto](https://hexdocs.pm/phoenix/ecto.html) (Persistence)
    - [ ] [Contexts](https://hexdocs.pm/phoenix/contexts.html) (Business domain boundaries)
    - [ ] [JSON & APIs](https://hexdocs.pm/phoenix/json_and_apis.html)
      > NOTE - not used terribly often as we're relying on `LiveViews` and `HTMX` for our UI
    - [ ] [Testing](https://hexdocs.pm/phoenix/testing.html)
    - [ ] Extra Credit
      - [ ] [Telemetry](https://hexdocs.pm/phoenix/telemetry.html)
      - [ ] [Channels](https://hexdocs.pm/phoenix/channels.html)
    - [ ] [Distributed Job Server](https://hexdocs.pm/oban/Oban.html)
      - [ ] [Create a job](https://hexdocs.pm/oban/Oban.html#module-defining-workers)
      - [ ] [Add a Cron Job](https://hexdocs.pm/oban/Oban.Plugins.Cron.html#module-using-the-plugin)
    - [ ] [Mix Tasks](https://hexdocs.pm/phoenix/mix_tasks.html) (CLI Tooling)
- [ ] [Svelte](https://svelte.dev/tutorial/svelte/welcome-to-svelte)
- [ ] [HTMX](https://htmx.org/docs/) - Assignment - Learn how to route using HTMX instead of using phoenix full-page loads
### Phoenix Controllers Development
### Phoenix LiveView Development <!-- TODO: Add LiveView support -->


## Phoenix

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
