os.execute('cls')
io.write("Hello! Welcome to roblox fixer. Chose between these 2 options to get Started.\n\n1 - Basic fix\n2 - Hard fix (May take some time)\n\n> ")
local out = io.read()
if(out == "1") then
	os.execute("cls")
	print("Please wait while the basic fix runs.")
	os.execute("cd %appdata%/../Local/Roblox && del GlobalBasicSettings_13.xml /f")
	print("Done!   If this option don't work, consider using hard fix.")
	os.execute("pause")
	
else if(out == "2") then
	os.execute('cls')
	io.write("Hard fix will delete and Re-install Roblox, are you sure? (y/n)\n\n> ")
	local res = io.read()
	if(res=="y") then
		dir = os.getenv("PWD") or io.popen("cd"):read()
		os.execute("cls")
		print("# - Hard fix in progress, please wait.")
		os.execute("cd %appdata%/../Local/ && rmdir Roblox /s")
		os.execute('cls')
	print("# - Hard fix in progress, please wait.")
	print("# - Setting up Roblox...")
	os.execute(dir.."/storage/RobloxPlayerLauncher.exe")
	print("# - Hard fix done!")
	os.execute("pause")

		end
	end
end