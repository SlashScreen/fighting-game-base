--tile.lua

tile = {};
json = require('json');

function tile.render(posx, posy, grid)
  tilemap = json.decode(grid);
  for i,v in ipairs(tilemap) do
    print(tilemap[i]);
  end
end

return tile