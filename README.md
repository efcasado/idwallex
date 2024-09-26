# Idwallex

> [!NOTE] 
> This package was created with the [OpenAPI code generator](https://openapi-generator.tech/).


Elixir's client for [idwall's REST API](https://app-idwall.readme.io/reference/reference-overview).


## Building

To install the required dependencies and to build the elixir project, run:

```console
make build
```

## Installation

If [available in Hex][], the package can be installed by adding `idwallex` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:idwallex, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/idwallex][docs].


## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :idwallex, base_url: "https://api-v3.idwall.co/maestro"
config :idwallex, api_key: "<your-secret-api-key>"
```