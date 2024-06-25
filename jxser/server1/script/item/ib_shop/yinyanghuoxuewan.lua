-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##yinyanghuoxuewan.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### ©m d­¬ng ho¹t huyÕt hoµn 
-- script viet hoa By http://tranhba.com  ×÷ÓÃ	   £ºÈ«¿¹+ 25% ÉúÃü+ 500 µã ÉÁ±Ü+ 500 µã ÅÜËÙ+ 20% ÓÐÐ§Ê±¼ä15·ÖÖÓ
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-15 14:34:59 
tbCD_MAP = {209, 210, 211,333,396.397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}	
function main(nItemIndex) 
dofile("script/item/ib_shop/yinyanghuoxuewan.lua")
	local nSubWorldID = GetWorldPos();
	local nWeekday = tonumber(date("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))	
--	if nWeekday == 1 and ( nHour >= 2045 and nHour < 2200) then
							
--	else
	
	-- if (nSubWorldID == 44 or nSubWorldID == 379 or nSubWorldID == 325 or nSubWorldID == 384 or nSubWorldID == 380 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 175 or ( nSubWorldID >= 396 and  nSubWorldID <= 415 ) )then 
	if (nSubWorldID == 44 or nSubWorldID == 379 or nSubWorldID == 325 or nSubWorldID == 384 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 175 or ( nSubWorldID >= 396 and  nSubWorldID <= 415 ) )then 
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông.");
		return 1
	end
--	end
	local nMapId,x,y  = GetWorldPos();
	-------------------
		for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map nµy Kh«ng Sö Dông §­îc");
			return 1	
			end
		end
local nTime = 60*18*5
local tbSkill = { 1121,256,259,257,} 

for i=1,getn(tbSkill) do 
AddSkillState(tbSkill[i], 1, 1, nTime,1) 
end 
Msg2Player("Ngµi ®· sö dông " .. " ©m d­¬ng ho¹t huyÕt ®an "..nSubWorldID.." ") 
return 
end
