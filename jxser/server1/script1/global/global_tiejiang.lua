--Th� r�n 7 th�nh th� edit by mcteam
Include("\\script\\global\\recoin_goldenequip.lua")
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\shenmi_chapman.lua");	--��װ������
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\tieungao\\thorentieungao.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\global\\shenmi_chapman.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--Include("\\script\\activitysys\\config\\6\\doitrangbi_ex.lua")
IncludeLib("ITEM")
function myreloadfile()
--dofile("script/global/tieungao/thorentieungao.lua")
--dofile("script/global/tieungao/dotim.lua")
dofile("script/global/global_tiejiang.lua")
--dofile("script/global/shenmi_chapman.lua")
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/activitysys/config/6/doitrangbi_ex.lua")
end

--------�̶��Ի� ����--------
function tiejiang_city(...)
	
	local nNpcIndex = GetLastDiagNpc();
	--local szNpcName = GetNpcName(nNpcIndex);
	--if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local szNpcName = "Th� r�n trong th�nh"
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	local aryParam = arg;
	
	if (getn(aryParam) == 0) then
		tbDailog.szTitleMsg = TIEJIANG_DIALOG
	else
		for i = 1, getn(aryParam) do
			if (i == 1) then
				tbDailog.szTitleMsg = TIEJIANG_DIALOG
			else
				local _,_, szOpt, szFun = strfind(aryParam[i], "([^/]+)/([^/]+)")
				local fn = getglobal(szFun)
				if fn then
					tbDailog:AddOptEntry(szOpt, fn);	
				end
			end;
		end;
	end;
	
	--myreloadfile();--reload file tho ren tieu ngao
	
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg, "<dec>", "")
	
	tbDailog:AddOptEntry("Giao d�ch", yes);
	tbDailog:AddOptEntry("��i 3 B� K�p --> 1 B� K�p Ng�u Nhi�n", doibikip);
	--tbDailog:AddOptEntry("C�a h�ng tinh l�c", energy_sale);
	--tbDailog:AddOptEntry("Giao d�ch", yes);
	if GetAccount() == "testgame4" or GetAccount()=="thaipham1" then
	--	tbDailog:AddOptEntry("Trang b� t�m ", gmtrangbitim);
	--	tbDailog:AddOptEntry("V�t ph�m ��c", onFoundry);
	--	tbDailog:AddOptEntry("N�ng c�p trang b� ho�ng kim", gmnangcaptrangbi_hk);
	--tbDailog:AddOptEntry("��i 3 B� K�p --> 1 B� K�p Ng�u Nhi�n", doibikip);
	end
	if vatphamkhamnam == 1 then
		tbDailog:AddOptEntry("V�t ph�m kh�m n�m", jewel_yes);
	end
	if phuchoitrangbihong == 1 then
		tbDailog:AddOptEntry("X� l� <trang b� �� b� h�ng>", deal_brokenequip);
	end
--	tbDailog:AddOptEntry("Ta ��n nh�n nhi�m v� S� nh�p", education_tiejiang);	
	if GetAccount()=="testgame4" or GetAccount()=="thaipham1" then
			
		--	tbDailog:AddOptEntry("Gh�p M�nh An Bang --> Trang B� An Bang", ghepmanhratrangbi);	
	end
	--	tbDailog:AddOptEntry("V�t ph�m ��c", onFoundry);
--	tbDailog:AddOptEntry("��i H� D� T�u M�c B�i", doihemocbai);
--	tbDailog:AddOptEntry("N�ng C�p D� T�u M�c B�i", nangcapdataumocbai);
--	tbDailog:AddOptEntry("��i M�nh Gh�p R��ng An Bang --> R��ng M�nh An Bang", doiruongmanhanbang);	
--	tbDailog:AddOptEntry("��i 500 Tinh Ng�c --> 1 ��i Tinh Ng�c", doitinhngoc);	
	--tbDailog:AddOptEntry("��i 500 B� C� --> 1 D�y Th�ng", doiboco);	
	--	tbDailog:AddOptEntry("N�ng C�p Phi Phong", nangcapphiphong);	
	--	tbDailog:AddOptEntry("N�ng C�p Ng�a", nangcapngua);	
	--tbDailog:AddOptEntry("��i B�o R��ng Huy�n Tho�i", doibaoruong);	

	--	tbDailog:AddOptEntry("V�t ph�m kh�m n�m", jewel_yes);
	--tbDailog:AddOptEntry("Nh�n ti�n gh� qua th�i", no, {});

	--tbDailog:AddOptEntry("��i R��ng Ho�ng Kim L�y Trang B�", exchange_lingpai2goldequip)

	tbDailog:Show()
