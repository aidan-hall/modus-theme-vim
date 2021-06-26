vim.o.bg = 'dark'

local colors = {
	none = {'none','none'},
	-- base values
	bg_main = {"#000000",0},
	fg_main = {"#ffffff",255},
	bg_dim = {"#100f10",15},
	fg_dim = {"#e0e6f0",226},
	bg_alt = {"#191a1b",25},
	fg_alt = {"#a8a8a8",169},
	-- specifically for on/off states and must be combined with
	-- themselves, though the backgrounds are also meant to be used with
	-- other "active" values, defined further below; bg-active-accent
	-- can work as a substitute for bg-active
	bg_active = {"#323232",50},
	fg_active = {"#f4f4f4",245},
	bg_inactive = {"#1e1e1e",30},
	fg_inactive = {"#bfc0c4",192},
	-- these special values are intended as alternatives to the base
	-- values for cases where we need to avoid confusion between the
	-- highlighted constructs; they must either be used as pairs based
	-- on their name or each can be combined with {fg,bg}-{main,alt,dim}
	-- always in accordance with their role as background or foreground
	bg_special_cold = {"#203448",36},
	fg_special_cold = {"#c6eaff",205},
	bg_special_mild = {"#00322e",8},
	fg_special_mild = {"#bfebe0",199},
	bg_special_warm = {"#382f27",54},
	fg_special_warm = {"#f8dec0",244},
	bg_special_calm = {"#392a48",55},
	fg_special_calm = {"#fbd6f4",247},
	-- foregrounds that can be combined with bg-main, bg-dim, bg-alt
	red = {"#ff8059",235},
	red_alt = {"#f4923b",227},
	red_alt_other = {"#ff9977",239},
	red_faint = {"#ffa0a0",241},
	red_alt_faint = {"#f5aa80",233},
	red_alt_other_faint = {"#ff9fbf",241},
	green = {"#44bc44",85},
	green_alt = {"#70c900",122},
	green_alt_other = {"#00cd68",31},
	green_faint = {"#88cf88",147},
	green_alt_faint = {"#a8cf88",174},
	green_alt_other_faint = {"#88cfaf",147},
	yellow = {"#eecc00",229},
	yellow_alt = {"#cfdf30",207},
	yellow_alt_other = {"#f0ce43",233},
	yellow_faint = {"#d2b580",205},
	yellow_alt_faint = {"#cabf77",200},
	yellow_alt_other_faint = {"#d0ba95",205},
	blue = {"#2fafff",70},
	blue_alt = {"#79a8ff",131},
	blue_alt_other = {"#00bcff",32},
	blue_faint = {"#92baff",155},
	blue_alt_faint = {"#a0acf5",164},
	blue_alt_other_faint = {"#87c8ff",148},
	magenta = {"#feacd0",243},
	magenta_alt = {"#f78fe7",233},
	magenta_alt_other = {"#b6a0ff",182},
	magenta_faint = {"#e0b2d6",219},
	magenta_alt_faint = {"#ef9fe4",229},
	magenta_alt_other_faint = {"#cfa6ff",203},
	cyan = {"#00d3d0",34},
	cyan_alt = {"#4ae8fc",100},
	cyan_alt_other = {"#6ae4b9",125},
	cyan_faint = {"#90c4ed",154},
	cyan_alt_faint = {"#a0bfdf",167},
	cyan_alt_other_faint = {"#a4d0bb",172},
	-- these foreground values can only be combined with bg-main and are
	-- thus not suitable for general purpose highlighting
	red_intense = {"#fe6060",230},
	orange_intense = {"#fba849",237},
	green_intense = {"#4fe42f",99},
	yellow_intense = {"#f0dd60",235},
	blue_intense = {"#4fafff",97},
	magenta_intense = {"#ff62d4",233},
	purple_intense = {"#9f80ff",158},
	cyan_intense = {"#3fdfd0",89},
	-- those foregrounds are meant exclusively for bg-active, bg-inactive
	red_active = {"#ffa7ba",243},
	green_active = {"#70d73f",126},
	yellow_active = {"#dbbe5f",213},
	blue_active = {"#34cfff",78},
	magenta_active = {"#d5b1ff",210},
	cyan_active = {"#00d8b4",34},
	-- subtle should be combined with fg-dim
	-- and intense with fg_main
	-- red_subtle_bg = {"#762422",105},
	red_intense_bg = {"#a4202a",143},
	-- green_subtle_bg = {"#2f4a00",50},
	green_intense_bg = {"#006800",14},
	-- yellow_subtle_bg = {"#604200",90},
	yellow_intense_bg = {"#874900",124},
	-- blue_subtle_bg = {"#10387c",24},
	blue_intense_bg = {"#2a40b8",48},
	-- magenta_subtle_bg = {"#49366e",71},
	magenta_intense_bg = {"#7042a2",107},
	-- cyan_subtle_bg = {"#00415e",11},
	cyan_intense_bg = {"#005f88",16},
	-- red_fringe_bg = {"#8f1f4b",126},
	-- green_fringe_bg = {"#006700",14},
	-- yellow_fringe_bg = {"#6f4f00",104},
	-- blue_fringe_bg = {"#3f33af",64},
	-- magenta_fringe_bg = {"#6f2f89",103},
	-- cyan_fringe_bg = {"#004f8f",14},
	-- red_graph_0_bg = {"#af0404",148},
	-- red_graph_1_bg = {"#801f2f",113},
	-- green_graph_0_bg = {"#24ba2f",57},
	-- green_graph_1_bg = {"#0f8f07",32},
	-- yellow_graph_0_bg = {"#ffd03e",245},
	-- yellow_graph_1_bg = {"#d7d800",211},
	-- blue_graph_0_bg = {"#406fff",75},
	-- blue_graph_1_bg = {"#2f50c8",55},
	-- magenta_graph_0_bg = {"#af7bee",170},
	-- magenta_graph_1_bg = {"#7f59cf",124},
	-- cyan_graph_0_bg = {"#47dcfa",96},
	-- cyan_graph_1_bg = {"#0bc0df",41},
	red_refine_bg = {"#77002a",101},
	red_refine_fg = {"#ffb9ab",245},
	green_refine_bg = {"#00422a",10},
	green_refine_fg = {"#9ff0cf",172},
	yellow_refine_bg = {"#693200",95},
	yellow_refine_fg = {"#e2d980",224},
	blue_refine_bg = {"#242679",38},
	blue_refine_fg = {"#8ec6ff",153},
	magenta_refine_bg = {"#71206a",102},
	magenta_refine_fg = {"#ffcaf0",249},
	cyan_refine_bg = {"#004065",11},
	cyan_refine_fg = {"#8ae4f2",154},
	red_nuanced_bg = {"#2c0614",38},
	red_nuanced_fg = {"#ffcccc",248},
	green_nuanced_bg = {"#001904",3},
	green_nuanced_fg = {"#b8e2b8",191},
	yellow_nuanced_bg = {"#221000",30},
	yellow_nuanced_fg = {"#dfdfb0",223},
	blue_nuanced_bg = {"#0f0e39",15},
	blue_nuanced_fg = {"#bfd9ff",197},
	magenta_nuanced_bg = {"#230631",31},
	magenta_nuanced_fg = {"#e5cfef",227},
	cyan_nuanced_bg = {"#041529",7},
	cyan_nuanced_fg = {"#a8e5e5",179},
	bg_hl_line = {"#151823",21},
	bg_hl_line_intense = {"#2f2f2f",47},
	-- bg_hl_alt = {"#181732",24},
	-- bg_hl_alt_intense = {"#282e46",41},
	bg_paren_match = {"#5f362f",88},
	bg_paren_match_intense = {"#7416b5",105},
	bg_region = {"#3c3c3c",60},
	bg_tab_bar = {"#2c2c2c",44},
	bg_tab_active = {"#0e0e0e",14},
	bg_tab_inactive = {"#3d3d3d",61},
	bg_tab_inactive_alt = {"#595959",89},
	fg_tab_accent = {"#5ac3cf",108},
	-- red_tab = {"#ffc0bf",246},
	-- green_tab = {"#88ef88",151},
	-- yellow_tab = {"#d2e580",212},
	-- orange_tab = {"#f5ca80",238},
	-- blue_tab = {"#92d9ff",159},
	-- cyan_tab = {"#60e7e0",118},
	-- magenta_tab = {"#ffb8ff",247},
	-- purple_tab = {"#cfcaff",209},
	fg_escape_char_construct = {"#e7a59a",221},
	fg_escape_char_backslash = {"#abab00",168},
	fg_lang_error = {"#ef8690",223},
	fg_lang_warning = {"#b0aa00",172},
	fg_lang_note = {"#9d9def",160},
	fg_lang_underline_error = {"#ff4a6f",228},
	fg_lang_underline_warning = {"#d0de00",206},
	fg_lang_underline_note = {"#5f6fff",101},
	fg_window_divider_inner = {"#646464",100},
	fg_window_divider_outer = {"#969696",151},
	fg_unfocused = {"#93959b",148},
	fg_docstring = {"#b0d6f5",184},
	fg_comment_yellow = {"#cab98f",199},
	bg_header = {"#212121",33},
	fg_header = {"#dddddd",222},
	bg_whitespace = {"#101424",17},
	fg_whitespace = {"#aa9e9f",169},
	bg_diff_heading = {"#304466",52},
	fg_diff_heading = {"#dae7ff",222},
	bg_diff_added = {"#0a280a",14},
	fg_diff_added = {"#94ba94",154},
	bg_diff_added_deuteran = {"#001a3f",5},
	fg_diff_added_deuteran = {"#c4cdf2",199},
	bg_diff_changed = {"#2a2000",39},
	fg_diff_changed = {"#b0ba9f",178},
	bg_diff_removed = {"#40160f",57},
	fg_diff_removed = {"#c6adaa",195},
	bg_diff_refine_added = {"#005a36",13},
	fg_diff_refine_added = {"#e0f6e0",228},
	bg_diff_refine_added_deuteran = {"#234f8f",43},
	fg_diff_refine_added_deuteran = {"#dde4ff",224},
	bg_diff_refine_changed = {"#585800",86},
	fg_diff_refine_changed = {"#ffffcc",255},
	bg_diff_refine_removed = {"#852828",118},
	fg_diff_refine_removed = {"#ffd9eb",251},
	-- bg_diff_focus_added = {"#203d20",36},
	-- fg_diff_focus_added = {"#b4ddb4",187},
	-- bg_diff_focus_added_deuteran = {"#00405f",11},
	-- fg_diff_focus_added_deuteran = {"#bfe4ff",199},
	-- bg_diff_focus_changed = {"#4a3a10",70},
	-- fg_diff_focus_changed = {"#d0daaf",210},
	-- bg_diff_focus_removed = {"#5e2526",85},
	-- fg_diff_focus_removed = {"#eebdba",231},
	-- bg_mark_sel = {"#002f2f",7},
	-- fg_mark_sel = {"#60cfa2",113},
	-- bg_mark_del = {"#5a0000",75},
	-- fg_mark_del = {"#ff99aa",240},
	-- bg_mark_alt = {"#3f2210",58},
	-- fg_mark_alt = {"#f0aa20",227}
}

require('modus-themes.highlights').core_highlights(colors)
require('modus-themes.highlights').set_terminal(colors)

if vim.g.modus_moody_enable == 1 then
	require('modus-themes.galaxyline').set_statusline(colors)
end

