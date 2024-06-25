-- script viet hoa By http://tranhba.com partner_skillbook.lua ( k� n�ng s�ch ch�n v�n ) 
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
Msg2Player("<#> ng�i c�n kh�ng c� l�a ch�n ��ng b�n #") 
return 1 
end 
local id1,id2,id3,item_level = GetItemProp(iItem) 
local index = TabFile_Search("skill_require", 1, tostring(id3)) 
local base_level = tonumber(TabFile_GetCell("skill_require", index, 2)) 
local level_increment = tonumber(TabFile_GetCell("skill_require", index, 3)) 
local series_limit = tonumber(TabFile_GetCell("skill_require", index, 4)) 
local skill_id = tonumber(TabFile_GetCell("skill_require", index, 5)) 
-- script viet hoa By http://tranhba.com  ph�n �o�n ng� h�nh thu�c t�nh 
if (series_limit ~= -1) then 
-- script viet hoa By http://tranhba.com Msg2Player(series_limit); �i�u th� 
-- script viet hoa By http://tranhba.com Msg2Player(PARTNER_GetSeries(partner_index)); 
if (series_limit ~= PARTNER_GetSeries(partner_index)) then 
Msg2Player("<#> ng�i ��ch ��ng b�n ng� h�nh kh�ng th�ch h�p t�m hi�u n�n s�ch , kh�ng th� l�nh ng� huy�n b� trong �� "); 
return 1 
end 
end 
-- script viet hoa By http://tranhba.com  ph�n �o�n ��ng b�n nhu c�u c�p b�c 
	local level_require = base_level + (item_level - 1) * level_increment;
local partner_level = PARTNER_GetLevel(partner_index); 
if (level_require > partner_level) then 
Msg2Player("<#> ng�i ��ch ��ng b�n c�p b�c kh�ng th�ch h�p t�m hi�u n�n s�ch , kh�ng th� l�nh ng� huy�n b� trong �� "); 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng cao h�n ��ng b�n tr��c m�t k� n�ng c�p b�c 
local skill_level, skill_exp = PARTNER_GetSkillInfo(partner_index, skill_id); 
if (skill_level >= item_level) then 
Msg2Player("<#> ng�i ��ch ��ng b�n �� s�m l�nh ng� n�n t�ng k� n�ng , c�m th�y c�ng n�a h�c kh�ng t�i c�i g� m�i �� "); 
return 1 
elseif (skill_level ~= item_level-1) then -- script viet hoa By http://tranhba.com  kh�ng th� nh�y c�p 
Msg2Player("<#> ng�i ��ch ��ng b�n n�n k� n�ng ��ch tr� c�t c�n kh�ng c� ��nh h�o , kh�ng th� g�p v�i c�u th�nh a "); 
return 1 
elseif (skill_level == 0) then -- script viet hoa By http://tranhba.com  tr��c m�t k� n�ng ch�a h�c t�p qu� 
if (nType == 2) then 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng c� k� n�ng ch� tr�ng 
local skill_can_learn = {1, 2, 3, 5, 7, 9, 11, 13, 15, 16} -- script viet hoa By http://tranhba.com  nh�ng h�c t�p k� n�ng ��m c�p b�c nhu c�u 
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
Msg2Player("<#> ng�i ��ch ��ng b�n � tr��c m�t c�p b�c v�n kh�ng th� l�i h�c t�p m�i ph� th�m k� n�ng , mu�n h�c t�p c�ng nhi�u h�n ph� th�m k� n�ng c�n c�p b�c cao h�n "); 
return 1 
end 
elseif (nType == 3) then 
local skills_learn = PARTNER_GetAllSkill(partner_index, 3); 
if (skills_learn ~= nil and getn(skills_learn) > 0) then-- script viet hoa By http://tranhba.com  �� h�c qua tuy�t k� 
Msg2Player("<#> ng�i ��ch ��ng b�n �� n�m gi� m�t m�n tuy�t k� , kh�ng th� l�i h�c t�p m�i li�u "); 
return 1 
end 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ph� th�m k� n�ng ho�c tuy�t k� kh�ng th� h�c t�p 
Msg2Player("<#> ng�i ��ch ��ng b�n h��ng v� ph�a b� t�ch tham t��ng li�u n�a ng�y , kh�ng th� l�nh ng� huy�n b� trong �� "); 
end 
end 
if (nType == 0) then 
local nTaskValue = PARTNER_GetTaskValue(partner_index, 11) 
if (nTaskValue >= 20) then 
Msg2Player("<#> ng�i ��ch ��ng b�n kh�ng th� l�i h�c t�p lo�i n�y k� n�ng #") 
return 1 
end 
		PARTNER_SetTaskValue(partner_index, 11, nTaskValue + 1)
end 
-- script viet hoa By http://tranhba.com  h�c t�p k� n�ng s�ch 
	-- script viet hoa By http://tranhba.com local skills_add = random(skill_level + 1, item_level)
PARTNER_AddSkill(partner_index, nType, skill_id, item_level) 
Msg2Player("<#> ng�i ��ch ��ng b�n t� trong b� t�ch l�nh h�i li�u "..tostring(item_level).." c�p k� n�ng # "..GetSkillName(skill_id)) 
return 0 
end 

function GetDesc(iItem) 
local id1,id2,id3,item_level = GetItemProp(iItem) 
local index = TabFile_Search("skill_require", 1, tostring(id3)) 
local base_level = tonumber(TabFile_GetCell("skill_require", index, 2)) 
local level_increment = tonumber(TabFile_GetCell("skill_require", index, 3)) 
local series_limit = tonumber(TabFile_GetCell("skill_require", index, 4)) 
local skill_id = tonumber(TabFile_GetCell("skill_require", index, 5)) 
-- script viet hoa By http://tranhba.com  ��ng b�n nhu c�u c�p b�c 
local skill_name = GetSkillName(skill_id); 
	local level_require = base_level + (item_level - 1) * level_increment
local level_skillrequire = item_level - 1; 
local strDesc = format("<color=yellow> th� %d cu�n ", item_level) 
strDesc = strDesc.."\n ��ng b�n c�p b�c nhu c�u #"..level_require; 
if (series_limit >= 0) then 
strDesc = strDesc.."\n ��ng b�n ng� h�nh nhu c�u #"..toSeries(series_limit); 
end 
if(level_skillrequire > 0) then 
strDesc= strDesc.."\n c�n <"..skill_name..">"..level_skillrequire.." c�p "; 
end 
return strDesc; 
end
