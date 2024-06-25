IncludeLib("SETTING")
Include("\\script\\global\\jxprivate\\xephang\\top.lua")
Include("\\script\\global\\jxprivate\\xephang\\lib.lua")
--Include("\\script\\global\\jxprivate\\svr_cfg.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\remoteexc.lua")

Task_BXH_Show = 5003

function main ()
	dofile("script/global/jxprivate/xephang/bangxephang.lua");
	if n_Bang_Xep_Hang ~= 1 then
		Talk(1, "", "<color=yellow>B�ng X�p H�ng: <color>Server �ang trong qu� tr�nh �ua TOP, l�n sau c�c h� h�y ��n nh� !");
		return
	end
	OnClick()
end
local _OnBreak = function()
	Msg2Player("Qu� tr�nh th�c thi b� gi�n �o�n...")
end

function OnClick()
tbProgressBar:OpenByConfig(23, dialog_main,{}, %_OnBreak)
end

BangXepHang = "<link=image[0]:\\spr\\item\\bxh.spr><link>"

function dialog_main()
	if(GetLevel() < 50) then
		Say("<color=yellow>B�ng X�p H�ng: <color>C�p �� ph�i t� <color=red>50<color> tr� l�n m�i c� th� ��ng k� v�o danh s�ch n�y, H�y ti�p t�c c� g�ng nh� !")
		return
	end
	local tbOpt ={}
	local szTitle=""..BangXepHang..""
	if not XepHang.TopAllServer then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	end
	local nCount = getn(%XepHang.TopAllServer)
	if(nCount == 0 or nCount < 1) then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	end
	if nCount > 20 then
		nCount=20
	end
	for i= 1,nCount do
		szTitle = format("%s <pic=135> H�ng: <color=red>%d<color>	Cao Th�: <color=yellow>%s<color>\n",szTitle,i,XepHang.TopAllServer[i][1],20)
	end
	szTitle = " Danh s�ch cao th� giang h�: \n"..szTitle.." <color=red><pic=137>Ch� �<color>: <color=green>b�o v� s�c kh�e v� t�i s�n khi ch�i Game.<pic=115><color>"
	if (GetGameTime() >= GetTask(Task_BXH_Show)) then
		tinsert(tbOpt,{"��ng K� V�o Danh S�ch B�ng X�p H�ng",ProgressLuuDanhSach})
	end
	tinsert(tbOpt,{"Xem X�p H�ng B�n Th�n",strzMe})
	tinsert(tbOpt,{"Xem X�p H�ng Theo T�n Nh�n V�t",strzName})
	tinsert(tbOpt,{"Xem X�p H�ng Theo Th� H�ng Trong Server",strzNumber})
	tinsert(tbOpt,{"Tho�t"})
	CreateNewSayEx(szTitle, tbOpt)
end

function ProgressLuuDanhSach()
	tbProgressBar:OpenByConfig(24, LuuVaoDanhSach,{}, %_OnBreak)
end
function LuuVaoDanhSach()
	RemoteExc("\\script\\jxprivate\\jx_xephang.lua", "BXH_LuuDSNhanVat", {GetName(), ST_GetTransLifeCount(), GetLevel(), GetExp(), GetExpPercent(), GetLastFactionNumber(), GetAccount()})
	SetTask(Task_BXH_Show,GetGameTime()+600)
	Say("��ng k� v�o danh s�ch x�p h�ng th�nh c�ng !\n\nL�u �: M�i l�n ��ng k� c�ch nhau �t nh�t l� <color=yellow>10 ph�t<color>")
end

function strzMe()
	local szTitle=""
	if not XepHang.TopAllServer then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	end
	local nCount = getn(XepHang.TopAllServer)
	if(nCount == 0 or nCount < 1) then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	else
		tbProgressBar:OpenByConfig(22, XemXepHang,{GetName()}, %_OnBreak)
	end
end

IDXepHang=""
function strzName()
	local szTitle=""
	if not XepHang.TopAllServer then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	end
	local nCount = getn(XepHang.TopAllServer)
	if(nCount == 0 or nCount < 1) then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	else
		AskClientForString("ProgressXemXepHang",GetName(),1,100,"Nh�p T�n Nh�n V�t:")
	end
end
function strzNumber()
	local szTitle=""
	if not XepHang.TopAllServer then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	end
	local nCount = getn(XepHang.TopAllServer)
	if(nCount == 0 or nCount < 1) then
		Say("<color=yellow>B�ng X�p H�ng: <color>Hi�n t�i ch�a c� B�ng X�p H�ng, h�n ��i hi�p l�n sau nh� !")
		return
	else
		g_AskClientNumberEx(0, nCount, "Nh�p H�ng C�n Xem:", {Progressn_XemXepHang, {nIndex}})
	end
end
function ProgressXemXepHang(zName)
	tbProgressBar:OpenByConfig(22, XemXepHang,{zName}, %_OnBreak)
