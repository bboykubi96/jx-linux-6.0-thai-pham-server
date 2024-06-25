-- script viet hoa By http://tranhba.com partner_skillbook.lua ( kü n¨ng s¸ch ch©n vèn ) 
-- script viet hoa By http://tranhba.com create by luobaohang @20050802 
-- script viet hoa By http://tranhba.com last edit by luobaohang @20050816 

IncludeLib("FILESYS"); 
IncludeLib("PARTNER"); 

Include("\\script\\lib\\string.lua");

TabFile_Load("\\settings\\partner\\skill_requirement.txt", "skill_require")
-- script viet hoa By http://tranhba.com randomseed(GetCurrentTime()) 

function SkillBookScript(iItem, nType) 
local partner_index = PARTNER_GetCurPartner() 
if (partner_index == nil or partner_index <= 0) then 
Msg2Player("<#> ngµi cßn kh«ng cã lùa chän ®ång b¹n #") 
return 1 
end 
local id1,id2,id3,item_level = GetItemProp(iItem) 
local index = TabFile_Search("skill_require", 1, tostring(id3)) 
local base_level = tonumber(TabFile_GetCell("skill_require", index, 2)) 
local level_increment = tonumber(TabFile_GetCell("skill_require", index, 3)) 
local series_limit = tonumber(TabFile_GetCell("skill_require", index, 4)) 
local skill_id = tonumber(TabFile_GetCell("skill_require", index, 5)) 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n ngò hµnh thuéc tÝnh 
if (series_limit ~= -1) then 
-- script viet hoa By http://tranhba.com Msg2Player(series_limit); ®iÒu thÝ 
-- script viet hoa By http://tranhba.com Msg2Player(PARTNER_GetSeries(partner_index)); 
if (series_limit ~= PARTNER_GetSeries(partner_index)) then 
Msg2Player("<#> ngµi ®Ých ®ång b¹n ngò hµnh kh«ng thÝch hîp t×m hiÓu nªn s¸ch , kh«ng thÓ lÜnh ngé huyÒn bÝ trong ®ã "); 
return 1 
end 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n ®ång b¹n nhu cÇu cÊp bËc 
	local level_require = base_level + (item_level - 1) * level_increment;
local partner_level = PARTNER_GetLevel(partner_index); 
if (level_require > partner_level) then 
Msg2Player("<#> ngµi ®Ých ®ång b¹n cÊp bËc kh«ng thÝch hîp t×m hiÓu nªn s¸ch , kh«ng thÓ lÜnh ngé huyÒn bÝ trong ®ã "); 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng cao h¬n ®ång b¹n tr­íc mÆt kü n¨ng cÊp bËc 
local skill_level, skill_exp = PARTNER_GetSkillInfo(partner_index, skill_id); 
if (skill_level >= item_level) then 
Msg2Player("<#> ngµi ®Ých ®ång b¹n ®· sím lÜnh ngé nªn tÇng kü n¨ng , c¶m thÊy còng n÷a häc kh«ng tíi c¸i g× míi ®å "); 
return 1 
elseif (skill_level ~= item_level-1) then -- script viet hoa By http://tranhba.com  kh«ng thÓ nh¶y cÊp 
Msg2Player("<#> ngµi ®Ých ®ång b¹n nªn kü n¨ng ®Ých trô cét cßn kh«ng cã ®¸nh h¶o , kh«ng thÓ gÊp víi cÇu thµnh a "); 
return 1 
elseif (skill_level == 0) then -- script viet hoa By http://tranhba.com  tr­íc mÆt kü n¨ng ch­a häc tËp qu¸ 
if (nType == 2) then 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng cã kü n¨ng chç trèng 
local skill_can_learn = {1, 2, 3, 5, 7, 9, 11, 13, 15, 16} -- script viet hoa By http://tranhba.com  nh­ng häc tËp kü n¨ng ®Õm cÊp bËc nhu cÇu 
local skills_learn = PARTNER_GetAllSkill(partner_index, 2); 
			local nIndexTmp = floor(partner_level/10) + 1;
