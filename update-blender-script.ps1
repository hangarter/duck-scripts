$unityFolders = Resolve-Path "./*" | Select -ExpandProperty Path;foreach($unityFolder in $unityFolders){cd "c:\Program Files\Unity\Hub\Editor";$toolsFolder = Join-Path -Path $unityFolder -ChildPath 'Editor\Data\tools';cd $toolsFolder;$scriptPath = "$toolsFolder\Unity-BlenderToFBX.py";$unityBlenderScript = Get-Content $scriptPath;$newContent = $unityBlenderScript.replace('bake_anim_use_nla_strips=False','bake_anim_use_nla_strips=True').replace('bake_anim_use_all_actions=False', 'bake_anim_use_all_actions=True');Set-Content -Path $scriptPath -Value $newContent}