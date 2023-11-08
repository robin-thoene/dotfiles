<!--
TeamSpeak 3 Channel Infoframe Template (EN) 
Copyright 2009-2013 (c) TeamSpeak Systems GmbH
-->

%%??CHANNEL_FLAG_NORMAL%%<table id="info" width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td colspan="2" class="del-text"><span>Channel will be deleted in: %%?TEMP_CHANNEL_TIME_TO_DELETE%%</span></td></tr>
%%??TEMP_CHANNEL_TIME_TO_DELETE%%  <tr><td colspan="2"><hr /></td></tr>
%%??CHANNEL_FLAG_NORMAL%%	<tr title="%%CHANNEL_NAME_PLAIN%%<br/><br/>Channel Order: %%CHANNEL_ORDER%%"><td class="label" width="129">Channel Name:</td>
%%??CHANNEL_FLAG_NORMAL%%		<td>
%%??CHANNEL_FLAG_NORMAL%%      <a href="channelid://%%CHANNEL_ID%%%%" class="TextMessage_ChannelLink">
%%??CHANNEL_FLAG_NORMAL%%      %%??CHANNEL_ICON%%<img class="vert-mid" src="%%CHANNEL_ICON%%?size=16x16" />&nbsp;
%%??CHANNEL_FLAG_NORMAL%%      %%CHANNEL_NAME%%</a>
%%??CHANNEL_FLAG_NORMAL%%    </td>
%%??CHANNEL_FLAG_NORMAL%% 	</tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Channel ID:</td><td>%%CHANNEL_ID%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Codec:</td><td>%%CHANNEL_CODEC%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Codec Quality:</td><td>%%CHANNEL_CODEC_QUALITY%% (estimated bitrate: %%CHANNEL_CODEC_BITRATE%%/s)</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Type:</td><td class="blue">%%?CHANNEL_FLAGS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%    <p></p>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Current Clients:</td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Subscription Status:</td><td>%%CHANNEL_SUBSCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td class="label">Voice Data Encryption:</td><td class="redder">
%%??CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%<span class="green"><img class="vert-mid" src="iconpath:APPLY?size=16x16" />&nbsp;
%%??CHANNEL_FLAG_NORMAL%%        %%CHANNEL_VOICE_DATA_ENCRYPTED%%</span>
</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table>

%%??CHANNEL_FLAG_NORMAL%%<table>
%%??CHANNEL_FLAG_NORMAL%%  <tr title="Request Talk Power to be able to talk in this Channel."><br/><td class="label" width="129">Needed Talk Power:</td><td class="redder"><img class="vert-mid" src="iconpath:MODERATED?size=16x16" />&nbsp;%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr></table>

%%??CHANNEL_FLAG_NORMAL%%<table width="100%">
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><span class="topic">%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_NORMAL%%  <tr><td><hr /><p />%%?CHANNEL_DESCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_SPACER%%  <tr><td class="topic"><span>%%?CHANNEL_TOPIC%%</span></td></tr>
%%??CHANNEL_FLAG_SPACER%%%%??CHANNEL_TOPIC%%%%??CHANNEL_DESCRIPTION%%<hr />
%%??CHANNEL_FLAG_SPACER%%  <tr><td><p/>%%?CHANNEL_DESCRIPTION%%</td></tr>
%%??CHANNEL_FLAG_NORMAL%%</table>

%%??CHANNEL_FLAG_NORMAL%%<br />%%?PLUGIN_INFO_DATA%%<br />