local ls = require("luasnip")
local lse = require("luasnip.extras")
local lsef = require("luasnip.extras.fmt")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = lse.lambda
local rep = lse.rep
local p = lse.partial
local m = lse.match
local n = lse.nonempty
local dl = lse.dynamic_lambda
local fmt = lsef.fmt
local fmta = lsef.fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

ls.add_snippets("cpp", {
	s("ocf header", f(function(args, snip)
		local res, env = {}, snip.env
		local guard = env.TM_FILENAME:upper():gsub("%.", "_")
		local class = env.TM_FILENAME:gsub("^%l", string.upper):gsub("%..*$", "")
		local nl = function(str)
			table.insert(res, str)
		end
		nl("#ifndef " .. guard)
		nl("# define " .. guard)
		nl("class	" .. class .. " {")
		nl("public:")
		nl("	" .. class .. "();")
		nl("	" .. class .. "(const ".. class .. "&);")
		nl("	" .. class .. "&	operator =(const " .. class .. "&);")
		nl("	virtual	~" .. class .. "();")
		nl("")
		nl("private:")
		nl("protected:")
		nl("};")
		nl("")
		nl("#endif // " .. guard)
		return res
	end)),
	s("ocf body", f(function(args, snip)
		local res, env = {}, snip.env
		local guard = env.TM_FILENAME:upper():gsub("%.", "_")
		local class = env.TM_FILENAME:gsub("^%l", string.upper):gsub("%..*$", "")
		local nl = function(str)
			table.insert(res, str)
		end
		nl("#include <iostream>")
		nl("")
		nl("#include \"" .. class .. ".hpp\"")
		nl("")
		nl(class .. "::" .. class .. "() {")
		nl("	std::clog << \"default " .. class .. " constructor called\" << std::endl;")
		nl("}")
		nl("")
		nl(class .. "::" .. class .. "(const " .. class .. "& other) {")
		nl("	std::clog << \"copy " .. class .. " constructor called\" << std::endl;")
		nl("")
		nl("	*this = other;")
		nl("}")
		nl("")
		nl(class .. "&	" .. class .. "::operator =(const " .. class .. "& other) {")
		nl("	std::clog << \"copy " .. class .. " assignment called\" << std::endl;")
		nl("")
		nl("	if (this == &other) return *this;")
		nl("	return *this;")
		nl("}")
		nl("")
		nl(class .. "::~" .. class .. "() {")
		nl("	std::clog << \"default " .. class .. " destructor called\" << std::endl;")
		nl("}")
		return res
	end))
}, {
	key = "all",
})
