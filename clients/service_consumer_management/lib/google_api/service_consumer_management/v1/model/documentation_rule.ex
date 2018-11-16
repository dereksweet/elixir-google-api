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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.DocumentationRule do
  @moduledoc """
  A documentation rule provides information about individual API elements.

  ## Attributes

  - deprecationDescription (String.t): Deprecation description of the selected element(s). It can be provided if an element is marked as &#x60;deprecated&#x60;. Defaults to: `null`.
  - description (String.t): Description of the selected API(s). Defaults to: `null`.
  - selector (String.t): The selector is a comma-separated list of patterns. Each pattern is a qualified name of the element which may end in \&quot;*\&quot;, indicating a wildcard. Wildcards are only allowed at the end and for a whole component of the qualified name, i.e. \&quot;foo.*\&quot; is ok, but not \&quot;foo.b*\&quot; or \&quot;foo.*.bar\&quot;. To specify a default for all applicable elements, the whole pattern \&quot;*\&quot; is used. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deprecationDescription => any(),
          :description => any(),
          :selector => any()
        }

  field(:deprecationDescription)
  field(:description)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.DocumentationRule do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.DocumentationRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.DocumentationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end