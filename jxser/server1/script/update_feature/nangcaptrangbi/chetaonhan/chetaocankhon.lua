Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbCheTaoCanKhon = tbActivityCompose:new()
tbCheTaoCanKhon.bAccessBindItem = 1

CommonMaterial_CanKhon = {
	{szName="M¶nh NhÉn Tinh X¶o",tbProp={4,2454,1,1,0,0},nCount=100},
	{szName="TiÒn Xu",tbProp={4,417,1,1,0,0},nCount=500},
}

tbAward_CanKhon = {
	{szName="Cµn Kh«n Tinh X¶o",tbProp={0,random(9126,9140)}, nQuality=1, nRate=10.00},
	{szName="ChÕ T¹o LÇn Nµy ThÊt B¹i",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("Chóc B¹n May M¾n LÇn Sau")
		end,
		nRate = 90.00,
	},
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheTaoCanKhon()
	local p = tbCheTaoCanKhon:new("ChÕ T¹o Cµn Kh«n","CheTaoCanKhon", INVENTORY_ROOM.room_giveitem)
	local szTitle = "ChÕ T¹o Cµn Kh«n Tinh X¶o"
	local tbOpt = {
		{"GhÐp M¶nh Cµn Kh«n Tinh X¶o", p.ComposeGiveUI_CanKhon, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbCheTaoCanKhon:ComposeGiveUI_CanKhon()
	local szTitle = format("%s","ChÕ T¹o Cµn Kh«n")
	local szContent = self:GetMaterialList(%CommonMaterial_CanKhon)
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = format("%s<enter>\n\n\t\t\t\t\t%-17s %s", szContent, "TØ LÖ Thµnh C«ng","10%")
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_CanKhon, {self}}, nil, self.bAccessBindItem)
end

function tbCheTaoCanKhon:GiveUIOk_CanKhon(nCount)
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>"
	if self:CheckMaterial(%CommonMaterial_CanKhon, 1) ~= 1 then
		Talk(1,"", szFailMsg)
		return 0;
	end
	tbAwardTemplet:GiveAwardByList(%tbAward_CanKhon, 1)
	self:ConsumeMaterial(%CommonMaterial_CanKhon, 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------
