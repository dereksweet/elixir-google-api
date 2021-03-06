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

defmodule GoogleApi.DFAReporting.V28.Model.SiteContact do
  @moduledoc """
  Site Contact

  ## Attributes

  - address (String.t): Address of this site contact. Defaults to: `null`.
  - contactType (String.t): Site contact type. Defaults to: `null`.
    - Enum - one of [SALES_PERSON, TRAFFICKER]
  - email (String.t): Email address of this site contact. This is a required field. Defaults to: `null`.
  - firstName (String.t): First name of this site contact. Defaults to: `null`.
  - id (String.t): ID of this site contact. This is a read-only, auto-generated field. Defaults to: `null`.
  - lastName (String.t): Last name of this site contact. Defaults to: `null`.
  - phone (String.t): Primary phone number of this site contact. Defaults to: `null`.
  - title (String.t): Title or designation of this site contact. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => any(),
          :contactType => any(),
          :email => any(),
          :firstName => any(),
          :id => any(),
          :lastName => any(),
          :phone => any(),
          :title => any()
        }

  field(:address)
  field(:contactType)
  field(:email)
  field(:firstName)
  field(:id)
  field(:lastName)
  field(:phone)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.SiteContact do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.SiteContact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.SiteContact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
