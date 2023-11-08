<!--
TeamSpeak 3 Client Infoframe Template
Copyright (c) TeamSpeak Systems GmbH

%%AVATAR_IMAGE_DONT_APPEND%%1
%%STATUS_ICONS_DONT_APPEND%%1
-->

<table id="info" border="0" width="100%">
  %%??CLIENT_FLAG_RECORDING%%  <tr><td colspan="2"><hr /></td></tr>
  %%??CLIENT_FLAG_RECORDING%%  <tr><td colspan="2" class="rec-text"><span class="vert-mid"><img src="iconpath:MSGBOX_CRITICAL?size=32x32" /> Achtung. Benutzer nimmt auf! <img src="iconpath:MSGBOX_CRITICAL?size=32x32" /></span></td></tr>
  %%??CLIENT_FLAG_RECORDING%%  <tr><td colspan="2"><hr /></td></tr>

  %%??CLIENT_TALK_REQUEST_TIME%%<tr class="yellow"><td class="label bolf" colspan="2">Redebefugnisanfrage</td></tr>
  <tr class="yellow"><td class="label">Zeitpunkt:</td><td>%%?CLIENT_TALK_REQUEST_TIME%%</td></tr>
  <tr class="yellow"><td class="label">Begr&uuml;ndung:</td><td>%%?CLIENT_TALK_REQUEST_MSG%%</td></tr>
  %%??CLIENT_TALK_REQUEST_TIME%%<p></p>

  <tr><td class="label" width="152">Benutzername:</td>
    <td>
      <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">
      %%??CLIENT_ICON%%<img class="vert-mid" src="%%CLIENT_ICON%%?size=16x16" />&nbsp;
      %%CLIENT_NAME%%</a>
    </td>
  </tr>
  <tr><td class="label">Spitzname:</td><td>%%?CLIENT_CUSTOM_NICK_NAME%%</td></tr>
  <tr><td class="label">Standort:</td><td>%%?CLIENT_COUNTRY_IMAGE_SCALED%% %%?CLIENT_COUNTRY_TOOLTIP%%</td></tr>
    <p></p>
  <tr><td class="label">myTS ID:</td><td>%%?CLIENT_MYTEAMSPEAK_ID%%</td></tr>
  <tr><td class="label">Eindeutige Benutzer ID: <a title="Suche Benutzer. Dies wird einen externen Link öffnen und zu ts3index.com weiterleiten!" class="silent-link" href="https://ts3index.com/?page=searchclient&uid=%%CLIENT_UNIQUE_ID%%"><img class="vert-mid" src="iconpath:MESSAGE_INFO?size=10x10" /></a></td><td>%%CLIENT_UNIQUE_ID%%</td></tr>
  <tr><td class="label">Benutzer ID:</td><td>%%CLIENT_IDe%%</td></tr>
  <tr><td class="label">Datenbank ID:</td><td>%%CLIENT_DATABASE_ID%%</td></tr>
    <p></p>
  <tr title="Datum der ersten Verbindung des Benutzers zum Server"><td class="label">Erste Verbindung:</td><td>%%CLIENT_CREATED%%</td></tr>
  <tr title="Datum der letzten Verbindung des Benutzers zum Server"><td class="label">Letzte Verbindung:</td><td>%%CLIENT_LASTCONNECTED%%</td></tr>
  <tr title="Derzeitige Sitzungsdauer des Benutzers"><td class="label">Verbindungsdauer:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
  <tr title="Summe aller Vebindungen des Benutzers zum Server"><td class="label">Verbindungen:</td><td>%%CLIENT_TOTALCONNECTIONS%%</td></tr>
    <p></p>
  <tr title="%%CLIENT_VERSION%%"><td class="label" valign='bottom'>Version:</td><td>%%CLIENT_VERSION_STATE%% %%CLIENT_VERSION%%</td></tr>
  <tr><td class="label">Plattform:</td><td><img class="vert-mid" src="styles:/DarkenTS/gfx/os/%%CLIENT_PLATFORM%%.svg" width="16" /> %%CLIENT_PLATFORM%%</td></tr>
    <p></p>
  <tr><td class="label">Servergruppen:</td>
    <td>
      <div class="mar-bot"><span class="vert-mid">%%CLIENT_SERVER_GROUP_ICON%%</span> %%CLIENT_SERVER_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr>
    <td class="label">Kanalgruppen:</td>
    <td>
      <div class="mar-bot"><span class="vert-mid">%%CLIENT_CHANNEL_GROUP_ICON%%</span> %%CLIENT_CHANNEL_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr><td class="label">Sonderstatus:</td><td class="pad-bot">%%??CLIENT_FLAG_CHANNEL_COMMANDER%%<div><img class="vert-mid" src="iconpath:CHANNEL_COMMANDER" /> Kanalleiter</div></td></tr>
  <tr><td class="label">Sonderstatus:</td><td class="pad-bot">%%??CLIENT_FLAG_PRIORITY_SPEAKER%%<div><img class="vert-mid" src="iconpath:CAPTURE" /> Gespr&auml;chsleiter</div></td></tr>
  %%??CLIENT_TALK_POWER%%<tr>
  %%??CLIENT_TALK_POWER%%  <td class="label">Redebefugnis:</td>
  %%??CLIENT_TALK_POWER%%  <td>
  %%??CLIENT_TALK_POWER%%    <div><img class="vert-mid" src="iconpath:MODERATED?size=16x16" />&nbsp;%%CLIENT_TALK_POWER%%</div>
  %%??CLIENT_TALK_POWER%%  </td>
  %%??CLIENT_TALK_POWER%%</tr>

  %%??CLIENT_FLAG_AWAY%%  <p></p>
  %%??CLIENT_FLAG_AWAY%%<tr><td class="label">Benutzerstatus:</td>
  %%??CLIENT_FLAG_AWAY%%    <td>
  %%??CLIENT_FLAG_AWAY%%      <table class="noborder">
  %%??CLIENT_FLAG_AWAY%%        <tr><td class="pad-bot"><img class="vert-mid" src="iconpath:AWAY?size=32x32"></td><td class="pad-bot" valign="middle">
  %%??CLIENT_AWAY_MESSAGE%%       <b>
  %%??CLIENT_FLAG_AWAY%%          &nbsp;Abwesend
  %%??CLIENT_AWAY_MESSAGE%%       </b>
  %%??CLIENT_AWAY_MESSAGE%%       <br />&nbsp;%%?CLIENT_AWAY_MESSAGE%%</td></tr>
  %%??CLIENT_FLAG_AWAY%%      </table>
  %%??CLIENT_FLAG_AWAY%%    </td></tr>

  %%??CLIENT_FLAG_BADGES%%  <p></p>
  %%??CLIENT_FLAG_BADGES%%<tr><td class="label">Aktive Abzeichen:</td>
  %%??CLIENT_FLAG_BADGES%%    <td>
  %%??CLIENT_FLAG_BADGES%%      <table class="noborder">
  %%??CLIENT_FLAG_BADGES%%        <tr><td class="pad-bot">%%CLIENT_BADGE_ICON_LARGE%%</td><td class="pad-bot"><b>%%CLIENT_BADGE_NAME%%</b><br />%%CLIENT_BADGE_DESCRIPTION%%</td></tr>
  %%??CLIENT_FLAG_BADGES%%      </table>
  %%??CLIENT_FLAG_BADGES%%    </td>
  %%??CLIENT_FLAG_BADGES%%</tr>

  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%<p></p>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%<tr><td class="label">Audiostatus:</td>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%    <td class="pad-bot">
  %%??CLIENT_FLAG_OUTPUT_HARDWARE_DISABLED%%     <div class="mar-bot"><img class="vert-mid" src="iconpath:OUTPUT_MUTED?size=32x32">&nbsp;Lautsprecher/Kopfh&ouml;rer deaktiviert</div>
  %%??CLIENT_FLAG_OUTPUT_MUTED%%     <div class="mar-bot"><img class="vert-mid" src="iconpath:OUTPUT_MUTED?size=32x32" />&nbsp;Lautsprecher/Kopfh&ouml;rer stummgeschaltet</div>
  %%??CLIENT_FLAG_INPUT_HARDWARE_DISABLED%%    <div class="mar-bot"><img class="vert-mid" src="iconpath:HARDWARE_INPUT_MUTED?size=32x32" />&nbsp;Mikrofon deaktiviert</div>
  %%??CLIENT_FLAG_INPUT_MUTED%%    <div class="mar-bot"><img class="vert-mid" src="iconpath:INPUT_MUTED?size=32x32" />&nbsp;Mikrofon stummgeschaltet</div>
  %%??CLIENT_FLAG_LOCAL_MUTED%%    <div class="mar-bot"><img class="vert-mid" src="iconpath:INPUT_MUTED_LOCAL?size=32x32" />&nbsp;Lokal stummgeschaltet durch Blockieren</div>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%  </td>
  %%??CLIENT_FLAG_ANY_MUTED_OR_DISABLED%%</tr>

  %%??CLIENT_DESCRIPTION%%<p></p>
  %%??CLIENT_DESCRIPTION%%<tr><td class="label">Beschreibung:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>

  %%??CLIENT_VOLUME_MODIFIER%%<p></p>
  %%??CLIENT_VOLUME_MODIFIER%%<tr><td class="label">Lautst&auml;rkenmodifikation:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
</table>
%%??CLIENT_FLAG_AVATAR%%<br /><br />
%%??CLIENT_FLAG_AVATAR%%<span title="Location: %%CLIENT_PATH_AVATAR%%"><img src="%%CLIENT_PATH_AVATAR%%" /></span>
<table><br />%%?PLUGIN_INFO_DATA%%</table>