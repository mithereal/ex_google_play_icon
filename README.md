# GooglePlayIcon

**GooglePlayIcon**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `google_play_icon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:google_play_icon, "~> 0.1.0"}
  ]
end
```

## usage
in your layout template place the following in the footer block

```elixir
google_play_id = "122223232"
main_image = "path/to/image"
images = [
{"path/to/image", "700px", "min-width", "image/jpeg"},
{"path/to/image", "1400px", "max-width", "image/jpeg"}
]
text = "this is the alt text"
## render the defaults
GooglePlayIcon.render(google_play_id, main_image)
## render the defaults with srcsets
GooglePlayIcon.render(google_play_id, main_image, images)
## render the defaults with custom alt image
GooglePlayIcon.render(google_play_id, main_image, images, text)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/google_play_icon>.

