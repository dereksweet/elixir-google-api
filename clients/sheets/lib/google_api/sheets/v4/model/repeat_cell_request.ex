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

defmodule GoogleApi.Sheets.V4.Model.RepeatCellRequest do
  @moduledoc """
  Updates all cells in the range to the values in the given Cell object. Only the fields listed in the fields field are updated; others are unchanged.  If writing a cell with a formula, the formula&#39;s ranges will automatically increment for each field in the range. For example, if writing a cell with formula &#x60;&#x3D;A1&#x60; into range B2:C4, B2 would be &#x60;&#x3D;A1&#x60;, B3 would be &#x60;&#x3D;A2&#x60;, B4 would be &#x60;&#x3D;A3&#x60;, C2 would be &#x60;&#x3D;B1&#x60;, C3 would be &#x60;&#x3D;B2&#x60;, C4 would be &#x60;&#x3D;B3&#x60;.  To keep the formula&#39;s ranges static, use the &#x60;$&#x60; indicator. For example, use the formula &#x60;&#x3D;$A$1&#x60; to prevent both the row and the column from incrementing.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cell",
    :"fields",
    :"range"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.RepeatCellRequest do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cell", :struct, GoogleApi.Sheets.V4.Model.CellData, options)
    |> deserialize(:"range", :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
  end
end
