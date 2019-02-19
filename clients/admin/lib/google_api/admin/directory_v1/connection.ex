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

defmodule GoogleApi.Admin.Directory_v1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Admin.Directory_v1.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # View directory users for your G Suite domain
      "https://www.googleapis.com/auth/admin.directory.user.readonly"
    ],
    otp_app: :google_api_admin,
    base_url: "https://www.googleapis.com/admin/directory/v1"
end