-- DMS user keybind overrides (edit via Control Center or dms; do not remove this header)

hl.unbind("SUPER + Return")
hl.bind("SUPER + Return", hl.dsp.exec_cmd("ghostty"), { description = "ghostty" })
hl.unbind("SUPER + T")

hl.unbind("SUPER + G")
hl.bind(
	"SUPER + G",
	hl.dsp.exec_cmd("exec chromium-browser --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm"),
	{ description = "gmail" }
)

hl.unbind("SUPER + M")
hl.bind("SUPER + M", hl.dsp.exec_cmd("spotify"), { description = "Spotify" })

hl.unbind("SUPER + SHIFT + B")

hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("chromium-browser"), { description = "Chromium" })
