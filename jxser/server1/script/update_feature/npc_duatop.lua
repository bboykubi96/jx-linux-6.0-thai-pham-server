---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------------------------------------------
function main()
dofile("script/update_featur/npc_duatop.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
	szNpcName = NpcName2Replace(szNpcName);
	end
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><color=green>Chµo Mõng Sù KiÖn §ua Top Toµn Sever <color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	local nTimes = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nDate = tonumber(GetLocalDate("%d"))
	if (nTimes >= 201905010000) and (nTimes <= 202502302400) then
                      
		tbDailog:AddOptEntry("Show Top XÕp H¹ng Bang.",ShowTopThiep);
              --tbDailog:AddOptEntry("Show Top XÕp H¹ng C¸ Nh©n.",ShowTopNangDong);
		tbDailog:AddOptEntry("Nép Vinh Dù Hoµng Kim",dua_top_nang_dong);
		--tbDailog:AddOptEntry("Giao Nép Bang Héi B¹ch Ng©n",dua_top_nang_dong_bang);
          	tbDailog:Show();
	else   
		Talk(1,"","<color=green>Ho¹t §éng DiÔn Ra Tõ:\n\n <color=red>0h Ngµy 01 - 05 - 2019 §Õn 24h Ngµy 30 - 10 - 2021<color><color>")
	end
end				

function ShowTopThiep()
tbLogEvent:ShowTopList()
end
--------------------------------------------------------------------------------------
function dua_top_nang_dong()
AskClientForNumber("Adddiemev1",1,100,"Sè ThÎ") 
function Adddiemev1(num) 
if (num < 0 or num > 300) then
	WriteLogPro("dulieu/dump/hack.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da rut hack Dump        \n");
	return
	end

local nCongHuan = CalcEquiproomItemCount(6, 1, 30330, 1) ;
		if (nCongHuan < num) then
				Talk(1,"","<color=white>Oh thiÕu hiÖp kh«ng mang theo"..num.." Vinh Dù Hoµng Kim ThÇn Méc LÖnh råi !!") 
			return
		end
ConsumeEquiproomItem(num, 6, 1, 30330, 1)
SetTask(5992,GetTask(5992)+num)
--tbLogND:LuuDSNhanVat()
--tbLogND:SapXepDSXepHang()
Msg2Player("<color=yellow>Chóc Mõng  <color> "..GetName().." <color=violet> §· Nép Vinh Dù Hoµng Kim ThÇn Méc LÖnh Thµnh C«ng Cho <color=red>Sù KiÖn ®ua top N¨ng §éng C¸ Nh©n, Sè ThÎ HiÖn cã<color=violet> : ".. GetTask(5992).." <color>  ")
WriteLogPro("dulieu/duatop/dua_top_moi.txt"," "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5992).."  cai   \n");
end
end
