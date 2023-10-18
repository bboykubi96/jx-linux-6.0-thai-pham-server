Include("\\script\\activitysys\\config\\30\\head.lua")
Include("\\script\\activitysys\\config\\30\\config.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\config\\30\\variables.lua")

szEventName = "Event_NhaGiaoVN"

tbItem = 
{
	[1]={szName="C©y BÛt",tbProp={6,1,3040,1,0,0},nExpiredTime=Event_2011End},
}

tbBaizhi = 
{
	[1]={szName="Gi y Træng",tbProp={6,1,3039,1,0,0},nExpiredTime=Event_2011End,nRate=20,}, 
	[2]={szName="M∂nh gh–p T´n",tbProp={6,1,1599,1,0,0},nExpiredTime=Event_2011End,nRate=20,}, 
	[3]={szName="M∂nh gh–p S≠",tbProp={6,1,1600,1,0,0},nExpiredTime=Event_2011End,nRate=20,}, 
	[4]={szName="M∂nh gh–p Tr‰ng",tbProp={6,1,1601,1,0,0},nExpiredTime=Event_2011End,nRate=20,}, 
	[5]={szName="M∂nh gh–p ßπo",tbProp={6,1,1602,1,0,0},nExpiredTime=Event_2011End,nRate=20,}, 
}


function pActivity:GiveSongjinAward(nKind)

	local tbSongjin = 
	{
		[1] = {10, "TongKim1000NhanCayBut"},	
		[2] = {30, "TongKim3000NhanCayBut"}
		}

	if tbSongjin[nKind] then
		tbAwardTemplet:Give(tbItem, tbSongjin[nKind][1], {szEventName,tbSongjin[nKind][2]})
	end
end


function pActivity:GiveChuangguanAward(nGuan)

	local tbChuangguan = 
	{
		[17] = {10, "VuotAi17NhanCayBut"},	
		[28] = {10, "VuotAi28NhanCayBut"}
		}

	if tbChuangguan[nGuan] then
		tbAwardTemplet:Give(tbItem, tbChuangguan[nGuan][1], {szEventName,tbChuangguan[nGuan][2]})
	end
end


function pActivity:GiveShashouAward()

	local tbShashou = {2, "TieuDietBossSatThuNhanCayBut"}
	tbAwardTemplet:Give(tbItem, tbShashou[1], {szEventName,tbShashou[2]})
end


function pActivity:GiveYDBZAward(nGuan)

	local tbYDBZ = {
		[10] = {15, "VuotAiViemDe10NhanCayBut"},
	}
	if tbYDBZ[nGuan] then
		tbAwardTemplet:Give(tbItem, tbYDBZ[nGuan][1], {szEventName,tbYDBZ[nGuan][2]})
	end
end


function pActivity:GiveFenglinduAward(nKind)

	local tbFenglingdu = {
		[1] = {5, "TieuDietThuyTacDauLinhNhanCayBut"},	
		[2] = {10, "TieuDietThuyTacDaiDauLinhNhanCayBut"}
		}

	if tbFenglingdu[nKind] then
		tbAwardTemplet:Give(tbItem, tbFenglingdu[nKind][1], {szEventName,tbFenglingdu[nKind][2]})
	end
end


function pActivity:GiveGoldBossAward()

	local tbGoldBoss = {20, "TieuDietBossTheGioiNhanCayBut"}
	tbAwardTemplet:Give(tbItem, tbGoldBoss[1], {szEventName, tbGoldBoss[2]})
end


function pActivity:GiveYewaiguaiAward()

	local tbMonster = {1, "killedmonstergetpaper"}
	tbAwardTemplet:Give(tbBaizhi, tbMonster[1], {szEventName, tbMonster[2]})
end

pActivity.nPak = curpack()