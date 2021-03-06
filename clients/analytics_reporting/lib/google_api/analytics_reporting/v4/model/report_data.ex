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

defmodule GoogleApi.AnalyticsReporting.V4.Model.ReportData do
  @moduledoc """
  The data part of the report.

  ## Attributes

  - dataLastRefreshed (DateTime.t): The last time the data in the report was refreshed. All the hits received before this timestamp are included in the calculation of the report. Defaults to: `null`.
  - isDataGolden (boolean()): Indicates if response to this request is golden or not. Data is golden when the exact same request will not produce any new results if asked at a later point in time. Defaults to: `null`.
  - maximums ([DateRangeValues]): Minimum and maximum values seen over all matching rows. These are both empty when &#x60;hideValueRanges&#x60; in the request is false, or when rowCount is zero. Defaults to: `null`.
  - minimums ([DateRangeValues]): Minimum and maximum values seen over all matching rows. These are both empty when &#x60;hideValueRanges&#x60; in the request is false, or when rowCount is zero. Defaults to: `null`.
  - rowCount (integer()): Total number of matching rows for this query. Defaults to: `null`.
  - rows ([ReportRow]): There&#39;s one ReportRow for every unique combination of dimensions. Defaults to: `null`.
  - samplesReadCounts ([String.t]): If the results are [sampled](https://support.google.com/analytics/answer/2637192), this returns the total number of samples read, one entry per date range. If the results are not sampled this field will not be defined. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details. Defaults to: `null`.
  - samplingSpaceSizes ([String.t]): If the results are [sampled](https://support.google.com/analytics/answer/2637192), this returns the total number of samples present, one entry per date range. If the results are not sampled this field will not be defined. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details. Defaults to: `null`.
  - totals ([DateRangeValues]): For each requested date range, for the set of all rows that match the query, every requested value format gets a total. The total for a value format is computed by first totaling the metrics mentioned in the value format and then evaluating the value format as a scalar expression.  E.g., The \&quot;totals\&quot; for &#x60;3 / (ga:sessions + 2)&#x60; we compute &#x60;3 / ((sum of all relevant ga:sessions) + 2)&#x60;. Totals are computed before pagination. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataLastRefreshed => DateTime.t(),
          :isDataGolden => any(),
          :maximums => list(GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues.t()),
          :minimums => list(GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues.t()),
          :rowCount => any(),
          :rows => list(GoogleApi.AnalyticsReporting.V4.Model.ReportRow.t()),
          :samplesReadCounts => list(any()),
          :samplingSpaceSizes => list(any()),
          :totals => list(GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues.t())
        }

  field(:dataLastRefreshed, as: DateTime)
  field(:isDataGolden)
  field(:maximums, as: GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues, type: :list)
  field(:minimums, as: GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues, type: :list)
  field(:rowCount)
  field(:rows, as: GoogleApi.AnalyticsReporting.V4.Model.ReportRow, type: :list)
  field(:samplesReadCounts, type: :list)
  field(:samplingSpaceSizes, type: :list)
  field(:totals, as: GoogleApi.AnalyticsReporting.V4.Model.DateRangeValues, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.ReportData do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.ReportData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.ReportData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
