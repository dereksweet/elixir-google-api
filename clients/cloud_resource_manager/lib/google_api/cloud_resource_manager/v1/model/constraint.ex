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

defmodule GoogleApi.CloudResourceManager.V1.Model.Constraint do
  @moduledoc """
  A &#x60;Constraint&#x60; describes a way in which a resource&#39;s configuration can be restricted. For example, it controls which cloud services can be activated across an organization, or whether a Compute Engine instance can have serial port connections established. &#x60;Constraints&#x60; can be configured by the organization&#39;s policy adminstrator to fit the needs of the organzation by setting Policies for &#x60;Constraints&#x60; at different locations in the organization&#39;s resource hierarchy. Policies are inherited down the resource hierarchy from higher levels, but can also be overridden. For details about the inheritance rules please read about Policies.  &#x60;Constraints&#x60; have a default behavior determined by the &#x60;constraint_default&#x60; field, which is the enforcement behavior that is used in the absence of a &#x60;Policy&#x60; being defined or inherited for the resource in question.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"booleanConstraint",
    :"constraintDefault",
    :"description",
    :"displayName",
    :"listConstraint",
    :"name",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.Constraint do
  import GoogleApi.CloudResourceManager.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"booleanConstraint", :struct, GoogleApi.CloudResourceManager.V1.Model.BooleanConstraint, options)
    |> deserialize(:"listConstraint", :struct, GoogleApi.CloudResourceManager.V1.Model.ListConstraint, options)
  end
end
