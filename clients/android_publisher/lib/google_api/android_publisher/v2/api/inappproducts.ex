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

defmodule GoogleApi.AndroidPublisher.V2.Api.Inappproducts do
  @moduledoc """
  API calls for all endpoints tagged `Inappproducts`.
  """

  alias GoogleApi.AndroidPublisher.V2.Connection
  import GoogleApi.AndroidPublisher.V2.RequestBuilder


  @doc """

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InappproductsBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InappproductsBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_batch(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InappproductsBatchResponse.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_batch(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/androidpublisher/v2/applications/inappproducts/batch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InappproductsBatchResponse{})
  end

  @doc """
  Delete an in-app product for an app.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): Unique identifier for the Android app with the in-app product; for example, \&quot;com.spiffygame\&quot;.
  - sku (String): Unique identifier for the in-app product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_delete(connection, package_name, sku, opts \\ []) do
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
    |> method(:delete)
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts/#{sku}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns information about the in-app product specified.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): 
  - sku (String): Unique identifier for the in-app product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InAppProduct{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_get(connection, package_name, sku, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts/#{sku}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InAppProduct{})
  end

  @doc """
  Creates a new in-app product for an app.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): Unique identifier for the Android app; for example, \&quot;com.spiffygame\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :auto_convert_missing_prices (Boolean): If true the prices for all regions targeted by the parent app that don&#39;t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    - :body (InAppProduct): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InAppProduct{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_insert(connection, package_name, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"autoConvertMissingPrices" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InAppProduct{})
  end

  @doc """
  List all the in-app products for an Android app, both subscriptions and managed in-app products..

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): Unique identifier for the Android app with in-app products; for example, \&quot;com.spiffygame\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): 
    - :start_index (Integer): 
    - :token (String): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_list(connection, package_name, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"startIndex" => :query,
      :"token" => :query
    }
    %{}
    |> method(:get)
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse{})
  end

  @doc """
  Updates the details of an in-app product. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): Unique identifier for the Android app with the in-app product; for example, \&quot;com.spiffygame\&quot;.
  - sku (String): Unique identifier for the in-app product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :auto_convert_missing_prices (Boolean): If true the prices for all regions targeted by the parent app that don&#39;t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    - :body (InAppProduct): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InAppProduct{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_patch(connection, package_name, sku, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"autoConvertMissingPrices" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts/#{sku}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InAppProduct{})
  end

  @doc """
  Updates the details of an in-app product.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): Unique identifier for the Android app with the in-app product; for example, \&quot;com.spiffygame\&quot;.
  - sku (String): Unique identifier for the in-app product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :auto_convert_missing_prices (Boolean): If true the prices for all regions targeted by the parent app that don&#39;t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    - :body (InAppProduct): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.InAppProduct{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_inappproducts_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t} | {:error, Tesla.Env.t}
  def androidpublisher_inappproducts_update(connection, package_name, sku, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"autoConvertMissingPrices" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/androidpublisher/v2/applications/#{package_name}/inappproducts/#{sku}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.InAppProduct{})
  end
end