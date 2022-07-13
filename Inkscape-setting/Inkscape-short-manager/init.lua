-- Make cli command `hs` available:
-- After an update of hammerspoon run following two commmands once in the hammerspoon console
-- hs.ipc.cliUninstall(); hs.ipc.cliInstall()
require("hs.ipc")

local function intersect(m,n)
 local r={}
 for i,v1 in ipairs(m) do
  for k,v2 in pairs(n) do
   if (v1==v2) then
    return true
   end
  end
 end
 return false
end

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function create_svg_and_paste(keys)

    pt = 1.327 -- pixels
    w = 2 * pt
    thick_width = 4 * pt
    very_thick_width = 8 * pt

    style = {}
    style["stroke-opacity"] = 1

    if intersect({"s", "a", "d", "g", "h", "x", "e"}, keys)
    then
        style["stroke"] = "black"
        style["stroke-width"] = w
        style["marker-end"] = "none"
        style["marker-start"] = "none"
        style["stroke-dasharray"] = "none"
    else
        style["stroke"] = "none"
    end

    if has_value(keys, "g")
    then
        w = thick_width
        style["stroke-width"] = w
    end

    if has_value(keys, "v")
    then
        w = very_thick_width
        style["stroke-width"] = w
    end

    if has_value(keys, "a")
    then
        style['marker-end'] = 'url(#marker-arrow-' .. tostring(w) .. ')'
    end

    if has_value(keys, "x")
    then
        style['marker-start'] = 'url(#marker-arrow-' .. tostring(w) .. ')'
        style['marker-end'] = 'url(#marker-arrow-' .. tostring(w) .. ')'
    end

    if has_value(keys, "d")
    then
        style['stroke-dasharray'] = tostring(w) .. ',' .. tostring(2*pt)
    end

    if has_value(keys, "e")
    then
        style['stroke-dasharray'] = tostring(3*pt) .. ',' .. tostring(3*pt)
    end

    if has_value(keys, "f")
    then
        style['fill'] = 'black'
        style['fill-opacity'] = 0.12
    end

    if has_value(keys, "b")
    then
        style['fill'] = 'black'
        style['fill-opacity'] = 1
    end

    if has_value(keys, "w")
    then
        style['fill'] = 'white'
        style['fill-opacity'] = 1
    end

    if intersect(keys, {"f", "b", "w"})
    then
        style['marker-end'] = 'none'
        style['marker-start'] = 'none'
    end

    if not intersect(keys, {"f", "b", "w"})
    then
        style['fill'] = 'none'
        style['fill-opacity'] = 1
    end

    svg = [[
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg>
]]

    if (style['marker-end'] ~= nil and style['marker-end'] ~= 'none') or
       (style['marker-start'] ~= nil and style['marker-start'] ~= 'none')
    then
        svgtemp = [[
<defs id="marker-defs">
<marker
]]
        svgtemp = svgtemp .. 'id="marker-arrow-' .. tostring(w) .. "\"\n"
        svgtemp = svgtemp .. 'orient="auto-start-reverse"' .. "\n"
        svgtemp = svgtemp .. 'refY="0" refX="0"' .. "\n"
        svgtemp = svgtemp .. 'markerHeight="3" markerWidth="2">' .. "\n"

        svgtemp = svgtemp .. '    <g transform="scale('.. tostring((2.40 * w + 3.87)/(4.5*w)) .. ')">' .. "\n"
        svg = svg .. svgtemp
        svgtemp = [[
    <path
       d="M -1.55415,2.0722 C -1.42464,1.29512 0,0.1295 0.38852,0 0,-0.1295 -1.42464,-1.29512 -1.55415,-2.0722"
       style="fill:none;stroke:#000000;stroke-width:{0.6};stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1
       inkscape:connector-curvature="0" />
   </g>
</marker>
</defs>
]]
        svg = svg .. svgtemp
    end
 
    style_string = ''
    for key, value in pairs(style) do
        -- skips nil?
        style_string = style_string .. key .. ":" .. " " .. value .. ";"
    end

    svg = svg .. '<inkscape:clipboard style="' .. style_string .. '" />' .. "\n</svg>"

    hs.pasteboard.writeDataForUTI("dyn.ah62d4rv4gu80w5pbq7ww88brrf1g065dqf2gnppxs3xu", svg)
    -- get UTI via https://github.com/sindresorhus/Pasteboard-Viewer
    hs.eventtap.keyStroke({"shift", "cmd"}, "v")
end