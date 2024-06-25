---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
	tbDailog.szTitleMsg = "<npc><color=green>Ch�o M�ng S� Ki�n �ua Top To�n Sever <color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	local nTimes = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nDate = tonumber(GetLocalDate("%d"))
	if (nTimes >= 201905010000) and (nTimes <= 202502302400) then
                      
		tbDailog:AddOptEntry("Show Top X�p H�ng Bang.",ShowTopThiep);
              --tbDailog:AddOptEntry("Show Top X�p H�ng C� Nh�n.",ShowTopNangDong);
		tbDailog:AddOptEntry("N�p Vinh D� Ho�ng Kim",dua_top_nang_dong);
		--tbDailog:AddOptEntry("Giao N�p Bang H�i B�ch Ng�n",dua_top_nang_dong_bang);
          	tbDailog:Show();
	else   
		Talk(1,"","<color=green>Ho�t ��ng Di�n Ra T�:\n\n <color=red>0h Ng�y 01 - 05 - 2019 ��n 24h Ng�y 30 - 10 - 2021<color><color>")
	end
end				

function ShowTopThiep()
tbLogEvent:ShowTopList()
end
--------------------------------------------------------------------------------------
function dua_top_nang_dong()
AskClientForNumber("Adddiemev1",1,100,"S� Th�") 
function Adddiemev1(num) 
if (num < 0 or num > 300) then
	WriteLogPro("dulieu/dump/hack.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da rut hack Dump        \n");
	return
	end

local nCongHuan = CalcEquiproomItemCount(6, 1, 30330, 1) ;
		if (nCongHuan < num) then
				Talk(1,"","<color=white>Oh thi�u hi�p kh�ng mang theo"..num.." Vinh D� Ho�ng Kim Th�n M�c L�nh r�i !!") 
			return
		end
ConsumeEquiproomItem(num, 6, 1, 30330, 1)
SetTask(5992,GetTask(5992)+num)
--tbLogND:LuuDSNhanVat()
--tbLogND:SapXepDSXepHang()
Msg2Player("<color=yellow>Ch�c M�ng  <color> "..GetName().." <color=violet> �� N�p Vinh D� Ho�ng Kim Th�n M�c L�nh Th�nh C�ng Cho <color=red>S� Ki�n �ua top N�ng ��ng C� Nh�n, S� Th� Hi�n c�<color=violet> : ".. GetTask(5992).." <color>  ")
WriteLogPro("dulieu/duatop/dua_top_moi.txt"," "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5992).."  cai   \n");
end
end
