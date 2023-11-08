<!--
TeamSpeak 3 Channel Infoframe Template (EN) 
Copyright 2009-2013 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/DarkenTS/"). Be aware that this template will not automatically be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replaceable variables for channels:
CHANNEL_CLIENTS_COUNT               TR support
CHANNEL_CODEC                       TR support
CHANNEL_CODEC_BITRATE               TR support
CHANNEL_DESCRIPTION                 TR support
CHANNEL_FLAG_DEFAULT
CHANNEL_FLAG_FORCED_SILENCE
CHANNEL_FLAG_NORMAL
CHANNEL_FLAG_PASSWORD
CHANNEL_FLAG_PERMANENT
CHANNEL_FLAG_SEMI_PERMANENT
CHANNEL_FLAG_SPACER
CHANNEL_FLAG_TEMPORARY
CHANNEL_FLAGS                       TR support
CHANNEL_ICON
CHANNEL_ICON_SCALED
CHANNEL_ID
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_MODERATED_ICON
CHANNEL_NAME
CHANNEL_NAME_PLAIN
CHANNEL_NEEDED_TALK_POWER           TR support
CHANNEL_ORDER
CHANNEL_SUBSCRIPTION                TR support
CHANNEL_TOPIC                       TR support
CHANNEL_VOICE_DATA_ENCRYPTED        TR support
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
FILE_BROWSER_ICON
IMAGES_MAX_HEIGHT
IMAGES_MAX_WIDTH
OPEN_FILE_BROWSER                   TR support
PLUGIN_INFO_DATA
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

%%??CHANNEL_FLAG_NORMAL%%<table id="info" width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td colspan="2" class="del-text"><span>Channel will be deleted in: %%?TEMP_CHANNEL_TIME_TO_DELETE%%</span></td></tr>
%%??TEMP_CHANNEL_TIME_TO_DELETE%%  <tr><td colspan="2"><hr /></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr title="%%CHANNEL_NAME_PLAIN%%<br/><br/>Channel Order: %%CHANNEL_ORDER%%"><td class="label" width="129">Channel Name:</td><td><a class="TextMessage_ChannelLink" href="channelid://%%CHANNEL_ID%%">%%CHANNEL_NAME%%</a></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Channel ID:</td><td>%%CHANNEL_ID%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Codec:</td><td>%%CHANNEL_CODEC%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Codec Quality:</td><td>%%CHANNEL_CODEC_QUALITY%% (estimated bitrate: %%CHANNEL_CODEC_BITRATE%%/s)</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Type:</td><td class="blue">%%?CHANNEL_FLAGS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%    <p></p>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Current Clients:</td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Subscription Status:</td><td>%%CHANNEL_SUBSCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Voice Data Encryption:</td><td class="redder">
%%??CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%<span class="green">
%%??CHANNEL_FLAG_NORMAL%%        %%CHANNEL_VOICE_DATA_ENCRYPTED%%</span>
</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table>

%%??CHANNEL_FLAG_NORMAL%%<table>
%%??CHANNEL_FLAG_NORMAL%%  <tr title="Request Talk Power to be able to talk in this Channel."><br/><td class="label" width="129">Needed Talk Power:</td><td class="redder">%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr></table>

%%??CHANNEL_FLAG_NORMAL%%<table width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><span class="topic">%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><p />%%?CHANNEL_DESCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_SPACER%%  <tr><td class="topic"><span>%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_SPACER%%%%??CHANNEL_TOPIC%%%%??CHANNEL_DESCRIPTION%%<hr />
%%??CHANNEL_FLAG_SPACER%%  <tr><td><p/>%%?CHANNEL_DESCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table>

%%??CHANNEL_FLAG_NORMAL%%<br />%%?PLUGIN_INFO_DATA%%<br />