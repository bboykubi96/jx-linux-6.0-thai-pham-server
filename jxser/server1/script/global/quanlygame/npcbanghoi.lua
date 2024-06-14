IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\tieungao\\huyvatpham.lua")
Include("\\script\\global\\g7vn\\hotrotinhnang.lua")
Include("\\script\\global\\g7vn\\npctanthu.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")

Include("\\script\\logevent\\logeventtopbang.lua");
Include("\\script\\logevent\\variablestopbang.lua");



function main()
	
	dofile("script/global/quanlygame/npcbanghoi.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")
if GetAccount()=="testgame4" then
--	SetTask(3024,0)
--	SetTask(3025,0)
end
	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan ngh�nh m�i ng��i ��n v�i <color=yellow>http://volam1.com<color>"
	local Opt = 
	{
	--	{"Nh�n ��n B� Long Tr�", NhanDenBuSuCo3},
		{"L�p Bang H�i", dmcreattongtest_c},
	--	{"Mua 1 L�n ��i M�u Bang - Ch� Gi�nh Cho Bang Ch� Ho�c Tr��ng L�o (100 Xu)", mualenhbai},
		{"N�p Ti�n V�n V�o Bang", nganquyban},
	--	{"N�p Khi�u Chi�n L�nh (300 C�i - 1 Ng�y)", nopphieubang},
		{"K�t th�c ��i tho�i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
end
function NhanDenBuSuCo3()
	if (GetTask(5997) <2 )then
			tbAward = 
			{
			{szName="�i�m Kinh Nghi�m",nExp_tl = 30000000},
			}
		tbAwardTemplet:Give(tbAward, 1, {"DT", "test"})
		Msg2SubWorld("<color=cyan>��i hi�p <color=green>"..GetName().."<color> �� nh�n 30.000.000 EXP ��n b� long tr� � NPC Bang H�i. <color>")
			SetTask(5997,2)
	else
		Say("��i hi�p �� nh�n r�i... ��ng qu� tham lam.")
		return
	end
end
function mualandoibang()
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
		SetTask(3029,GetTask(3029)+1)
	else
	Say("H�nh trang kh�ng c� �� 100 Xu")
	return
	end
end
function dmcreattongtest_c()
local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng ��i hi�p �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o Bang/Direct_CreateTong","�� ta suy ngh� l�it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("��i hi�p: Ng��i c� mu�n l�p bang?." ,2,"Kh�ng th�nh v�n �� ta mu�n l�p bang ngay! /create_pay_yes","�� ta suy ngh� l�i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		else
			Talk(6,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Mu�n l�p bang th� ph�i c� ti�n ng��i mau mang ti�n l�i ��y r�i h�y n�i chuy�n. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("Ta ��y l� tr�m bang ch� <color=green>"..GetName().." <color=pink>mu�n th�ng tr� server n�y anh em n�o mu�n theo ta xin m�i v�o bang")				
end
function nganquyban()
local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i,  kh�ng th� s� d�ng ch�c n�ng.");
		return
    end
	AskClientForNumber("nganquyban_ok", 1, 2000000000, "Nh�p s� l��ng")
end
function nganquyban_ok(nNum)
	local sltien = GetCash()
	local nAdd = 10000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nNum) then
		Say("��i hi�p kh�ng mang ��: "..nNum.." l��ng")
		return
		end
	szMsg = szMember.." �� ��ng g�p "..nNum.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nNum)
	Pay(nNum)
end
function mualenhbai()
		if CalcFreeItemCellCount()<10 then
		Say("H�nh trang kh�ng �� 10 � tr�ng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Th��ng C� L�nh B�i",tbProp={6,1,4474,1,1},nCount=1},}, "test", 1);
	else
		Say("H�nh trang kh�ng c� �� 100 Xu.")
		return
	end
end
function topnopphieubang()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=Green>%d <color> - <color=red>%s<color> s� l��ng <color=cyan>%d\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end
function nopphieubang()
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		--Msg2Player("Ch�a gia nh�p bang h�i,  kh�ng th� s� d�ng ch�c n�ng.");
		--return
    end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		--Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch s� d�ng ch�c n�ng n�y.");
	--	return
	end;
	
	AskClientForNumber("nopphieubang_ok", 1, 300, "Nh�p s� l��ng")
end

function nopphieubang_ok(nNum)
	if nNum<1 or nNum>300 then
		Say("Nh�p s� l��ng t� 1 ��n 300 th�i.")
		return
	end
		local szTongName, nTongID = GetTongName();
	local phieubang=CalcEquiproomItemCount(6,1,1499,-1)
	if phieubang>=nNum then
			local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3024) then
		SetTask(3024,nDate)
		SetTask(3025,0)
	end
	if (GetTask(3025)+nNum)>300 and nDate==GetTask(3024) then
		Say("M�i ng�y ch� n�p 300 Khi�u Chi�n L�nh. H�y ��i ng�y mai n�p ti�p.")
		return 1
	end
	AddOwnExp(20000*nNum)
	SetTask(3025,GetTask(3025)+nNum)
	local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	SetTask(3024,nDate2)
		--SetTask(5333,GetTask(5333)+nNum)
		ConsumeEquiproomItem(nNum,6,1,1499,-1)
		
	else
		Say("H�nh trang kh�ng c� �� Khi�u Chi�n L�nh.")
		return
	end
end

function doinguaphivan()
	if CalcFreeItemCellCount()<10 then
		Say("H�nh trang kh�ng �� 10 � tr�ng.")
		return
	end
	local phivanthach=CalcEquiproomItemCount(4,1620,1,1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local thbt=CalcEquiproomItemCount(4,353,1,1)
	if phivanthach>=10 and lamthuytinh>=3 and lucthuytinh>=3 and tuthuytinh>=3 and thbt>=5 then
		local ngua=random(1,100)
		if ngua<=30 then
			ConsumeEquiproomItem(10,4,1620,1,1)
			ConsumeEquiproomItem(3,4,238,1,1)
			ConsumeEquiproomItem(3,4,239,1,1)
			ConsumeEquiproomItem(3,4,240,1,1)
			ConsumeEquiproomItem(5,4,353,1,1)
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V�n",tbProp={0,10,8,10,0,0,0},nCount=1},}, "test", 1);
			Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� �p th�nh c�ng ng�a <color=yellow>Phi V�n<color> t�i <color=blue>NPC �p ng�a")
		else
			ConsumeEquiproomItem(10,4,1620,1,1)
			ConsumeEquiproomItem(3,4,238,1,1)
			ConsumeEquiproomItem(3,4,239,1,1)
			ConsumeEquiproomItem(3,4,240,1,1)
			ConsumeEquiproomItem(5,4,353,1,1)
			Msg2SubWorld("<color=green>Xin chia bu�n c�ng th� ch� <color=red>"..GetName().."<color> �� �p x�t ng�a <color=yellow>Phi V�n<color> t�i <color=blue>NPC �p ng�a")
		end
	else
		Say("��i ng�a Phi V�n c�n 10 Phi V�n Th�ch + 3 B� Th�y Tinh + 5 THBT. T� l� th�nh c�ng: 30%")
		return
	end
end