--tile_module

--TODO
--Funtions:
--Grid packaging
--Rendering

tile = {};
function tile.package(tilemap, width, height)
  grid = {};
  i=1;
  for row=0, width, 1 do
    rowPkg = {};
    for column = 0, height, 1 do
      --grid[column][row] = tilemap[i];
      table.insert(rowPkg,tilemap[i]);
      i = i+1;
    end
    table.insert(grid,rowPkg);
  end
  return grid;
end

function tile.render(grid, tiles, posx, posy, playerHeight, objects) --ryuusi's code
  love.graphics.push()
  love.graphics.translate(posx+16,posy+16)
  --local tiles = {img1,img2};
  for y,row in ipairs(grid) do
    for x,tileIndex in ipairs(row) do
      love.graphics.draw(tiles[tileIndex],x*32, y*32);
      -- -playerHeight
      --for objects.length, render object at object x and y
    end
  end
  for i, v in ipairs(objects) do
    love.graphics.draw(v.tile,v.posx*32, v.posy*32);
  end
  love.graphics.pop()
end
--[[
function tile.render(grid, img1,img2, posx, posy)
  for row=1, #grid, 1 do
    for column = 1, #grid[1], 1 do
      if grid[column][row] == 1 then
        love.graphics.draw(img1,((column)*32)+posx+16, ((row)*32)-posy+16, 0 , (32/img1:getWidth()) , (32/img1:getHeight()));
      end
      if grid[column][row] == 2 then
        love.graphics.draw(img2,(column*32)+posx+16, (row*32)-posy+16, 0 , (32/img1:getWidth()) , (32/img1:getHeight()));
      end
    end
  end
end
]]--


return tile;