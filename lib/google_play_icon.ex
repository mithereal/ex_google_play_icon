defmodule GooglePlayIcon do
  @moduledoc """
  Documentation for `GooglePlayIcon`.
  """

  @doc """
  render the google play icon with the store link.

  ## Examples

      iex> GooglePlayIcon.render()


  """

  def render(
        google_play_id,
        default_image \\ "/images/play_store.jpg",
        images \\ [],
        alt_text \\ "Google Play Store Icon"
      ) do
    media_sources =
      Enum.map(images, fn {image, width, type, image_type} ->
        "<source media=\"(#{type}: #{width})\"
                    srcset=\"#{image}\"
                    type=\"image/#{image_type}\">"
      end)
      |> Enum.join()

    srcset =
      Enum.map(images, fn {image, width, _type, _image_type} ->
        "#{image} #{width}w"
      end)
      |> Enum.join(",")

    sizes =
      Enum.map(images, fn {_image, width, _type, _image_type} ->
        "(max-width: #{width}px) #{width}px"
      end)
      |> Enum.join(",")

    "<section class=\"play-store-mobile-icons\">
    <a id=\"GooglePlayIcon\" class=\"play-store-mobile-icon\" href=\"https://play.google.com/store/apps/details?id=#{google_play_id} \"
       target=\"_blank\" name=\"google\">
        <picture>
          #{media_sources}
          <img
          srcset=\"#{srcset} \"
          sizes=\"#{sizes}\"
          src=\"#{default_image}\"
          alt=\"#{alt_text}\"
          class=\"play-store-mobile-icon\">
        </picture>
    </a>
</section>"
  end
end
