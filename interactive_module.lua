--interactive_module
local interactive={};
function interactive.init(x,y,tile,string)
  interactive.posx = x;
  interactive.posy = y;
  interactive.tile = tile;
  interactive.text = string;
end

function interactive.interact()
  
  
end



return interactive;