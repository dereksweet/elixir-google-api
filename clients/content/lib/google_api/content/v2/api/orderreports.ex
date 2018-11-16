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

defmodule GoogleApi.Content.V2.Api.Orderreports do
  @moduledoc """
  API calls for all endpoints tagged `Orderreports`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves a report for disbursements from your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - disbursement_start_date (String.t): The first date which disbursements occurred. In ISO 8601 format.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :disbursementEndDate (String.t): The last date which disbursements occurred. In ISO 8601 format. Default: current date.
    - :maxResults (integer()): The maximum number of disbursements to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderreportsListDisbursementsResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderreports_listdisbursements(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V2.Model.OrderreportsListDisbursementsResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderreports_listdisbursements(
        connection,
        merchant_id,
        disbursement_start_date,
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
      :disbursementEndDate => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/orderreports/disbursements", %{
        "merchantId" => URI.encode_www_form(merchant_id)
      })
      |> Request.add_param(:query, :disbursementStartDate, disbursement_start_date)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.OrderreportsListDisbursementsResponse{}]
    )
  end

  @doc """
  Retrieves a list of transactions for a disbursement from your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - disbursement_id (String.t): The Google-provided ID of the disbursement (found in Wallet).
  - transaction_start_date (String.t): The first date in which transaction occurred. In ISO 8601 format.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of disbursements to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.
    - :transactionEndDate (String.t): The last date in which transaction occurred. In ISO 8601 format. Default: current date.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderreportsListTransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderreports_listtransactions(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V2.Model.OrderreportsListTransactionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderreports_listtransactions(
        connection,
        merchant_id,
        disbursement_id,
        transaction_start_date,
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
      :maxResults => :query,
      :pageToken => :query,
      :transactionEndDate => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/orderreports/disbursements/{disbursementId}/transactions", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "disbursementId" => URI.encode_www_form(disbursement_id)
      })
      |> Request.add_param(:query, :transactionStartDate, transaction_start_date)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.OrderreportsListTransactionsResponse{}]
    )
  end
end