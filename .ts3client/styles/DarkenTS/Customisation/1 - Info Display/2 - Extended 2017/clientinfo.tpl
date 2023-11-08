<style type="text/css">
    @import url('styles/DarkenTS/style.css');
</style>

<body>
<table id="info">
  <tr title="%%CLIENT_VERSION%%"><td class="label" valign='bottom'>%%TR_CLIENT_VERSION%%:</td><td>%%CLIENT_VERSION_SHORT%% %%CLIENT_VERSION_STATE%%</td></tr>
<tr></tr>
  <tr><td class="label">%%TR_CLIENT_CREATED%%:</td><td>%%CLIENT_CREATED%%</td></tr>
  <tr><td class="label">%%TR_CLIENT_LASTCONNECTED%%:</td><td>%%CLIENT_LASTCONNECTED%%</td></tr>
  <tr><td class="label">%%TR_CLIENT_CONNECTED_SINCE%%:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
  <tr><td class="label">%%TR_CLIENT_TOTALCONNECTIONS%%:</td><td>%%CLIENT_TOTALCONNECTIONS%%</td></tr>
  <tr></tr>
  <tr>
    <td class="label">%%TR_CLIENT_SERVER_GROUPS%%:</td>
    <td>
      <div>%%CLIENT_SERVER_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr>
    <td class="label">%%TR_CLIENT_CHANNEL_GROUP%%:</td>
    <td>
      <div>%%CLIENT_CHANNEL_GROUP_NAME%%</div>
    </td>
  </tr>
  <tr></tr><tr><td class="label">%%TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
  <tr></tr><tr><td class="label">%%TR_CLIENT_VOLUME_MODIFIER%%:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>

<table>
  <br /><tr><td class="red">**** %%CLIENT_NAME%% requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td></tr>
  <tr><td class="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
<tr></tr>
</table>

<table><br />%%?PLUGIN_INFO_DATA%%</table>

<table><tr><td></td></tr></table>

</body>