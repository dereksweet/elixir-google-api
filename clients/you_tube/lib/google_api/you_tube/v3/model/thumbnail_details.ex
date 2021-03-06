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

defmodule GoogleApi.YouTube.V3.Model.ThumbnailDetails do
  @moduledoc """
  Internal representation of thumbnails for a YouTube resource.

  ## Attributes

  - default (Thumbnail): The default image for this resource. Defaults to: `null`.
  - high (Thumbnail): The high quality image for this resource. Defaults to: `null`.
  - maxres (Thumbnail): The maximum resolution quality image for this resource. Defaults to: `null`.
  - medium (Thumbnail): The medium quality image for this resource. Defaults to: `null`.
  - standard (Thumbnail): The standard quality image for this resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :default => GoogleApi.YouTube.V3.Model.Thumbnail.t(),
          :high => GoogleApi.YouTube.V3.Model.Thumbnail.t(),
          :maxres => GoogleApi.YouTube.V3.Model.Thumbnail.t(),
          :medium => GoogleApi.YouTube.V3.Model.Thumbnail.t(),
          :standard => GoogleApi.YouTube.V3.Model.Thumbnail.t()
        }

  field(:default, as: GoogleApi.YouTube.V3.Model.Thumbnail)
  field(:high, as: GoogleApi.YouTube.V3.Model.Thumbnail)
  field(:maxres, as: GoogleApi.YouTube.V3.Model.Thumbnail)
  field(:medium, as: GoogleApi.YouTube.V3.Model.Thumbnail)
  field(:standard, as: GoogleApi.YouTube.V3.Model.Thumbnail)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ThumbnailDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ThumbnailDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ThumbnailDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
