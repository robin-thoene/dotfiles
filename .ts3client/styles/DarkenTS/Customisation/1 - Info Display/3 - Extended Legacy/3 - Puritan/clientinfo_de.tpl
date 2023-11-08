<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2017 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automatically be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins!

Options (remove the "#" to enable):
#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%AVATAR_IMAGE_DONT_APPEND%%1
#%%STATUS_ICONS_DONT_APPEND%%1
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3
#%%CLIENT_SERVER_SHOW_MAX_BADGES%%3

Replaceable variables for clients:
AVATAR_IMAGE_DONT_APPEND
AVATAR_MAX_HEIGHT
AVATAR_MAX_WIDTH
CLIENT_AWAY_MESSAGE
CLIENT_BADGE_DESCRIPTION
CLIENT_BADGE_ICON_LARGE
CLIENT_BADGE_ICON_SMALL
CLIENT_BADGE_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_CHANNEL_GROUP_ID
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CONNECTED_SINCE
CLIENT_COUNTRY_IMAGE
CLIENT_COUNTRY_IMAGE_SCALED
CLIENT_COUNTRY_TOOLTIP
CLIENT_CREATED
CLIENT_CUSTOM_NICK_NAME
CLIENT_DATABASE_ID
CLIENT_DESCRIPTION
CLIENT_FLAG_ANY_MUTED_OR_DISABLED
CLIENT_FLAG_AVATAR
CLIENT_FLAG_AWAY
CLIENT_FLAG_BADGES
CLIENT_FLAG_CHANNEL_COMMANDER
CLIENT_FLAG_INPUT_HARDWARE_DISABLED
CLIENT_FLAG_INPUT_MUTED
CLIENT_FLAG_INPUT_MUTED_OR_DISABLED
CLIENT_FLAG_LOCAL_MUTED
CLIENT_FLAG_OUTPUT_HARDWARE_DISABLED
CLIENT_FLAG_OUTPUT_MUTED
CLIENT_FLAG_OUTPUT_MUTED_OR_DISABLED
CLIENT_FLAG_PRIORITY_SPEAKER
CLIENT_FLAG_RECORDING
CLIENT_ICON
CLIENT_ID
CLIENT_IGNORE_AVATAR
CLIENT_LASTCONNECTED
CLIENT_MYTEAMSPEAK_ID
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_PATH_AVATAR
CLIENT_PLATFORM
CLIENT_SERVER_GROUP_ICON
CLIENT_SERVER_GROUP_ID
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_SHOW_MAX_BADGES
CLIENT_SERVER_SHOW_MAX_GROUPS
CLIENT_TALK_POWER
CLIENT_TALK_REQUEST_MSG
CLIENT_TALK_REQUEST_TIME
CLIENT_TOTALCONNECTIONS
CLIENT_UNIQUE_ID
CLIENT_VERSION
CLIENT_VERSION_LONG
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE ([Alpha|Beta|Stable])
CLIENT_VOLUME_MODIFIER
PLUGIN_INFO_DATA
STATUS_ICONS_DONT_APPEND
-->

<table id="info" border="0" width="100%">
%%??CLIENT_FLAG_RECORDING%%  <tr><td colspan="2"><hr><span class="rec-text">Achtung. Benutzer nimmt auf!</span><hr></td></tr>

%%??CLIENT_TALK_REQUEST_TIME%%  <tr class="yellow"><td class="label bolf" colspan="2">Redebefugnisanfrage</td></tr>
  <tr class="yellow"><td class="label">Zeitpunkt:</td><td>%%?CLIENT_TALK_REQUEST_TIME%%</td></tr>
  <tr class="yellow"><td class="label">Begr&uuml;ndung:</td><td>%%?CLIENT_TALK_REQUEST_MSG%%</td></tr>