end
function XemXepHang(zName)
	if zName == "" or zName == nil then
		Say("Gi�n h� d�n ch�i ?")
	end
	if TrongTopServer(zName)==1 then
		local n_faction = XepHang.TopAllServer[IDXepHang][7]
		if n_faction == 1 then--Thi�u L�m
			n_faction="Thi�u L�m"
		elseif n_faction == 2 then--Thi�n V��ng
			n_faction="Thi�n V��ng Bang"
		elseif n_faction == 3 then--���ng M�n
			n_faction="���ng M�n"
		elseif n_faction == 4 then--Ng� ��c
			n_faction="Ng� ��c Gi�o"
		elseif n_faction == 5 then--Nga Mi
			n_faction="Nga Mi"
		elseif n_faction == 6 then--Th�y Y�n
			n_faction="Th�y Y�n M�n"
		elseif n_faction == 7 then--C�i Bang
			n_faction="C�i Bang"
		elseif n_faction == 8 then--Thi�n Nh�n
			n_faction="Thi�n Nh�n"
		elseif n_faction == 9 then--V� �ang
			n_faction="V� �ang"
		elseif n_faction == 10 then--C�n L�n
			n_faction="C�n L�n"
		else
			n_faction="V� Danh"
		end
		local szTitle = BangXepHang.."Th�ng Tin Nh�n V�t:\n\n<pic=136> T�n Nh�n V�t:     <color=red>"..XepHang.TopAllServer[IDXepHang][1].."<color>\n<pic=136> X�p H�ng:         <color=yellow>"..XepHang.TopAllServer[IDXepHang][6].."<color>\n<pic=136> C�p ��:           <color=red>"..XepHang.TopAllServer[IDXepHang][3].."<color>\n<pic=136> Tr�ng Sinh:       <color=yellow>"..XepHang.TopAllServer[IDXepHang][2].."<color>\n<pic=136> M�n Ph�i:         <color=red>"..n_faction.."<color>\n\n<color=red><pic=137> Ch� �<color>: <color=green>b�o v� s�c kh�e v� t�i s�n khi ch�i Game.<pic=115><color>"
		local tbOpt =
		{
			{"Tho�t"},
		}
		CreateNewSayEx(szTitle, tbOpt)
		return
	else
		Say("<color=yellow>"..zName.."<color> kh�ng n�m trong danh s�ch cao th�, c�n ph�i c� g�ng nhi�u h�n n�a !")
	end
end

function TrongTopServer(zName)
	if not XepHang.TopAllServer then
		return
	end
	local nCount = getn(XepHang.TopAllServer)
	for i= 1,nCount do
		if(XepHang.TopAllServer[i][1] == zName) then
			IDXepHang=i
			return 1
		end
	end
	return 0
end

function Progressn_XemXepHang(nIndex)
	tbProgressBar:OpenByConfig(22, n_XemXepHang,{nIndex}, %_OnBreak)
end

function n_XemXepHang(nIndex)
	if nIndex == 0 then
		Say("Gi�n h� d�n ch�i ?")
		return
	end
	local nCount = getn(XepHang.TopAllServer)
	for i= 1,nCount do
		if(XepHang.TopAllServer[i][6] == nIndex) then
		local n_faction = XepHang.TopAllServer[i][7]
		if n_faction == 1 then--Thi�u L�m
			n_faction="Thi�u L�m"
		elseif n_faction == 2 then--Thi�n V��ng
			n_faction="Thi�n V��ng Bang"
		elseif n_faction == 3 then--���ng M�n
			n_faction="���ng M�n"
		elseif n_faction == 4 then--Ng� ��c
			n_faction="Ng� ��c Gi�o"
		elseif n_faction == 5 then--Nga Mi
			n_faction="Nga Mi"
		elseif n_faction == 6 then--Th�y Y�n
			n_faction="Th�y Y�n M�n"
		elseif n_faction == 7 then--C�i Bang
			n_faction="C�i Bang"
		elseif n_faction == 8 then--Thi�n Nh�n
			n_faction="Thi�n Nh�n"
		elseif n_faction == 9 then--V� �ang
			n_faction="V� �ang"
		elseif n_faction == 10 then--C�n L�n
			n_faction="C�n L�n"
		else
			n_faction="V� Danh"
		end
		local szTitle = BangXepHang.."Th�ng Tin Nh�n V�t:\n\n<pic=136> T�n Nh�n V�t:     <color=red>"..XepHang.TopAllServer[i][1].."<color>\n<pic=136> X�p H�ng:         <color=yellow>"..XepHang.TopAllServer[i][6].."<color>\n<pic=136> C�p ��:           <color=red>"..XepHang.TopAllServer[i][3].."<color>\n<pic=136> Tr�ng Sinh:       <color=yellow>"..XepHang.TopAllServer[i][2].."<color>\n<pic=136> M�n Ph�i:         <color=red>"..n_faction.."<color>\n\n<color=red><pic=137> Ch� �<color>: <color=green>b�o v� s�c kh�e v� t�i s�n khi ch�i Game.<pic=115><color>"
		local tbOpt =
		{
			{"Tho�t"},
		}
		CreateNewSayEx(szTitle, tbOpt)
		return
		end
	end
end

-------H�m l�u d� li�u nh�n v�t, ��ng k� n�u nh�n v�t ch�a �c ��ng k� v� s�p x�p topall,top10server,top10 m�n ph�i (c� th� d�ng task �� t� ��ng ch�y )
function SaveDataGamer()
	local gmrole = PlayerIndex;
	local count = GetPlayerCount();
	if count > 0 then 
		for i=1,count do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				SaveNow();
			end
		end
	end
	print("[=====> Luu Du Lieu Gamer Dang Online Toan Server Hoan Tat<=====]")
end
function XepHangVaLuu()
	if  SVR_Race_Top == 1 then
		print("[=====> Server Dang Trong Qua Trinh Dua Top - Chuc Nang Tam Dong <=====]")
		return
	end
	local gmrole = PlayerIndex;
	local count = GetPlayerCount();
	if count > 0 then 
		for i=1,count do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				RemoteExc("\\script\\jxprivate\\jx_xephang.lua", "BXH_LuuDSNhanVat", {GetName(), ST_GetTransLifeCount(), GetLevel(), GetExp(), GetExpPercent(), GetLastFactionNumber(), GetAccount()})
				SaveNow();
			end
		end
	end
	XepHang:SapXepTopToanServer()
	XepHang:Top10Server()
	XepHang:Top10MonPhai()
	print("[=====> Cap Nhat Bang Xep Hang Toan Server Hoan Tat<=====]")
end