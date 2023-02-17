defmodule GooglePlayIcon do
  @moduledoc """
  Documentation for `GooglePlayIcon`.
  """

  @doc """
  render the google play icon with the store link.

  ## Examples
  google_play_id = "your id here"
      iex> GooglePlayIcon.render(google_play_id)

  """

  def render(
        google_play_id,
        default_image \\ "/images/play_store.jpg",
        images \\ [],
        alt_text \\ "Google Play Store Icon",
        unit \\ "px",
        class \\ "play-store-mobile-icons"
      ) do
    media_sources =
      Enum.map(images, fn {image, width, type, image_type} ->
        "<source media='(#{type}: #{width}#{unit})'
                    srcset='#{image}'
                    type='image/#{image_type}'>"
      end)
      |> Enum.join()

    srcset =
      Enum.map(images, fn {image, width, _type, _image_type} ->
        "#{image} #{width}w"
      end)
      |> Enum.join(",")

    sizes =
      Enum.map(images, fn {_image, width, _type, _image_type} ->
        "(max-width: #{width}#{unit}) #{width}#{unit}"
      end)
      |> Enum.join(",")

    "<section class='#{class}'><a id='GooglePlayIcon' class='#{class}' href='https://play.google.com/store/apps/details?id=#{google_play_id}' target='_blank' name='google'><picture>#{media_sources}<img srcset='#{srcset}' sizes='#{sizes}' src='#{default_image}' alt='#{alt_text}' class='#{class}'> </picture> </a></section>"
  end

  @doc """
  Generate a link.

  ## Examples
  google_play_id = "your id here"
      iex> GooglePlayIcon.link(google_play_id)

  """
  def link(
        google_play_id,
        class \\ "play-store-mobile-icons",
        name \\ "google",
        target \\ "_blank",
        id \\ "GooglePlayIcon"
      ) do
    "<a id='#{id}' class='#{class}' href='https://play.google.com/store/apps/details?id=#{google_play_id}' target='#{target}' name='#{name}'>"
  end
end
