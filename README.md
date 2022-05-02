CS:GO Sourcemod plugin to set the correct viewangles after simulation for discarded UserCmds.

This plugin fixes an exploit related to CPlayerMove::RunCommand / CBasePlayer::PlayerRunCommand used to desynchronize hitboxes by malicious clients.

⚠️ This does NOT fix anything related to the game's broken animation code.

installing:

Your server has to run sourcemod, installing it is explained in **[this guide](https://wiki.alliedmods.net/Installing_SourceMod_(simple))**

1) Download the Latest release from **[Here](https://github.com/r4klatif/extended-angle-fix/releases/)**.
   * Alternatively, you can use **[sourcemods online compiler](http://www.sourcemod.net/compiler.php)** to compile the plugin.
2) Navigate to the folder on your server located at 'csgo/addons/sourcemod/plugins'.
3) Place the plugin there.
4) Make sure the plugin is running using 'sm plugins list', if it isn't configure your server to load the plugin, or load it manually.
