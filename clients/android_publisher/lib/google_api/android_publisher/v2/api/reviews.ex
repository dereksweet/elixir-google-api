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

defmodule GoogleApi.AndroidPublisher.V2.Api.Reviews do
  @moduledoc """
  API calls for all endpoints tagged `Reviews`.
  """

  alias GoogleApi.AndroidPublisher.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns a single review.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String.t): Unique identifier for the Android app for which we want reviews; for example, \&quot;com.spiffygame\&quot;.
  - review_id (String.t): 
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :translationLanguage (String.t): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.Review{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_reviews_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.Review.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_get(
        connection,
        package_name,
        review_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :translationLanguage => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/androidpublisher/v2/applications/{packageName}/reviews/{reviewId}", %{
        "packageName" => URI.encode_www_form(package_name),
        "reviewId" => URI.encode_www_form(review_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.Review{}])
  end

  @doc """
  Returns a list of reviews. Only reviews from last week will be returned.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String.t): Unique identifier for the Android app for which we want reviews; for example, \&quot;com.spiffygame\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): 
    - :startIndex (integer()): 
    - :token (String.t): 
    - :translationLanguage (String.t): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_reviews_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_list(connection, package_name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :startIndex => :query,
      :token => :query,
      :translationLanguage => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/androidpublisher/v2/applications/{packageName}/reviews", %{
        "packageName" => URI.encode_www_form(package_name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse{}]
    )
  end

  @doc """
  Reply to a single review, or update an existing reply.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String.t): Unique identifier for the Android app for which we want reviews; for example, \&quot;com.spiffygame\&quot;.
  - review_id (String.t): 
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (ReviewsReplyRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_reviews_reply(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_reply(
        connection,
        package_name,
        review_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/androidpublisher/v2/applications/{packageName}/reviews/{reviewId}:reply",
        %{
          "packageName" => URI.encode_www_form(package_name),
          "reviewId" => URI.encode_www_form(review_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse{}]
    )
  end
end
