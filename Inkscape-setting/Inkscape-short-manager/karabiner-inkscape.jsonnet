local arr = [
              [x, y, z]  // 24x
              for x in ['s', 'd', 'e']  // solid, dotted, dashed
              for y in ['f', 'w', 'a', 'x']  // gray, white, arrow, double-arrow
              for z in ['g', 'v']  // thick, very thick
            ] +
            [
              [x, y]  // 18x
              for x in ['s', 'd', 'e']  // solid, dotted, dashed
              for y in ['f', 'w', 'g', 'v', 'a', 'x']
            ] +
            [
              ['spacebar', x]  // 6x
              for x in ['s', 'd', 'e', 'f', 'b', 'w']  // solid, dotted, dashed, gray, black, white
            ];

{
  title: 'Apply quickly essential shape or line styles in Inkscape using hammerspoon (Gilles Castel, 2019)',
  rules: [
    {
      description: 'Apply quickly essential shape or line styles in Inkscape using hammerspoon (Gilles Castel, 2019)',
      manipulators: [
        {
          local str = std.join('+', el),
          type: 'basic',
          from: {
            simultaneous: [{ key_code: i } for i in el],
            simultaneous_options: {
              key_up_when: 'all',
            },
          },
          to: [{ shell_command: "/usr/local/bin/hs -c 'hs.alert(\"" + str + '");create_svg_and_paste({"' + std.join('","', el) + "\"});'" }],
          conditions: [{ type: 'frontmost_application_if', bundle_identifiers: ['org.inkscape.Inkscape'] }],
        }
        for el in arr
      ],
    },
  ],
}