<style type="text/css">
    @import url('styles/DarkenTS/style.css');
</style>

<table id="info">
  <tr>
    <td class="label">%%TR_SERVER_ADDRESS%%:</td>
    <td>%%SERVER_ADDRESS%%
		:%%?SERVER_PORT%%
	 </td>
  </tr>
  <tr><td class="Label">%%TR_SERVER_NICKNAMES%%:</td><td>%%?SERVER_NICKNAMES%%</td></tr><tr>
  <tr title="%%SERVER_VERSION%%">
    <td class="label" valign='bottom'>%%TR_SERVER_VERSION%%:</td>
    <td>%%SERVER_VERSION_SHORT%%</td>
  </tr>
  <tr>
    <td class="label">%%TR_SERVER_LICENSE%%:</td>
    <td>%%SERVER_LICENSE%%</td>
  </tr>
<tr></tr>
  <tr>
    <td class="label">%%TR_SERVER_UPTIME%%:</td>
    <td>%%SERVER_UPTIME%%</td>
  </tr>
<tr></tr>
  <tr>
    <td class="label">%%TR_SERVER_CHANNELS_ONLINE%%:</td>
    <td>%%SERVER_CHANNELS_ONLINE%%</td>
  </tr>
  <tr title="%%TR_SERVER_CLIENT_CONNECTIONS%%: %%SERVER_CLIENT_CONNECTIONS%%">
    <td class="label">%%TR_SERVER_CLIENTS_ONLINE%%:</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td>
  </tr>
</table>

<table id="list">
  <tr>
    <td class="space label">
      <a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Refresh</a>
      <a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">Refresh</a>
    </td>
  </tr>
</table>

%%?PLUGIN_INFO_DATA%%<br />
