<!--
TeamSpeak 3 Server Infoframe Template (EN)
Copyright 2009-2013 (c) TeamSpeak Systems GmbH
-->

<table id="info">
  <tr><td class="label" width="129">Server Name:</td><td><a href="channelid://0" class="TextMessage_ServerLink vert-mid">%%?SERVER_ICON_SCALED%% %%SERVER_NAME%%</a></td></tr>
  <tr><td class="label">Server Address: <a title="Locate GEO location. This will open an external link and forward you to tsindex.com!" class="silent-link" href="https://ts3index.com/geo/#%%SERVER_ADDRESS%%"><img class="vert-mid" src="iconpath:MESSAGE_INFO?size=10x10" /></a></td><td>%%SERVER_ADDRESS%%
    :%%?SERVER_PORT%%</a></td></tr>
  <tr><td class="Label">Server Nickname(s):</td><td>%%?SERVER_NICKNAMES%%</td></tr>
  <tr><td class="label">Unique ID: <a title="Lookup server in server list. This will open an external link and forward you to tsindex.com!" class="silent-link" href="https://ts3index.com/?page=serverlist&uid=%%SERVER_UNIQUE_ID%%"><img class="vert-mid" src="iconpath:MESSAGE_INFO?size=10x10" /></a></td><td>%%SERVER_UNIQUE_ID%%</a></td></tr>
  <tr title="%%SERVER_VERSION%%"><td class="label" valign='bottom'>Version:</td><td>%%SERVER_VERSION_SHORT%%</td></tr>
  <tr><td class="label">Platform:</td><td><img class="vert-mid" src="styles:/DarkenTS/gfx/os/%%SERVER_PLATFORM%%.svg" width="16" /> %%SERVER_PLATFORM%%</td></tr>
  <tr><td class="label">License:</td><td>%%SERVER_LICENSE%%</td></tr>
    <p></p>
  <tr><td class="label">Uptime:</td><td>%%SERVER_UPTIME%%</td></tr>
    <p></p>
  <tr><td class="label">Host Message:</td><td>%%?SERVER_HOSTMESSAGE%%</td></tr>
  <tr><td class="label">Welcome Message:</td><td>%%?SERVER_WELCOMEMESSAGE%%</td></tr>
    <p></p>
  <tr><td class="label">Current Channels:</td><td>%%SERVER_CHANNELS_ONLINE%%</td></tr>
  <tr title="Total Client Connections: %%SERVER_CLIENT_CONNECTIONS%%"><td class="label">Current Clients:</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td></tr>
  <tr title="Total ServerQuery Connections: %%SERVER_QUERY_CLIENT_CONNECTIONS%%"><td class="label">Current Queries:</td><td>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td></tr>
</table>

<table id="list">
  <tr><td class="space label">
      <a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Refresh</a>
      <a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">Refresh</a>
    </td></tr>
</table>

%%?PLUGIN_INFO_DATA%%<br />

