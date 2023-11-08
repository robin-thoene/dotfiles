<!--
TeamSpeak 3 Channel Infoframe Template
Copyright (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automatically be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins!

Options (remove the "#" to enable):
#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replaceable variables for channels:
CHANNEL_CLIENTS_COUNT
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_DESCRIPTION
CHANNEL_FLAG_DEFAULT
CHANNEL_FLAG_FORCED_SILENCE
CHANNEL_FLAG_NORMAL
CHANNEL_FLAG_PASSWORD
CHANNEL_FLAG_PERMANENT
CHANNEL_FLAG_SEMI_PERMANENT
CHANNEL_FLAG_SPACER
CHANNEL_FLAG_TEMPORARY
CHANNEL_FLAGS
CHANNEL_ICON
CHANNEL_ICON_SCALED
CHANNEL_ID
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_MODERATED_ICON
CHANNEL_NAME
CHANNEL_NAME_PLAIN
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_SUBSCRIPTION
CHANNEL_TOPIC
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
FILE_BROWSER_ICON
IMAGES_MAX_HEIGHT
IMAGES_MAX_WIDTH
OPEN_FILE_BROWSER
PLUGIN_INFO_DATA
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

%%??CHANNEL_FLAG_NORMAL%%<table id="info" border="0" width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td colspan="2" class="del-text"><span>Kanal wird gel&ouml;scht in: %%?TEMP_CHANNEL_TIME_TO_DELETE%%</span></td></tr>
%%??TEMP_CHANNEL_TIME_TO_DELETE%%  <tr><td colspan="2"><hr /></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr title="%%CHANNEL_NAME_PLAIN%%<br/><br/>Position des Kanals: %%CHANNEL_ORDER%%"><td class="label" width="140">Kanalname:</td><td><a class="TextMessage_ChannelLink" href="channelid://%%CHANNEL_ID%%">%%CHANNEL_NAME%%</a></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Kanal ID:</td><td>%%CHANNEL_ID%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Kodek:</td><td>%%CHANNEL_CODEC%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Kodekqualit&auml;t:</td><td>%%CHANNEL_CODEC_QUALITY%% (Ben&ouml;tigte Bandbreite: %%CHANNEL_CODEC_BITRATE%%/s)</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Kanaltyp:</td><td class="blue">%%?CHANNEL_FLAGS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%    <p></p>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Verbundene Benutzer:</td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Abonnentenstatus:</td><td>%%CHANNEL_SUBSCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Sprachverschl&uuml;sselung:</td><td class="redder">
%%??CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%<span class="green">
%%??CHANNEL_FLAG_NORMAL%%        %%CHANNEL_VOICE_DATA_ENCRYPTED%%</span>
</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table>

%%??CHANNEL_FLAG_NORMAL%%<table>
%%??CHANNEL_FLAG_NORMAL%%  <tr><br/><td class="label" width="140">Ben&ouml;tigtes Rederecht:</td><td class="red" title="Fordere Rederechte an um in diesem Kanal sprechen zu können.">%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table> 

<table width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><span class="topic">%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><p />%%?CHANNEL_DESCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_SPACER%%  <tr><td class="topic"><span>%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_SPACER%%%%??CHANNEL_TOPIC%%%%??CHANNEL_DESCRIPTION%%<hr />
%%??CHANNEL_FLAG_SPACER%%  <tr><td><p/>%%?CHANNEL_DESCRIPTION%%</td></tr>
</table>

%%??CHANNEL_FLAG_NORMAL%%<br />%%?PLUGIN_INFO_DATA%%<br />