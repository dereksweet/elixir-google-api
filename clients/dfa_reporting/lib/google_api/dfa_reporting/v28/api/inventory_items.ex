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

defmodule GoogleApi.DFAReporting.V28.Api.InventoryItems do
  @moduledoc """
  API calls for all endpoints tagged `InventoryItems`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  import GoogleApi.DFAReporting.V28.RequestBuilder


  @doc """
  Gets one inventory item by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - project_id (String): Project ID for order documents.
  - id (String): Inventory item ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.InventoryItem{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_inventory_items_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.InventoryItem.t} | {:error, Tesla.Env.t}
  def dfareporting_inventory_items_get(connection, profile_id, project_id, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/projects/#{project_id}/inventoryItems/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.InventoryItem{})
  end

  @doc """
  Retrieves a list of inventory items, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - project_id (String): Project ID for order documents.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :ids (List[String]): Select only inventory items with these IDs.
    - :in_plan (Boolean): Select only inventory items that are in plan.
    - :max_results (Integer): Maximum number of results to return.
    - :order_id (List[String]): Select only inventory items that belong to specified orders.
    - :page_token (String): Value of the nextPageToken from the previous result page.
    - :site_id (List[String]): Select only inventory items that are associated with these sites.
    - :sort_field (String): Field by which to sort the list.
    - :sort_order (String): Order of sorted results.
    - :type (String): Select only inventory items with this type.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.InventoryItemsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_inventory_items_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.InventoryItemsListResponse.t} | {:error, Tesla.Env.t}
  def dfareporting_inventory_items_list(connection, profile_id, project_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ids" => :query,
      :"inPlan" => :query,
      :"maxResults" => :query,
      :"orderId" => :query,
      :"pageToken" => :query,
      :"siteId" => :query,
      :"sortField" => :query,
      :"sortOrder" => :query,
      :"type" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/projects/#{project_id}/inventoryItems")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.InventoryItemsListResponse{})
  end
end