defmodule GooglePlayIcon.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_play_icon,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "GooglePlayIcon",
      source_url: "https://github.com/mithereal/ex_google_play_icon",
      description: "Icon and Link to the google app on the app store",
      docs: docs(),
      package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mithereal/ex_google_play_icon"}
    ]
  end

  defp docs do
    []
  end
end
