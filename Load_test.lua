local file = gg.makeRequest("https://raw.githubusercontent.com/KinbunLuk/public_script/master/main.lua")
  local load = load(file.content)
  if load == nil then
    os.exit()
  end
  load()