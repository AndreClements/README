-- emoji-to-latex.lua — Pandoc Lua filter for ASC branded PDFs
-- 1. Replace emoji with coloured LaTeX circles (CARDS signals)
-- 2. Make URLs breakable by inserting \penalty0 after slashes

local replacements = {
  ["🔴"] = "\\textcolor{red}{$\\bullet$}",
  ["🟢"] = "\\textcolor{green!70!black}{$\\bullet$}",
  ["🟡"] = "\\textcolor{yellow!80!black}{$\\bullet$}",
}

function Str(elem)
  for emoji, latex in pairs(replacements) do
    if elem.text:find(emoji) then
      local result = elem.text:gsub(emoji, latex)
      return pandoc.RawInline("latex", result)
    end
  end
  return elem
end

-- Make link URLs breakable: insert \penalty0 (allow break) after each /
function Link(elem)
  if FORMAT:match("latex") then
    local url = elem.target
    -- Get the display text as a string
    local display = pandoc.utils.stringify(elem.content)
    -- If display text IS the URL (autolink), make it breakable
    if display == url or display == url:gsub("^https?://", "") then
      local breakable = url:gsub("/", "/\\penalty0 ")
      return pandoc.RawInline("latex",
        "\\href{" .. url .. "}{" .. breakable .. "}")
    end
  end
  return elem
end
