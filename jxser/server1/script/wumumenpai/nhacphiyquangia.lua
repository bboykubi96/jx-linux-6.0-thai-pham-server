IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------------------------------
local _GetFruit = function(nItemIndex)
DelCommonItem(6,1,4307) SetTask(12,30*256) NewWorld(989,1624,3130)
Talk(1,"","Th¬: <enter> ThÊt m· ng« giang thïy trø tiªn, duy c«ng nh­îng qu¶n ®éc tranh tiªn. <enter> Tr­¬ng hoµng m¹o h­u tam thiªn sÜ, thè chñ cµn kh«n thËp lôc niªn. <enter> Kham mÉn l©m truy c«ng vÞ tùu, bÊt tri chung thÊt sù hµ duyªn. <enter> Th¹ch ®Çu thµnh h¹ thÝnh ¸o luËn, v¹n tÝnh cö mi diÖc kh¶ liªn.")
end

local _OnBreak = function()
	Msg2Player("Qu¸ tr×nh thu thËp bÞ gi¸n ®o¹n.")
end

function main()
dofile("script/wumumenpai/nhacphiyquangia.lua")
	if (GetTask(12) == 20*256 and GetLevel() >= 10) then
		if (CalcEquiproomItemCount(6,1,4307,1) >= 1) then
			tbProgressBar:OpenByConfig(10, %_GetFruit,{nItemIdx}, %_OnBreak)
		end
	end
end

