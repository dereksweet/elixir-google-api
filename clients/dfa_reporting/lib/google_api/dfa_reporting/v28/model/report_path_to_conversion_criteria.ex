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

defmodule GoogleApi.DFAReporting.V28.Model.Report_pathToConversionCriteria do
  @moduledoc """
  The report criteria for a report of type \&quot;PATH_TO_CONVERSION\&quot;.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"activityFilters",
    :"conversionDimensions",
    :"customFloodlightVariables",
    :"customRichMediaEvents",
    :"dateRange",
    :"floodlightConfigId",
    :"metricNames",
    :"perInteractionDimensions",
    :"reportProperties"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Report_pathToConversionCriteria do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"activityFilters", :list, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"conversionDimensions", :list, GoogleApi.DFAReporting.V28.Model.SortedDimension, options)
    |> deserialize(:"customFloodlightVariables", :list, GoogleApi.DFAReporting.V28.Model.SortedDimension, options)
    |> deserialize(:"customRichMediaEvents", :list, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"dateRange", :struct, GoogleApi.DFAReporting.V28.Model.DateRange, options)
    |> deserialize(:"floodlightConfigId", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"perInteractionDimensions", :list, GoogleApi.DFAReporting.V28.Model.SortedDimension, options)
    |> deserialize(:"reportProperties", :struct, GoogleApi.DFAReporting.V28.Model.Report_pathToConversionCriteria_reportProperties, options)
  end
end
