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

defmodule GoogleApi.Slides.V1.Model.CreateParagraphBulletsRequest do
  @moduledoc """
  Creates bullets for all of the paragraphs that overlap with the given text index range.  The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text.  If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bulletPreset",
    :"cellLocation",
    :"objectId",
    :"textRange"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CreateParagraphBulletsRequest do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cellLocation", :struct, GoogleApi.Slides.V1.Model.TableCellLocation, options)
    |> deserialize(:"textRange", :struct, GoogleApi.Slides.V1.Model.Range, options)
  end
end
