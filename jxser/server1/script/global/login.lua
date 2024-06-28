Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\ladder_player.lua")
Include("\\script\\global\\login_old.lua")	-- script viet hoa By http://tranhba.com æ…µƒLoginΩ≈±æ£®∞¸∫¨∂‡∏ˆªÓ∂Ø£©
Include("\\script\\missions\\leaguematch\\wlls_login.lua")	-- script viet hoa By http://tranhba.com WLLSŒ‰¡÷¡™»¸
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\global\\offline_login.lua")	-- script viet hoa By http://tranhba.com if offline time > 8hours then reset hours
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\resetbos.lua")	
Include ("\\script\\global\\login_hint.lua")	-- script viet hoa By http://tranhba.com µ«¬ΩªÓ∂ØÃ· æ
Include("\\script\\activitysys\\g_activity.lua")	
Include("\\script\\lib\\gb_taskfuncs.lua");
Include("\\script\\global\\œ¥pkµƒ—√“€.lua")	--nhot tu
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\loghwid\\subcribers.lua")
if (GetProductRegion() ~= "vn") then 
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")	
end 

if (GetProductRegion() == "cn_ib") then 
Include("\\script\\item\\ib\\zimudai.lua");
end 

Include("\\script\\tong\\tong_login.lua");
Include("\\script\\item\\tianziyuxi.lua");	
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\vng_feature\\resetbox.lua")
IncludeLib("TIMER")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\lib\\objbuffer_head.lua") 
Include("\\script\\rank\\xephang.lua")
Include("\\script\\rank\\vngtop10.lua")
Include("\\script\\rank\\vngglobalvar.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
function logip()
logplayer("dulieu/Loggin_acc_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - ThÍi gian : %s  - 	Tµi kho∂n [ %s] - 	Nh©n vÀt : [%s ]  	- c p [ %s] - HWID [ %s]  ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetLevel(),GetInfo()))
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function main(bExchangeIn) 
	-- dofile("script/global/login.lua")
	-- dofile("script/global/g7vn/g7configall.lua")
--tbLogEvent:LuuDSNhanVat()
--tbLogEvent:SapXepDSXepHang()
--===========================================
if GetTask(5859)>=1  then ---- mo skill cl3
    SetTask(5859,0)
 logplayer("dulieu/xoatieubang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs tieu bang khi thoat\n");	
	end
if GetTask(3920)>=1  then ---- mo skill cl3
    SetTask(3920,0)
ForbidEnmity(0);
	DisabledUseTownP(0);
	ForbitSkill(0);
	SetMoveSpeed(-1);
	ForbitTrade(0); 
	RestoreOwnFeature();
	RemoveSkillState(464);
	RemoveSkillState(739);
	RemoveSkillState(313);
	RemoveSkillState(458);
	RemoveSkillState(729);
	SetDeathScript("");
 logplayer("dulieu/xoatieucanhan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs tieu bang khi thoat\n");	
	end
--if GetTask(3651)>=1  then ---- mo skill cl3-
--SetTask(3651,0)
--SetTask(3652,0)
--SetTask(3653,0)
--SetTask(3654,0)
--logplayer("dulieu/xoanhandenbu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs tieu bang khi thoat\n");	
--	end
if GetTask(5995)>=1  then ---- mo skill cl3
    SetTask(5995,0)
 logplayer("dulieu/xoaduatop.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs tieu bang khi thoat\n");	
	end
local dophotsy= CalcEquiproomItemCount(6,1,63019,-1) 
if ConsumeEquiproomItem(dophotsy, 6,1, 63019,-1)>0 then
tbAwardTemplet:GiveAwardByList({{szName = "ng‰c Linh HÂn",tbProp={6,1,63019,1,1},nCount=dophotsy,nBindState = -2,nExpiredTime=1440,},}, "test", 1);
WriteLogPro("dulieu/khoavv.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da thhem 4912 ---"..dophotsy.."\n");	
end

--===============================================================================================
	
if GetTask(4996)<=1519 then
SetTask(4996,1520)
SetTask(4995,0)
SetTask(4994,0)
SetTask(4993,0)
SetTask(4992,0)
SetTask(4991,0)
SetTask(4990,0)
SetTask(4989,0)
SetTask(4988,0)
SetTask(5333,0)
end

if GetTask(4991)>=2  then ---- mo skill cl3
 SetTask(5120,0)
 SetTask(4991,0)
logplayer("dulieu/setdiemmocmoi.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nap"..GetTask(5121).."\n");	
end

local CheckXu = GetExtPoint(1)
if  GetExtPoint(1)>= 40000 then ----------- GetTask Æ®ng nhÀp kh´ng cho v≠Ót qu∏ 3 l«n
               -- NewWorld(208,1566,3235)
		print(format("Tai Khoan: [%s] co y dung Client khac pha hoai server ( Thuc Hien Banner Tai Khoan )", GetAccount()) )
		WriteLogPro("dulieu/hacktientrang_PhaServer.txt",""..GetName().."\t"..GetIP().."\t"..GetAccount().."\n");
end

local Checktk = GetTask(747)
if  Checktk >= 7000000 then ----------- GetTask Æ®ng nhÀp kh´ng cho v≠Ót qu∏ 3 l«n
               -- NewWorld(208,1566,3235)
               -- SetTask(747,0)
		print(format("Tai Khoan: [%s] co y dung Client khac pha hoai server ( Thuc Hien Banner Tai Khoan )", GetAccount()) )
		WriteLogPro("dulieu/hackdiemtk_PhaServer.txt",""..GetName().."\t"..GetIP().."\t"..GetAccount().."\n");
end




------------------------------------------------------------------------------------------------------------
--if GetTask(4953) == 1 then
--DynamicExecuteByPlayer(PlayerIndex, "\\script\\fwcloud\\hwid_lock\\lock.lua", "check_khoa")
--end

if GetTask(5457) == 1 then
DynamicExecuteByPlayer(PlayerIndex, "\\script\\global\\judgeoffline.lua", "removeuythac")
end
                 local soao = GetPlayerCount()+310
               local CheckXu = GetExtPoint(1)
               local SoXuCon = CheckXu *1
	       local Checktk = GetTask(747) 
		 local KNB =CalcItemCount(3,4,1496,1,1) +  CalcItemCount(4,4,1496,1,1) + CalcItemCount(9,4,1496,1,1) + CalcItemCount(10,4,1496,1,1)	
	    local tiendong =CalcItemCount(3,4,417,1,1) +  CalcItemCount(4,4,417,1,1) + CalcItemCount(9,4,417,1,1) + CalcItemCount(10,4,417,1,1)
            -- Msg2SubWorld("<color=yellow>ßπi hi÷p<color><color=orange> "..GetName().."<color> Æ∑ <color=green>Online,<color=yellow>Hi÷n tπi Æang c„<color><color=green> "..soao.."<color> Ng≠≠Íi Online <pic=7><pic=7>!.!.")
       --Msg2SubWorld("<color=yellow>ßπi hi÷p<color><color=orange> "..GetName().."<color> Æ∑ <color=green><pic=7>Online <pic=7> ßi”m:<color=red> TP: "..dex.." ßi”m  -  SM: "..strg.." ßi”m _ SK: "..vit.." ßi”m  -  NC: "..eng.." ßi”m -- Æang c„<color><color=green> "..soao.."<color> Ng≠≠Íi Online <pic=7> !<color>!.")
logplayer("dulieu/thongtindangnhap/thongtintaikhoan-thongtin"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - ThÍi gian : %s  - Tµi kho∂n [ %s] - Level [ %s] - Nh©n vÀt : [%s ] - KNB : [%s ] -- Xu : [%s ] -- M∑ SË HÁ TrÓ: ["..PlayerIndex.."]--Ti“n Trang ["..SoXuCon.." VND]--diem tk ["..GetTask(747).." diem]  ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetLevel(),GetName(),KNB,tiendong))
logplayer("dulieu/thongtintaikhoan-nhanvat.txt",format("[IP : %s ] - ThÍi gian : %s  - Tµi kho∂n [ %s] - Level [ %s] - Nh©n vÀt : [%s ] - KNB : [%s ] -- Xu : [%s ]-- M∑ SË HÁ TrÓ: ["..PlayerIndex.."]--Ti“n Trang ["..SoXuCon.." VND] --diem tk ["..GetTask(747).." diem] ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetLevel(),GetName(),KNB,tiendong))

----them vong lang hao 7 ngay newbie
	if GetTask(4100) == 0  then
		local tm = GetSkillState(1616)
		local lh = GetSkillState(1615)
		if tm==-1 and lh==-1 then
			RemoveSkillState(1614,20,3,559872000,1) 
			-- local ntime = 18*60*60*24*7
			-- local n_title = 336	
			-- Title_AddTitle(n_title, 2, nTime)
			-- Title_ActiveTitle(n_title)
			-- PlayerFunLib:AddSkillState(1615,1,3,18*60*60*24*7,1)
			SetTask(4100,1)
             NewWorld(53, 1622, 3181);
			AddLeadExp(10000000)
			AddRepute(1000);
			-- local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)--Thanh Hanh Phu
            end     
	end
local szName = GetName()
ResetBox:AnnounceResetBoxDate() 
if (OnlineAward_StartDate() == 1 and OnlineAward_Check_TransferLife() ~= 0) then 
Msg2Player("Ngµi c„ th” nhÀn l y mÁi ngµy Î tuy’n ph«n th≠Îng #") 
OnlineAward_ResetDaily() 
OnlineAward_SummaryOnlineTime() 
OnlineAward_StartTime() 
end 
PlayerList:AddPlayer(PlayerIndex) 
if (TB_LOGIN_FUN[0]) then 
for i = 1, getn(TB_LOGIN_FUN[0]) do 
local func = TB_LOGIN_FUN[0][i] 
if (func) then 
func(bExchangeIn) 
end 
end 
end 

EventSys:GetType("OnLogin"):OnPlayerEvent(0, PlayerIndex, bExchangeIn) 
G_ACTIVITY:OnMessage("OnLogin", PlayerIndex) 


for i = 1, getn(TB_LOGIN_FILEFUN) do 
local reg = TB_LOGIN_FILEFUN[i] 
DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn) 
end 
TaskManager:ResetUseGroup() 
LoginDelaySync(1) -- script viet hoa By http://tranhba.com  1 bµy t· c«n duy™n lÛc cÔng b≠Ìc sË li÷u , 0 bµy t· kh´ng c«n 
end 
function main_delaysync(nStep)	
	if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then
		print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN));
		return 1;
	end


	if (TB_LOGIN_FUN[nStep]) then
		for i = 1, getn(TB_LOGIN_FUN[nStep]) do
			if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end
		end
	end

	if (nStep < getn(TB_LOGIN_FUN)) then
		return 0
	else
		return 1
	end

end

function no() 
if chuangong_login ~= nil then 
chuangong_login() 
end 
end 
