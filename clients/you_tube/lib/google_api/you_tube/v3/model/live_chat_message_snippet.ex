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

defmodule GoogleApi.YouTube.V3.Model.LiveChatMessageSnippet do
  @moduledoc """


  ## Attributes

  - authorChannelId (String.t): The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action superChatEvent - the user that made the purchase Defaults to: `null`.
  - displayMessage (String.t): Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent. Defaults to: `null`.
  - fanFundingEventDetails (LiveChatFanFundingEventDetails): Details about the funding event, this is only set if the type is &#39;fanFundingEvent&#39;. Defaults to: `null`.
  - hasDisplayContent (boolean()): Whether the message has display content that should be displayed to users. Defaults to: `null`.
  - liveChatId (String.t):  Defaults to: `null`.
  - messageDeletedDetails (LiveChatMessageDeletedDetails):  Defaults to: `null`.
  - messageRetractedDetails (LiveChatMessageRetractedDetails):  Defaults to: `null`.
  - pollClosedDetails (LiveChatPollClosedDetails):  Defaults to: `null`.
  - pollEditedDetails (LiveChatPollEditedDetails):  Defaults to: `null`.
  - pollOpenedDetails (LiveChatPollOpenedDetails):  Defaults to: `null`.
  - pollVotedDetails (LiveChatPollVotedDetails):  Defaults to: `null`.
  - publishedAt (DateTime.t): The date and time when the message was orignally published. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - superChatDetails (LiveChatSuperChatDetails): Details about the Super Chat event, this is only set if the type is &#39;superChatEvent&#39;. Defaults to: `null`.
  - superStickerDetails (LiveChatSuperStickerDetails): Details about the Super Sticker event, this is only set if the type is &#39;superStickerEvent&#39;. Defaults to: `null`.
  - textMessageDetails (LiveChatTextMessageDetails): Details about the text message, this is only set if the type is &#39;textMessageEvent&#39;. Defaults to: `null`.
  - type (String.t): The type of message, this will always be present, it determines the contents of the message as well as which fields will be present. Defaults to: `null`.
    - Enum - one of [chatEndedEvent, fanFundingEvent, messageDeletedEvent, messageRetractedEvent, newSponsorEvent, pollClosedEvent, pollEditedEvent, pollOpenedEvent, pollVotedEvent, sponsorOnlyModeEndedEvent, sponsorOnlyModeStartedEvent, superChatEvent, superStickerEvent, textMessageEvent, tombstone, userBannedEvent]
  - userBannedDetails (LiveChatUserBannedMessageDetails):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorChannelId => any(),
          :displayMessage => any(),
          :fanFundingEventDetails =>
            GoogleApi.YouTube.V3.Model.LiveChatFanFundingEventDetails.t(),
          :hasDisplayContent => any(),
          :liveChatId => any(),
          :messageDeletedDetails => GoogleApi.YouTube.V3.Model.LiveChatMessageDeletedDetails.t(),
          :messageRetractedDetails =>
            GoogleApi.YouTube.V3.Model.LiveChatMessageRetractedDetails.t(),
          :pollClosedDetails => GoogleApi.YouTube.V3.Model.LiveChatPollClosedDetails.t(),
          :pollEditedDetails => GoogleApi.YouTube.V3.Model.LiveChatPollEditedDetails.t(),
          :pollOpenedDetails => GoogleApi.YouTube.V3.Model.LiveChatPollOpenedDetails.t(),
          :pollVotedDetails => GoogleApi.YouTube.V3.Model.LiveChatPollVotedDetails.t(),
          :publishedAt => DateTime.t(),
          :superChatDetails => GoogleApi.YouTube.V3.Model.LiveChatSuperChatDetails.t(),
          :superStickerDetails => GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails.t(),
          :textMessageDetails => GoogleApi.YouTube.V3.Model.LiveChatTextMessageDetails.t(),
          :type => any(),
          :userBannedDetails => GoogleApi.YouTube.V3.Model.LiveChatUserBannedMessageDetails.t()
        }

  field(:authorChannelId)
  field(:displayMessage)
  field(:fanFundingEventDetails, as: GoogleApi.YouTube.V3.Model.LiveChatFanFundingEventDetails)
  field(:hasDisplayContent)
  field(:liveChatId)
  field(:messageDeletedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatMessageDeletedDetails)
  field(:messageRetractedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatMessageRetractedDetails)
  field(:pollClosedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatPollClosedDetails)
  field(:pollEditedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatPollEditedDetails)
  field(:pollOpenedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatPollOpenedDetails)
  field(:pollVotedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatPollVotedDetails)
  field(:publishedAt, as: DateTime)
  field(:superChatDetails, as: GoogleApi.YouTube.V3.Model.LiveChatSuperChatDetails)
  field(:superStickerDetails, as: GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails)
  field(:textMessageDetails, as: GoogleApi.YouTube.V3.Model.LiveChatTextMessageDetails)
  field(:type)
  field(:userBannedDetails, as: GoogleApi.YouTube.V3.Model.LiveChatUserBannedMessageDetails)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatMessageSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveChatMessageSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatMessageSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
