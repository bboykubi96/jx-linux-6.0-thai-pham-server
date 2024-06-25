IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<color=yellow>N÷ HiÖp<color>";
	else
		return "<color=yellow>§¹i HiÖp<color>";
	end
end
--------------------------------------------------------------------------------------------
TSK_StartNhiemVu_TaskState	= 5982;
HUYETLINHDON	 		= 5983
--------------------------------------------------------------
function main()
local LenhBaiBacDau = PlayerFunLib:GetTaskDailyCount(5981)
local Gio = tonumber(date("%H"))
local Phut = tonumber(date("%M"))
local nTime = Gio*60
local HanSuDung = 1440 - nTime - Phut
local nTransCount = ST_GetTransLifeCount();
local nExpAward = 0;
--PhÇn Th­ëng Exp
if nTransCount >= 0 and nTransCount < 1 then
	nExpAward = 80000000;
elseif nTransCount >= 1 and nTransCount < 2 then
	nExpAward = 100000000;
elseif nTransCount >= 2 and nTransCount < 3 then
	nExpAward = 150000000;
elseif nTransCount >= 3 and nTransCount < 4 then
	nExpAward = 200000000;
elseif nTransCount >= 4 and nTransCount < 5 then
	nExpAward = 250000000;
elseif nTransCount >= 5 and nTransCount < 6 then
	nExpAward = 300000000;
end
--PhÇn Th­ëng 1
local tbAward = {
		[1] = {
			{nExp = nExpAward},
			{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4834,1,0,0},nCount=10},
		},
		[2] = {--80%
			{szName="Phóc Duyªn Lé §¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=20},
		},
}
--PhÇn Th­ëng 2
local tbAward_x2 = {
		[1] = {
			{nExp = nExpAward*2},
			{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4834,1,0,0},nCount=20},
		},
		[2] = {--80%
			{szName="Phóc Duyªn Lé §¹i",tbProp={6,1,124,1,0,0},nCount=2,nRate=20},
		},
}

	if GetTask(TSK_StartNhiemVu_TaskState) >= 1 then
		if (GetTask(HUYETLINHDON) == 0) then
			SetTask(TSK_StartNhiemVu_TaskState, 0) Msg2Player("Chóc Mõng "..myplayersex().." §· Hoµn Thµnh NhiÖm Vô B¾c §Èu...!")
			tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng NhiÖm Vô B¾c §Èu")
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (LenhBaiBacDau >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount = 30,nExpiredTime = HanSuDung,nBindState = -2},"PhÇn Th­ëng NhiÖm Vô B¾c §Èu") end
		elseif (GetTask(HUYETLINHDON) == 1) then
			SetTask(TSK_StartNhiemVu_TaskState, 0) Msg2Player("Chóc Mõng "..myplayersex().." §· Hoµn Thµnh NhiÖm Vô B¾c §Èu...!")
			tbAwardTemplet:GiveAwardByList(tbAward_x2,"PhÇn Th­ëng x2 NhiÖm Vô B¾c §Èu") SetTask(HUYETLINHDON, 0)
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (LenhBaiBacDau >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount = 30,nExpiredTime = HanSuDung,nBindState = -2},"PhÇn Th­ëng X2 NhiÖm Vô B¾c §Èu") end
		end
	else
		Say("<color=red>"..myplayersex().." Ch­a NhËn NhiÖm Vô B¾c §Èu Kh«ng ThÓ Sö Dông B¾c §Èu Chi B¶o")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
