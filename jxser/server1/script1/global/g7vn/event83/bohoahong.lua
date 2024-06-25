IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4996
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()
--dofile("script/global/g7vn/event83/bohoahong.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= 20190307 and nDate <= 20190330 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <10000 then
			if CalcFreeItemCellCount() >= 1 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Hoa Ph­îng Tr¾ng")
				CastSkill(691,1,0,180)
			else
				Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 1 « trèng råi h·y sö dông",0) return 1
			end
		else
			Say(""..myplayersex().." §· Sö Dông Tèi §a 10000 Hoa Ph­îng Tr¾ng­\nTrong Suèt Thêi Gian Ho¹t §éng") return 1
		end
	else
		Talk(1,"","VËt PhÈm §· Qu¸ H¹n Sö Dông SÏ Tù §éng MÊt §i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
{szName="§å phæ Hoµng Kim",tbProp={6,1,random(239,378),1,0,0},nCount=1,nRate=33},
}
------------------------------------------------------------------------------------------------------------------------------------------------