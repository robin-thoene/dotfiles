<!--
TeamSpeak 3 Client Tooltip Template
Copyright 2017 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.
-->

<!--<style type="text/css">
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

td.noborder {
    padding: 0px;
}

.blue {
  color: rgb(57,165,221);
}

.red {
  color: rgb(202,58,58);
}
</style>

<table border="1" width="100%">
<tr><td class="label">%%TR_CLIENT_NAME%%:</td><td><span class="blue">%%CLIENT_NAME%%</span></td><td rowspan="3" class="noborder avatar">%%CLIENT_AVATAR%%</td></tr>-->
<!--<tr><td class="label">%%TR_CLIENT_PLATFORM%%</td><td>%%CLIENT_PLATFORM%%</td></tr>
<tr><td class="label">%%TR_CLIENT_VERSION%%</td><td>%%CLIENT_VERSION_SHORT%% %%CLIENT_VERSION_STATE%%</td></tr>
<tr><td class="label"><hr/><p/>%%TR_CLIENT_CREATED%%</td><td><hr/><p/>%%CLIENT_CREATED%%</td></tr>
<tr><td class="label">%%TR_CLIENT_LASTCONNECTED%%</td><td>%%CLIENT_LASTCONNECTED%%</td></tr>--
<tr><td class="label">%%TR_CLIENT_CONNECTED_SINCE%%:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
<tr><td class="label">%%TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
<--<tr><td class="label"><hr/><p/>%%TR_CLIENT_DESCRIPTION%%:</td><td><hr/><p/>%%?CLIENT_DESCRIPTION%%</td></tr>--



<tr><td></td></tr>
<tr><td class="label">Badge showcase:</td>
   <td>
    <table border="0">
       <tr><td class="pad-bot">%%CLIENT_BADGE_ICON_LARGE%%</td><td class="pad-bot"><b>%%CLIENT_BADGE_NAME%%</b><br />%%CLIENT_BADGE_DESCRIPTION%%</td></tr>
      </table>
   </td>
</tr>


  <tr><td></td></tr>
<tr><td class="label">Status Input/Output:</td>
    <td>
      <table border="0">
        <tr><td class="pad-bot"><img src="iconpath:HARDWARE_OUTPUT_MUTED?size=32x32" /></td><td class="pad-bot mid">Speakers/Headphones Disabled</td></tr>
        <tr><td class="pad-bot"><img src="iconpath:OUTPUT_MUTED?size=32x32" /></td><td class="pad-bot mid">Speakers/Headphones Muted</td></tr>
        <tr><td class="pad-bot"><img class="test" src="iconpath:HARDWARE_INPUT_MUTED?size=32x32" /></td><td class="pad-bot mid">Microphone Disabled</td></tr>
        <tr><td class="pad-bot"><img src="iconpath:INPUT_MUTED?size=32x32" /></td><td class="pad-bot mid">Microphone Muted</td></tr>
        <tr class="pad-bot"><td class="pad-bot"><img src="iconpath:INPUT_MUTED_LOCAL?size=32x32" /></td><td class="mid">Locally Muted via Blocking</td></tr>
      </table>
     </td>
</tr>
</table>

<table border="1">
<tr>
<td class="noborder avatar">%%?CLIENT_AVATAR%%</td>
<td class="noborder">
  </td>
</tr>
</table>

<table border="1">
<tr>
<td class="noborder avatar">%%?CLIENT_AVATAR%%</td>
<td class="noborder">
<table width="300">
<tr>
    <td class="label">%%TR_CLIENT_NAME%%:</td>
  <td>
    <img src="%%?CLIENT_COUNTRY_IMAGE%%" alt="" />&nbsp;&nbsp;
    <span class="blue">%%CLIENT_NAME%%</span>
    &nbsp;<span class="blue">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
    </td>
</tr>
<tr><td class="label">%%TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
<tr>
    <td class="label">%%TR_CLIENT_CONNECTED_SINCE%%:</td>
    <td>%%CLIENT_CONNECTED_SINCE%%</td>
</tr>
</table>
</td></tr>
</table>-->