if (not _H_ITEM_)then 
_H_ITEM_ = 1; 

-- script viet hoa By http://tranhba.com  sinh thµnh mét t­¬ng ®èi vu tr­íc mÆt nhµ ch¬i ®Ých chän h¹ng 
function festival_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 


end; -- script viet hoa By http://tranhba.com  end of _H_ITEM_
