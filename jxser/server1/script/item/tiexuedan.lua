IncludeLib("ITEM"); 
IncludeLib("FILESYS") 
Include("\\script\\task\\system\\task_string.lua")

function main() 
GiveItemUI("Söa b¹ch kim trang bŞ ","§Ó cÇn söa b¹ch kim trang bŞ ®i vµo ", "repair_platina", "OnCancel", 1); 
return 1; 
end 

function repair_platina(nCount) 

if nCount ~= 1 then 
CreateTaskSay({"Bá vµo vËt phÈm ®İch sè l­îng bÊt hßa yªu cÇu ","ThËt lµ thËt xin lçi , ta ®em lÇn n÷a an bµi /main","ThËt lµ ng­îng ngïng , ta sau nµy trë l¹i ./onCancel"}); 
return 
end 

local nItemIndex = GetGiveItemUnit(1) 
local nQuality = GetItemQuality(nItemIndex); -- script viet hoa By http://tranhba.com  phÈm chÊt 

if (nQuality ~= 4) then 
CreateTaskSay({"Xin/mêi ®Ó cÇn söa b¹ch kim trang bŞ .","ThËt lµ thËt xin lçi , ta ®em lÇn n÷a an bµi /main","ThËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./onCancel"}); 
return 
end 


if (GetPlatinaLevel(nItemIndex) < 6) then 
		CreateTaskSay({"Ö»ÄÜĞŞ+6ÒÔÉÏµÄ°×½ğ×°±¸.", "ÕæÊÇ¶Ô²»Æğ£¬ÎÒ½«ÖØĞÂ°²ÅÅ/main", "ÕæÊÇ²»ºÃÒâË¼£¬ÎÒÉÔºò»ØÀ´./onCancel"});
return 
end 

if (GetCurDurability(nItemIndex) == GetMaxDurability(nItemIndex)) then 
CreateTaskSay({"Nªn trang bŞ ®· cã lín nhÊt bÒn ch¾c ®é liÔu , kh«ng cÇn n÷a söa ","ThËt lµ thËt xin lçi , ta ®em lÇn n÷a an bµi /main","ThËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./onCancel"}); 
return 
end 

if (ConsumeItem(3, 1, 6, 1, 2163, 1) ~= 1) then -- script viet hoa By http://tranhba.com  thñ tiªu trong tói ®eo l­ng ®İch thiÕt huyÕt ®an 
WriteLog("[ thiÕt huyÕt ®an söa ®æi tr­íc m¾t ®İch bÒn ch¾c ®é ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\ thñ tiªu thiÕt huyÕt ®an thÊt b¹i "); 
return 
end 

Msg2Player("Söa ®æi thµnh c«ng !"); 

SetCurDurability(nItemIndex, GetMaxDurability(nItemIndex)); 
end
