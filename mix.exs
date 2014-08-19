defmodule Plug.Mixfile do
  use Mix.Project

  def project do
    [app: :plug,
     version: "0.6.0",
     elixir: "~> 0.15.0",
     deps: deps,
     package: package,
     description: "A specification and conveniences for composable " <>
                  "modules in between web applications",
     docs: [readme: true, main: "README"]]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:crypto, :logger],
     mod: {Plug, []}]
  end

  def deps do
    [{:cowboy, "~> 1.0.0", optional: true},
     {:earmark, "~> 0.1", only: :docs},
     {:ex_doc, "~> 0.5", only: :docs},
     {:hackney, "~> 0.13", only: :test}]
  end

  defp package do
    %{licenses: ["Apache 2"],
      links: %{"Github" => "https://github.com/elixir-lang/plug"}}
  end
end
