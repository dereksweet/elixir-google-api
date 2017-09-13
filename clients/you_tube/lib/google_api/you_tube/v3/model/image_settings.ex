# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.ImageSettings do
  @moduledoc """
  Branding properties for images associated with the channel.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"backgroundImageUrl",
    :"bannerExternalUrl",
    :"bannerImageUrl",
    :"bannerMobileExtraHdImageUrl",
    :"bannerMobileHdImageUrl",
    :"bannerMobileImageUrl",
    :"bannerMobileLowImageUrl",
    :"bannerMobileMediumHdImageUrl",
    :"bannerTabletExtraHdImageUrl",
    :"bannerTabletHdImageUrl",
    :"bannerTabletImageUrl",
    :"bannerTabletLowImageUrl",
    :"bannerTvHighImageUrl",
    :"bannerTvImageUrl",
    :"bannerTvLowImageUrl",
    :"bannerTvMediumImageUrl",
    :"largeBrandedBannerImageImapScript",
    :"largeBrandedBannerImageUrl",
    :"smallBrandedBannerImageImapScript",
    :"smallBrandedBannerImageUrl",
    :"trackingImageUrl",
    :"watchIconImageUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ImageSettings do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"backgroundImageUrl", :struct, GoogleApi.YouTube.V3.Model.LocalizedProperty, options)
    |> deserialize(:"largeBrandedBannerImageImapScript", :struct, GoogleApi.YouTube.V3.Model.LocalizedProperty, options)
    |> deserialize(:"largeBrandedBannerImageUrl", :struct, GoogleApi.YouTube.V3.Model.LocalizedProperty, options)
    |> deserialize(:"smallBrandedBannerImageImapScript", :struct, GoogleApi.YouTube.V3.Model.LocalizedProperty, options)
    |> deserialize(:"smallBrandedBannerImageUrl", :struct, GoogleApi.YouTube.V3.Model.LocalizedProperty, options)
  end
end
