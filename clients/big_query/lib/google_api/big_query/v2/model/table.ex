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

defmodule GoogleApi.BigQuery.V2.Model.Table do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"creationTime",
    :"description",
    :"etag",
    :"expirationTime",
    :"externalDataConfiguration",
    :"friendlyName",
    :"id",
    :"kind",
    :"labels",
    :"lastModifiedTime",
    :"location",
    :"numBytes",
    :"numLongTermBytes",
    :"numRows",
    :"schema",
    :"selfLink",
    :"streamingBuffer",
    :"tableReference",
    :"timePartitioning",
    :"type",
    :"view"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Table do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"externalDataConfiguration", :struct, GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration, options)
    |> deserialize(:"schema", :struct, GoogleApi.BigQuery.V2.Model.TableSchema, options)
    |> deserialize(:"streamingBuffer", :struct, GoogleApi.BigQuery.V2.Model.Streamingbuffer, options)
    |> deserialize(:"tableReference", :struct, GoogleApi.BigQuery.V2.Model.TableReference, options)
    |> deserialize(:"timePartitioning", :struct, GoogleApi.BigQuery.V2.Model.TimePartitioning, options)
    |> deserialize(:"view", :struct, GoogleApi.BigQuery.V2.Model.ViewDefinition, options)
  end
end
