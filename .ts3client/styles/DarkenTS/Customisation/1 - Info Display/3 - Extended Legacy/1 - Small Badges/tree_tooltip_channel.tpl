<!--
TeamSpeak 3 Channel Tooltip Template (EN) 
Copyright 2017 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replacable variables for channels:
CHANNEL_NAME
CHANNEL_ID
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

<style type="text/css">
* {
  outline: none;
}

table#info {
  border-collapse: collapse;
  border-spacing: 0px;
}

table#list {
  border-collapse: collapse;
  border-spacing: 0px;
  margin-bottom: 10px;
}

td {
  padding: 0px 4px 0px 1px;
}

td.label {
  font-weight: bold;
  white-space: nowrap;
}

td.space {
  padding-top: 6px;
}

td.list {
  padding: 0px 1px 0px 8px;
}

.blue {
  color: rgb(57,165,221);
}

.red {
  color: rgb(202,58,58);
}
</style>

<table id="info">
  <tr><td class="label">%%TR_CHANNEL_NAME%%:</td><td class="blue">%%CHANNEL_NAME%%</td></tr>
  <tr><td class="label">%%TR_CHANNEL_CODEC%%:</td><td>%%CHANNEL_CODEC%%</td></tr>
  <tr><td class="label">%%TR_CHANNEL_CODEC_QUALITY%%:</td><td>%%CHANNEL_CODEC_QUALITY%%</td></tr>
  <tr><td class="label">%%CHANNEL_CODEC_BITRATE%%:</td><td>%%CHANNEL_CODEC_BITRATE%%/s</td></tr>
  <tr><td class="label">%%?TR_CHANNEL_FLAGS%%:</td><td class="blue">%%?CHANNEL_FLAGS%%</td></tr>
  <tr><td class="label"><hr/><p/>%%?TR_CHANNEL_CLIENTS_COUNT%%:</td><td><hr/><p/>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
  <!-- hr-p in both cells instead dedicated td with colspan: Compromise between design idea and "%%? problem" -->
  <tr><td class="label">%%?TR_CHANNEL_NEEDED_TALK_POWER%%:</td><td class="red">%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
  <tr><td class="label">%%TR_CHANNEL_SUBSCRIPTION%%:</td><td>%%CHANNEL_SUBSCRIPTION%%</td></tr>
  <tr><td class="label">%%TR_CHANNEL_VOICE_DATA_ENCRYPTED%%:</td><td>%%CHANNEL_VOICE_DATA_ENCRYPTED%%</td></tr>
  <tr><td class="label"><hr/><p/>%%?TR_CHANNEL_TOPIC%%:</td><td><hr/><p/>%%?CHANNEL_TOPIC%%</td></tr>
</table>

<p style="margin-top: 4px; color:darkRed;">%%?TEMP_CHANNEL_TIME_TO_DELETE%%</p>

<br />%%?PLUGIN_INFO_DATA%%<br />