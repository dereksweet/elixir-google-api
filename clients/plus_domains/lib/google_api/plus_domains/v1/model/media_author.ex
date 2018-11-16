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

defmodule GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  @moduledoc """
  The person who uploaded this media.

  ## Attributes

  - displayName (String.t): The author&#39;s name. Defaults to: `null`.
  - id (String.t): ID of the author. Defaults to: `null`.
  - image (MediaAuthorImage):  Defaults to: `null`.
  - url (String.t): A link to the author&#39;s Google profile. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :id => any(),
          :image => GoogleApi.PlusDomains.V1.Model.MediaAuthorImage.t(),
          :url => any()
        }

  field(:displayName)
  field(:id)
  field(:image, as: GoogleApi.PlusDomains.V1.Model.MediaAuthorImage)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.MediaAuthor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end