end;
function doibikip()
	if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("��i B� K�p", "B� 3 B� K�p v�o. \nTh�nh c�ng nh�n ���c 1 B� K�p Ng�u Nhi�n","doibikip_ok")
end
function doibikip_ok(ncount)
local scrollarray = {}
	local scrollcount = 0
	local scrollidx = {}
	local y = 0
	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i);
		itemgenre, detailtype, parttype = GetItemProp(nItemIdx)
		if itemgenre == 6 and detailtype == 1 and ((parttype >=27 and parttype<=28) or (parttype >=33 and parttype<=43) or (parttype >=45 and parttype<=59)) then	
			y = y + 1
			scrollidx[y] = nItemIdx;
			scrollarray[i] = GetItemStackCount(nItemIdx)
			scrollcount = scrollcount + scrollarray[i]
		end
	end
	if (y ~= ncount) then
		Say("Xin h�y b� ��ng 3 B� K�p ��i hi�p mu�n ��i.", 2, "�! Th� ra ��t nh�m �� ta th� l�i./doibikip", "�� ta ki�m tra xem sao/no")
		return
	end
	if (scrollcount > 3) then
		Say("Ta ch� c�n 3 cu�n B� K�p, c�n l�i ng��i �em v� �i!", 2, "�! Th� ra ��t nh�m �� ta th� l�i./doibikip", "�� ta ki�m tra xem sao/no")
		return
	end
	if (scrollcount < 3) then
		Say("V�n ch�a �� 3 cu�n B� K�p! H�y th� l�i xem!", 2, "�! Th� ra ��t nh�m �� ta th� l�i./doibikip", "�� ta ki�m tra xem sao/no")
		return
	end
	if (scrollcount == 3) then
		for i = 1, y do
			RemoveItemByIndex(scrollidx[i])
		end
		lebaoskill()
	end;	
end
function lebaoskill()
local s = random(1,49)