%%??CLIENT_TALK_REQUEST_TIME%%    <p></p>

  <tr><td class="label" width="140">Benutzername:</td><td><a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a></td></tr>
  <tr><td class="label">Spitzname:</td><td>%%?CLIENT_CUSTOM_NICK_NAME%%</td></tr>
  <tr><td class="label">Standort:</td><td>%%?CLIENT_COUNTRY_TOOLTIP%%</td></tr>
    <tr><td></td></tr>
  <tr><td class="label">myTS ID:</td><td>%%?CLIENT_MYTEAMSPEAK_ID%%</td></tr>
  <tr><td class="label"><a title="Suche Benutzer. Dies wird einen externen Link öffnen und zu ts3index.com weiterleiten!" class="silent-link" href="https://ts3index.com/?page=searchclient&uid=%%CLIENT_UNIQUE_ID%%">Eindeutige Benutzer ID</a>:</td><td>%%CLIENT_UNIQUE_ID%%</td></tr>
    <tr><td class="label">Benutzer ID:</td><td>%%CLIENT_ID%%</td></tr>
  <tr><td class="label">Datenbank ID:</td><td>%%CLIENT_DATABASE_ID%%</td></tr>
    <tr><td></td></tr>
  <tr title="Datum der ersten Verbindung des Benutzers zum Server"><td class="label">Erste Verbindung:</td><td>%%CLIENT_CREATED%%</td></tr>
  <tr title="Datum der letzten Verbindung des Benutzers zum Server"><td class="label">Letzte Verbindung:</td><td>%%CLIENT_LASTCONNECTED%%</td></tr>
  <tr title="Derzeitige Sitzungsdauer des Benutzers"><td class="label">Verbindungsdauer:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
  <tr title="Summe aller Vebindungen des Benutzers zum Server"><td class="label">Verbindungen:</td><td>%%CLIENT_TOTALCONNECTIONS%%</td></tr>
    <tr><td></td></tr>
  <tr title="%%CLIENT_VERSION%%"><td class="label" valign='bottom'>Version:</td><td>%%CLIENT_VERSION_SHORT%% %%CLIENT_VERSION_STATE%%</td></tr>
  <tr><td class="label">Plattform:</td><td>%%CLIENT_PLATFORM%%</td></tr>
    <tr><td></td></tr>
  <tr>
    <td class="label">Servergruppen:</td>
    <td>
      <div>%%CLIENT_SERVER_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr>
    <td class="label">Kanalgruppen:</td>
    <td>
      <div>%%CLIENT_CHANNEL_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr><td class="label">Sonderstatus:</td><td class="pad-bot">%%??CLIENT_FLAG_CHANNEL_COMMANDER%%<div><!--<img class="vert-mid" src="iconpath:CHANNEL_COMMANDER" /> -->Kanalleiter</div></td></tr>
  <tr><td class="label">Sonderstatus:</td><td class="pad-bot">%%??CLIENT_FLAG_PRIORITY_SPEAKER%%<div><!--<img class="vert-mid" src="iconpath:CAPTURE" /> -->Gespr&auml;chsleiter</div></td></tr>

  %%??CLIENT_FLAG_AWAY%%<tr><td></td></tr>
  <!---- Abwesend Klein (Standard) ---->
  %%??CLIENT_FLAG_AWAY%%<tr><td class="label">Benutzerstatus:</td>
  %%??CLIENT_FLAG_AWAY%%    <td><div class="mar-bot">Abwesend</div></td>
  %%??CLIENT_FLAG_AWAY%%</tr>
  %%??CLIENT_AWAY_MESSAGE%%<tr><td class="label">Abwesenheitsnachricht:</td>
  %%??CLIENT_AWAY_MESSAGE%%  <td class="pad-bot"><div class="mar-bot">%%?CLIENT_AWAY_MESSAGE%%</div></td>
  %%??CLIENT_AWAY_MESSAGE%%</tr>

  %%??CLIENT_FLAG_BADGES%%  <tr><td></td></tr>
    <!---- Abzeichen Klein (Standard) ---->
  %%??CLIENT_FLAG_BADGES%%<tr><td class="label">Aktive Abzeichen:</td>
  %%??CLIENT_FLAG_BADGES%%    <td>
  %%??CLIENT_FLAG_BADGES%%      <div class="mar-bot vert-mid">%%CLIENT_BADGE_ICON_SMALL%%<span title="%%CLIENT_BADGE_DESCRIPTION%%"> %%CLIENT_BADGE_NAME%%</span></div>
  %%??CLIENT_FLAG_BADGES%%    </td>
  %%??CLIENT_FLAG_BADGES%%</tr>

  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%% <tr><td></td></tr>
  <!---- Eingabe-/Ausgabegeräte Klein (Standard) ---->
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%% <tr><td class="label">Audiostatus:</td>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%   <td class="pad-bot">
  %%??CLIENT_FLAG_OUTPUT_HARDWARE_DISABLED%%      <div class="mar-bot"><!--<img class="vert-mid" src="iconpath:OUTPUT_MUTED">&nbsp;-->Lautsprecher/Kopfh&ouml;rer deaktiviert</div>
  %%??CLIENT_FLAG_OUTPUT_MUTED%%      <div class="mar-bot"><!--<img class="vert-mid" src="iconpath:OUTPUT_MUTED" />&nbsp;-->Lautsprecher/Kopfh&ouml;rer stummgeschaltet</div>
  %%??CLIENT_FLAG_INPUT_HARDWARE_DISABLED%%     <div class="mar-bot"><!--<img class="vert-mid" src="iconpath:HARDWARE_INPUT_MUTED" />&nbsp;-->Mikrofon deaktiviert</div>
  %%??CLIENT_FLAG_INPUT_MUTED%%     <div class="mar-bot"><!--<img class="vert-mid" src="iconpath:INPUT_MUTED" />&nbsp;-->Mikrofon stummgeschaltet</div>
  %%??CLIENT_FLAG_LOCAL_MUTED%%     <div class="mar-bot"><!--<img class="vert-mid" src="iconpath:INPUT_MUTED_LOCAL" />&nbsp;-->Lokal stummgeschaltet durch Blockieren</div>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%   </td>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%% </tr>

  %%??CLIENT_DESCRIPTION%%<tr></tr>
  %%??CLIENT_DESCRIPTION%%<tr><td class="label">Beschreibung:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>

  %%??CLIENT_VOLUME_MODIFIER%%<tr></tr>
  %%??CLIENT_VOLUME_MODIFIER%%<tr><td class="label">Lautst&auml;rke:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
</table>
%%??CLIENT_FLAG_AVATAR%%<br /><br />
%%??CLIENT_FLAG_AVATAR%%<span title="Location: %%CLIENT_PATH_AVATAR%%"><img src="%%CLIENT_PATH_AVATAR%%" /></span>
<table><br />%%?PLUGIN_INFO_DATA%%</table>