if (nIndexTmp < 0) then 
nIndexTmp = 0; 
elseif (nIndexTmp > 10) then 
nIndexTmp = 10; 
end 
local nSkillsLearn; 
if (skills_learn == nil) then 
nSkillsLearn = 0; 
else 
nSkillsLearn = getn(skills_learn); 
end 
if (nSkillsLearn >= skill_can_learn[nIndexTmp]) then 
Msg2Player("<#> ngµi ®Ých ®ång b¹n ë tr­íc mÆt cÊp bËc vÉn kh«ng thÓ l¹i häc tËp míi phô thªm kü n¨ng , muèn häc tËp cµng nhiÒu h¬n phô thªm kü n¨ng cÇn cÊp bËc cao h¬n "); 
return 1 
end 
elseif (nType == 3) then 
local skills_learn = PARTNER_GetAllSkill(partner_index, 3); 
if (skills_learn ~= nil and getn(skills_learn) > 0) then-- script viet hoa By http://tranhba.com  ®· häc qua tuyÖt kû 
Msg2Player("<#> ngµi ®Ých ®ång b¹n ®· n¾m gi÷ mét m«n tuyÖt kû , kh«ng thÓ l¹i häc tËp míi liÔu "); 
return 1 
end 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ phô thªm kü n¨ng hoÆc tuyÖt kû kh«ng thÓ häc tËp 
Msg2Player("<#> ngµi ®Ých ®ång b¹n h­íng vÒ phÝa bÝ tÞch tham t­êng liÔu nöa ngµy , kh«ng thÓ lÜnh ngé huyÒn bÝ trong ®ã "); 
end 
end 
if (nType == 0) then 
local nTaskValue = PARTNER_GetTaskValue(partner_index, 11) 
if (nTaskValue >= 20) then 
Msg2Player("<#> ngµi ®Ých ®ång b¹n kh«ng thÓ l¹i häc tËp lo¹i nµy kü n¨ng #") 
return 1 
end 
		PARTNER_SetTaskValue(partner_index, 11, nTaskValue + 1)
end 
-- script viet hoa By http://tranhba.com  häc tËp kü n¨ng s¸ch 
	-- script viet hoa By http://tranhba.com local skills_add = random(skill_level + 1, item_level)
PARTNER_AddSkill(partner_index, nType, skill_id, item_level) 
Msg2Player("<#> ngµi ®Ých ®ång b¹n tõ trong bÝ tÞch lÜnh héi liÔu "..tostring(item_level).." cÊp kü n¨ng # "..GetSkillName(skill_id)) 
return 0 
end 

function GetDesc(iItem) 
local id1,id2,id3,item_level = GetItemProp(iItem) 
local index = TabFile_Search("skill_require", 1, tostring(id3)) 
local base_level = tonumber(TabFile_GetCell("skill_require", index, 2)) 
local level_increment = tonumber(TabFile_GetCell("skill_require", index, 3)) 
local series_limit = tonumber(TabFile_GetCell("skill_require", index, 4)) 
local skill_id = tonumber(TabFile_GetCell("skill_require", index, 5)) 
-- script viet hoa By http://tranhba.com  ®ång b¹n nhu cÇu cÊp bËc 
local skill_name = GetSkillName(skill_id); 
	local level_require = base_level + (item_level - 1) * level_increment
local level_skillrequire = item_level - 1; 
local strDesc = format("<color=yellow> thø %d cuèn ", item_level) 
strDesc = strDesc.."\n ®ång b¹n cÊp bËc nhu cÇu #"..level_require; 
if (series_limit >= 0) then 
strDesc = strDesc.."\n ®ång b¹n ngò hµnh nhu cÇu #"..toSeries(series_limit); 
end 
if(level_skillrequire > 0) then 
strDesc= strDesc.."\n cÇn <"..skill_name..">"..level_skillrequire.." cÊp "; 
end 
return strDesc; 
end