if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Th�i c�c quy�n 3",tbProp={6,1,33,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�i c�c quy�n 3 <color> t� l�  bao B� K�p  ");
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Th�i c�c ki�m ph� 2",tbProp={6,1,34,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�i c�c ki�m ph� 2 <color> t� l� bao B� K�p ");
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="V�n Long K�ch",tbProp={6,1,35,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>V�n Long K�ch <color> t� l� bao b� k�p ");
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="L�u tinh �ao ph�p",tbProp={6,1,36,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>L�u tinh �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng ch�y ph�p 1",tbProp={6,1,37,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng ch�y ph�p <color> t� l� bao B� K�p ");
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng th��ng ph�p 2",tbProp={6,1,38,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng th��ng ph�p <color> t� l� bao B� K�p ");
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng �ao ph�p",tbProp={6,1,39,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Th�y y�n �ao",tbProp={6,1,40,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�y y�n �ao <color> t� l� bao B� K�p ");
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Th�y y�n song �ao",tbProp={6,1,41,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�y y�n song �ao<color> t� l� bao B� K�p ");
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="Di�t ki�m m�t t�ch",tbProp={6,1,42,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Di�t ki�m m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao B� K�p ");
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao B� K�p ");
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k�ch<color> t� l� bao B� K�p ");
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao B� K�p ");
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c ch��ng ph�p <color> t� l� bao B� K�p ");
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao B� K�p ");
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao B� K�p ");
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao B� K�p ");
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,52,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao B� K�p ");
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="Nhi�p h�n ch�",tbProp={6,1,53,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nhi?p h�n ch�<color> t� l� bao B� K�p ");
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="C�i bang ch��ng ph�p",tbProp={6,1,54,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>C�i bang ch��ng ph�p <color> t� l� bao B� K�p ");
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="C�i bang c�n ph�p",tbProp={6,1,55,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>C�i bang c�n ph�p <color> t� l� bao B� K�p ");
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m quy�n ph�p",tbProp={6,1,56,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�u l�m Quy�n ph�p <color> t� l� bao B� K�p ");
end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m c�n ph�p",tbProp={6,1,57,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�u l�m c�n ph�p <color> t� l� bao B� K�p ");
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m �ao ph�p",tbProp={6,1,58,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�u l�m �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==29 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==30 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==31 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao B� K�p ");
end;
if s==32 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao B� K�p ");
end;
if s==33 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k�ch<color> t� l� bao B� K�p ");
end;
if s==34 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao B� K�p ");
end;
if s==35 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c ch��ng ph�p <color> t� l� bao B� K�p ");
end;
if s==36 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==37 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao B� K�p ");
end;
if s==38 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao B� K�p ");
end;
if s==39 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao B� K�p ");
end;
if s==40 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao B� K�p ");
end;
if s==41 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao B� K�p ");
end;
if s==42 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao B� K�p ");
end;
if s==43 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k�ch<color> t� l� bao B� K�p ");
end;
if s==44 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao B� K�p ");
end;
if s==45 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c ch��ng ph�p <color> t� l� bao B� K�p ");
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� ��c �ao ph�p <color> t� l� bao B� K�p ");
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao B� K�p ");
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao B� K�p ");
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao B� K�p ");
end;
end
function nangcapdataumocbai()
local tbSay = 
{
"N�ng D� T�u M�c B�i C�p 1 --> C�p 2 /#nangdatau1()",
"N�ng D� T�u M�c B�i C�p 2 --> C�p 3 /#nangdatau2()",
"N�ng D� T�u M�c B�i C�p 3 --> C�p 4 /#nangdatau3()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
function nangdatau3()
	if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p", "B� D� T�u M�c B�i v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-H�n Ng�c C�p 4","nangdatau3_ok")
end
function nangdatau3_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangdatau3", "Ta xin th�i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30058,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF>=6263 and nGoldEquipIdxFF<=6266 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30058,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng c� 1 H�n Ng�c C�p 4")
				return
			end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� D� T�u M�c B�i C�p 3")
		return
	end
end
function nangdatau2()
	if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p", "B� D� T�u M�c B�i v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-H�n Ng�c C�p 3","nangdatau2_ok")
end
function nangdatau2_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangdatau2", "Ta xin th�i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30057,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF>=6259 and nGoldEquipIdxFF<=6262 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30057,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng c� 1 H�n Ng�c C�p 3")
				return
			end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� D� T�u M�c B�i C�p 2")
		return
	end
end
function nangdatau1()
	if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p", "B� D� T�u M�c B�i v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-H�n Ng�c C�p 2","nangdatau1_ok")
end
function nangdatau1_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangdatau1", "Ta xin th�i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30056,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6258 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30056,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng c� 1 H�n Ng�c C�p 2")
				return
			end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� D� T�u M�c B�i C�p 1")
		return
	end
end
function doihemocbai()
local tbSay = 
{
"��i Sang S�c M�nh /#doitrangsuc(6255)",
"��i Sang Th�n Ph�p /#doitrangsuc(6256)",
"��i Sang Sinh Kh� /#doitrangsuc(6257)",
"��i Sang N�i C�ng /#doitrangsuc(6258)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
IDtrangss=0
function doitrangsuc(IDtrangsuc)
	IDtrangss=IDtrangsuc
	if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p", "B� D� T�u M�c B�i v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-50 Xu","doitrangsuc_ok")
end
function doitrangsuc_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doitrangsuc", "Ta xin th�i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(4,417,1,1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6270 then
		if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6258 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,IDtrangss},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng �� 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6259 and nGoldEquipIdxFF<=6262 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,IDtrangss+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng �� 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6263 and nGoldEquipIdxFF<=6266 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,IDtrangss+8},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng �� 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6267 and nGoldEquipIdxFF<=6270 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D� T�u M�c B�i",tbProp={0,IDtrangss+12},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
			else
				Say("H�nh trang kh�ng �� 50 Xu")
				return
			end
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� D� T�u M�c B�i")
		return
	end
end
function doiboco()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(6,1,4415,-1)>=500 then
		ConsumeEquiproomItem(500,6,1,4415,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "D�y Th�ng",tbProp={6,1,4416,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng �� 500 B� C�.")
		return
	end
end
function doitinhngoc()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(6,1,4409,-1)>=500 then
		ConsumeEquiproomItem(500,6,1,4409,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "��i Tinh Ng�c",tbProp={6,1,4410,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng �� 500 Tinh Ng�c.")
		return
	end
end
function doiruongmanhanbang()
	local manhghep=CalcEquiproomItemCount(4,1624,1,1)
	local xu=CalcEquiproomItemCount(4,417,1,1)
	if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
	if manhghep>=50 and xu>=50 then
		ConsumeEquiproomItem(50,4,1624,1,1)
		ConsumeEquiproomItem(50,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "R��ng M�nh An Bang",tbProp={6,1,4470,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng �� 50 M�nh Gh�p R��ng An Bang + 50 Xu.")
		return
	end
end
function ghepmanhratrangbi()
local tbSay = 
{
"An Bang B�ng Tinh Th�ch H�ng Li�n /#nangphivan()",
"An Bang C�c Hoa Th�ch Ch� ho�n /#nangbontieu()",
"An Bang �i�n Ho�ng Th�ch Ng�c B�i /#nangbontieu()",
"An Bang K� Huy�t Th�ch Gi�i Ch� /#nangbontieu()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
function nangcapngua()
local tbSay = 
{
"N�ng C�p Ng�a 8x --> Ng�a Phi V�n /#nangphivan()",
"N�ng C�p Ng�a Phi V�n --> Ng�a B�n Ti�u /#nangbontieu()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
function nangphivan()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Ng�a", "B� ng�a 3 8x v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-200 B� C�\n-1 D�y Th�ng\n-2 B� Thu� Tinh\n T� l� th�nh c�ng: 100%","nangphivan_ok")
end
function nangphivan_ok(nCount)
local daythung= CalcEquiproomItemCount(6,1,4416,-1)--D�y Th�ng
local coxanh= CalcEquiproomItemCount(6,1,4415,-1)--C� Xanh
local nguabontieu= CalcEquiproomItemCount(0,10,5,-1)--B�n Ti�u
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
if (nCount == 0) then 
			Say("ng��i ��t c�i g� v�o th� n�y ta ch� c�n 3 ng�a 8x v�o th�i c�n l�i t�t c� th� kh�c �� b�n ngo�i",0);
		return
	end
	if (nCount ~= 3) then 
			Say("C�c h� ch� c�n b� v�o 3 ng�a v�o trong.",0);
		return
	end
for i=1,nCount do
local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nCurItemQuality = GetItemQuality(nCurItemIdx);
local nCurTime = GetCurServerTime()
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nD~=10 and nP~=5 then
	Say("Th� ng��i b� v�o kh�ng ph�i l� Ng�a 8x")
	return
	end
end		
		local tbItem = 
	{	
		{szName = "Phi V�n", tbProp = {0,10,8,10,0,0,0}, nCount = 1},	
	}
	if  nguabontieu>=3 and coxanh>=200 and daythung>=1 and lamthuytinh>=2 and lucthuytinh>=2 and tuthuytinh>=2 then
				ConsumeEquiproomItem(3, 0,10, 5,-1)
				ConsumeEquiproomItem(2,4,238,1,1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,240,1,1)
				ConsumeEquiproomItem(200,6,1,4415,-1)
				ConsumeEquiproomItem(1,6,1,4416,-1)
				tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
				Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� luy�n th�nh c�ng <color=red> Phi V�n.")
				WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  �p th�nh c�ng Phi V�n\n");	
	else 
			Say("Kh�ng �� Nguy�n Li�u.");
	end
end
function nangbontieu()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng C�p Ng�a", "B� 2 Phi V�n v�o. \nKh�ng b� Nguy�n Li�u v�o.\nNguy�n li�u:\n-400 B� C�\n-2 D�y Th�ng\n-4 B� Thu� Tinh\n T� l� th�nh c�ng: 100%","nangbontieu_ok")
end
function nangbontieu_ok(nCount)
local daythung= CalcEquiproomItemCount(6,1,4416,-1)--D�y Th�ng
local coxanh= CalcEquiproomItemCount(6,1,4415,-1)--C� Xanh
local nguabontieu= CalcEquiproomItemCount(0,10,8,-1)--B�n Ti�u
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
if (nCount == 0) then 
			Say("ng��i ��t c�i g� v�o th� n�y ta ch� c�n 2 Phi V�n v�o th�i c�n l�i t�t c� th� kh�c �� b�n ngo�i",0);
		return
	end
	if (nCount ~= 2) then 
			Say("C�c h� ch� c�n b� v�o 2 ng�a Phi V�n v�o trong.",0);
		return
	end
for i=1,nCount do
local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nCurItemQuality = GetItemQuality(nCurItemIdx);
local nCurTime = GetCurServerTime()
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nD~=10 and nP~=8 then
	Say("Th� ng��i b� v�o kh�ng ph�i l� Ng�a Phi V�n")
	return
	end
end		
		local tbItem = 
	{	
		{szName = "B�n Ti�u", tbProp = {0,10,6,10,0,0,0}, nCount = 1},	
	}
	if  nguabontieu>=2 and coxanh>=400 and daythung>=2 and lamthuytinh>=4 and lucthuytinh>=4 and tuthuytinh>=4 then
				ConsumeEquiproomItem(2, 0,10, 8,-1)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4415,-1)
				ConsumeEquiproomItem(2,6,1,4416,-1)
				tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
				Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� luy�n th�nh c�ng <color=red> B�n Ti�u.")
				WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  �p th�nh c�ng B�n Ti�u\n");	
	else 
			Say("Kh�ng �� Nguy�n Li�u.");
	end
end
function nangcapphiphong()
local tbSay = 
{
"N�ng C�p Phi Phong C�p 1 --> C�p 2 /#phiphong2()",
"N�ng C�p Phi Phong C�p 2 --> C�p 3 /#phiphong3()",
"��t Ph� Phi Phong C�p 3 --> C�p 4 - 1 Sao /#phiphong4()",
"N�ng Sao Phi Phong C�p 4 /#nangsaophiphong()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o?",getn(tbSay),tbSay)
end
function phiphong2()
if CalcFreeItemCellCount() < 10 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p phi phong.", "B� Phi Phong C�p 1 v�o.\nKh�ng b� nguy�n li�u v�o.\n-200 Tinh Ng�c\n-1 ��i Tinh Ng�c\n-2 B� Thu� Tinh\n-3000 V�n L��ng.", "phiphong2_ok")
end
function phiphong2_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/phiphong2", "Ta xin th�i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF==3467 then
		if tinhngoc>=200 and daitinhngoc>=1 and lamthuytinh>=2 and tuhuytinh>=2 and lucthuytinh>=2 and tienvan>=30000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,4,238,1,1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,240,1,1)
				ConsumeEquiproomItem(200,6,1,4409,-1)
				ConsumeEquiproomItem(1,6,1,4410,-1)
				Pay(30000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong C�p 2",tbProp={0,3468},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 2.<color>")
		else
			Say("H�nh trang kh�ng �� 200 Tinh Ng�c + 1 ��i Tinh Ng�c + 2 B� Thu� Tinh + 3000 V�n L��ng")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� Phi Phong C�p 1")
		return
	end
end
function phiphong3()
if CalcFreeItemCellCount() < 10 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p phi phong.", "B� Phi Phong C�p 1 v�o.\nKh�ng b� nguy�n li�u v�o.\n-400 Tinh Ng�c\n-2 ��i Tinh Ng�c\n-4 B� Thu� Tinh\n-6000 V�n L��ng.", "phiphong3_ok")
end
function phiphong3_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/phiphong3", "Ta xin th�i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF==3468 then
		if tinhngoc>=400 and daitinhngoc>=2 and lamthuytinh>=4 and tuhuytinh>=4 and lucthuytinh>=4 and tienvan>=60000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4409,-1)
				ConsumeEquiproomItem(2,6,1,4410,-1)
				Pay(60000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong C�p 3",tbProp={0,3469},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Phi Phong C�p 3.<color>")
		else
			Say("H�nh trang kh�ng �� 400 Tinh Ng�c + 2 ��i Tinh Ng�c + 4 B� Thu� Tinh + 6000 V�n L��ng")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� Phi Phong C�p 2")
		return
	end
end
function phiphong4()
if CalcFreeItemCellCount() < 10 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p phi phong.", "B� Phi Phong C�p 3 v�o.\nKh�ng b� nguy�n li�u v�o.\n-400 Tinh Ng�c\n-2 ��i Tinh Ng�c\n-4 B� Thu� Tinh\n-6000 V�n L��ng.", "phiphong4_ok")
end
function phiphong4_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/phiphong4", "Ta xin th�i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF==3469 then
		if tinhngoc>=400 and daitinhngoc>=2 and lamthuytinh>=4 and tuhuytinh>=4 and lucthuytinh>=4 and tienvan>=60000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4409,-1)
				ConsumeEquiproomItem(2,6,1,4410,-1)
				Pay(60000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong C�p 4",tbProp={0,6241},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> ��t ph� th�nh c�ng <color=yellow>Phi Phong C�p 4.<color>")
		else
			Say("H�nh trang kh�ng �� 400 Tinh Ng�c + 2 ��i Tinh Ng�c + 4 B� Thu� Tinh + 6000 V�n L��ng")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� Phi Phong C�p 3")
		return
	end
end
function nangsaophiphong()
if CalcFreeItemCellCount() < 10 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng sao phi phong.", "B� Phi Phong C�p 4 v�o.\nKh�ng b� nguy�n li�u v�o.\n-150 Tinh Ng�c\n-1 ��i Tinh Ng�c.", "nangsaophiphong_ok")
end
function nangsaophiphong_ok(nCount)
	if nCount~=1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/nangsaophiphong", "Ta xin th�i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	if nGoldEquipIdxFF>=6241 and nGoldEquipIdxFF<=6250 then
		if tinhngoc>=150 and daitinhngoc>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(150,6,1,4409,-1)
				ConsumeEquiproomItem(1,6,1,4410,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong C�p 4",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng sao th�nh c�ng <color=yellow>Phi Phong C�p 4.<color>")
		else
			Say("H�nh trang kh�ng �� 150 Tinh Ng�c + 1 ��i Tinh Ng�c")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� Phi Phong C�p 4")
		return
	end
end
function doibaoruong()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng")
		return
	end
	local manh=CalcEquiproomItemCount(4,1622,1,1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	if manh>=20 and GetCash()>=500000 then
		ConsumeEquiproomItem(20,4,1622,1,1)
		--ConsumeEquiproomItem(1,4,239,1,1)
		Pay(500000)
		tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Huy�n Tho�i",tbProp={6,1,4443,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng �� 20 M�nh Ph�i T�m + 50 V�n L��ng")
		return
	end
	
end
--------�̶��Ի� ���ִ�------
function tiejiang_village(...)
	local aryParam = arg;
	local aryDescribe = {
		--szDialog,		--������˵�����ڸ�����������
		"Giao d�ch/yes",
		
		--Change request 04/06/2011, ��ng ch� t�o trang b� b�ch kim - Modified by DinhHQ - 20110605
--	"V�t ph�m ��c/onFoundry",
		
		"Ta ��n nh�n nhi�m v� S� nh�p/tboss",
		"Nh�n ti�n gh� qua th�i/no",
	};
	
	if (getn(aryParam) == 0) then
		tinsert(aryDescribe, 1, TIEJIANG_DIALOG)
	else
		for i = 1, getn(aryParam) do
			if (i == 1) then
				tinsert(aryDescribe, 1, aryParam[i]);
			else
				tinsert(aryDescribe, 2, aryParam[i]);
			end;
		end;
	end;
	CreateTaskSay(aryDescribe);
end;

--------��Ƕ--------
function jewel_yes()
	CreateTaskSay({"<dec><npc>Th�y tinh kh�m n�m li�n quan ��n s� c�n b�ng ng� h�nh, ph��ng ph�p chuy�n linh kh� tuy�t nhi�n kh�ng th� d�ng s�c ng��i ���c, kh�ng h�n nh� ��i hi�p hi v�ng th�nh v�t ph�m tuy�t th� nh�n gian, m� v� kh� �� ph� v� v�c ngo�i k� tr�n ch� gi�p chuy�n ��i ��ng c�p c�a trang b�. C�c h� mu�n kh�m n�m trang b� n�y kh�ng?", "B�t ��u kh�m n�m/jewel_yes1", "Li�n quan kh�m n�m/help", "�� ta suy ngh� k� l�i xem/no"});
end

function jewel_yes1()
	EnchaseItem()
end

-------No--------
function no()
end;

------����-------
function energy_sale()
	CreateStores();
	AddShop2Stores(174, "C�a h�ng tinh l�c", 15, 100, "fBuyCallBack(%d,%d)");
	OpenStores();
end

function fBuyCallBack(nItemIdx, nPrice)
	local nCount = 1
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx)
	if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then
		-- ������
		AddStatData("jlxiaohao_shiliantiegoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then
		-- �������
		AddStatData("jlxiaohao_xuantiangoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then
		-- �����
		AddStatData("jlxiaohao_qingjulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then
		-- ��¹��
		AddStatData("jlxiaohao_yunlulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then
		-- ������
		AddStatData("jlsxiaohao_canglanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then
		-- ��Գ��
		AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then
		-- ������
		AddStatData("jlxiaohao_zimanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then
		-- ����Կ��
		AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then
		-- �׵���
		AddStatData("jlxiaohao_yandilinggoumai", nCount)
	end											
	return 1
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
