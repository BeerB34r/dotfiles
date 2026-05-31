function os.capture(cmd, raw)
	local f = assert(io.popen(cmd, "r"))
	local s = assert(f:read("*a"))
	f:close()
	if raw then
		return s
	end
	s = string.gsub(s, "^%s+", "")
	s = string.gsub(s, "%s+$", "")
	s = string.gsub(s, "[\n\r]+", "")
	return s
end
local hostname = os.capture("hostname")

if hostname == "jason" then
	hl.monitor({ -- main
		output = "DP-1",
		mode = "1920x1080@144",
		position = "0x0",
		scale = 1,
	})
	hl.monitor({ -- secondary
		output = "DP-2",
		mode = "1920x1080@144",
		position = "-1080x-400",
		scale = 1,
		transform = 1,
	})
elseif hostname == "scrying-orb" then
	hl.monitor({ -- laptop screen
		output = "eDP-1",
		mode = "1920x1080@144",
		position = "0x0",
		scale = 1,
	})
end
