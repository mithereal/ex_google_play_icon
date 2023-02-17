defmodule GooglePlayIconTest do
  use ExUnit.Case
  doctest GooglePlayIcon

  test "render" do
    expected =
      "<section class=\"mobile-icons\">\n    <a id=\"GooglePlayIcon\" class=\"mobile-icon\" href=\"https://play.google.com/store/apps/details?id= \"\n       target=\"_blank\" name=\"google\">\n        <picture>\n          \n          <img\n          srcset=\" \"\n          sizes=\"\"\n          src=\"/images/play_store.jpg\"\n          alt=\"Google Play Store Icon\"\n          class=\"play-store-mobile-icon\">\n        </picture>\n    </a>\n</section>"

    assert GooglePlayIcon.render([]) == expected
  end
end
