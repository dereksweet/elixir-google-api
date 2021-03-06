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

defmodule GoogleApi.Chat.V1.Model.Membership do
  @moduledoc """
  Represents a membership relation in Hangouts Chat.

  ## Attributes

  - createTime (DateTime.t): The creation time of the membership a.k.a the time at which the member joined the space, if applicable. Defaults to: `null`.
  - member (User): Member details. Defaults to: `null`.
  - name (String.t): Resource name of the membership, in the form \&quot;spaces/*/members/*\&quot;.  Example: spaces/AAAAMpdlehY/members/105115627578887013105 Defaults to: `null`.
  - state (String.t): State of the membership. Defaults to: `null`.
    - Enum - one of [MEMBERSHIP_STATE_UNSPECIFIED, JOINED, INVITED, NOT_A_MEMBER]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :member => GoogleApi.Chat.V1.Model.User.t(),
          :name => any(),
          :state => any()
        }

  field(:createTime, as: DateTime)
  field(:member, as: GoogleApi.Chat.V1.Model.User)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Membership do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Membership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Membership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
