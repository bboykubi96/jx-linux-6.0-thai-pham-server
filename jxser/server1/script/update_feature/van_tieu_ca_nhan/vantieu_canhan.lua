IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\gb_taskfuncs.lua")
Include("\\script\\activitysys\\functionlib.lua")
IncludeLib("TASKSYS");

--------------------------------------------------------------------------------

function main()
	dofile("script\\update_feature\\van_tieu_ca_nhan\\vantieu_canhan.lua")
	local nHour = tonumber(GetLocalDate("%H%M"))
        local nCongHuan = CalcEquiproomItemCount(6, 1, 30311, 1) ;
		if (nCongHuan < 1) then
				Talk(1,"","<color=white>thi�u hi�p kh�ng mang theo <color=orange>Danh T� L�nh<color> r�i !!") 
			return
		end
	if( nHour < 0100 or nHour > 2359) then
		Talk(1, "", "Th�i gian nh�n Bao L��ng t� 01:00 v� k�t th�c v�o l�c 23:59. Ng�y mai ng��i h�y quay l�i.")
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i d� th��ng phi chi�n ��u kh�ng th� tham gia.")
		return
	end
	
	--Say("��i qu�n tr�n chi�n tr��ng �ang r�t c�n l��ng th�c ��i hi�p c� th� ��a Bao L��ng n�y v� �i�m t�p k�t �� v�n chuy�n ��n chi�n tr��ng kh�ng!", 
	--2, 
	--"Ti�p nh�n Bao L��ng/nhan_baoluong", 
	--"K�t th�c ��i tho�i/Cancel");
nhan_baoluong()
end;

function nhan_baoluong()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 

	local nDate = tonumber(GetLocalDate("%d"))
		if ( GetTask(3921) ~= nDate ) then
		SetTask(3921, nDate);
		SetTask(3922,0)
	end
		if GetTask(3922)== 1  then
		Talk(1, "", "M�i ng�y ch� v�n chuy�n Bao L��ng ���c 1 l�n. Ng�y mai quay l�i nh�") 
		return
	end
	if GetTask(3920) == 1  then
		Talk(1, "", "Ng��i �ang v�n chuy�n Bao L��ng m� c�n mu�n nh�n n�a sao. Mau di chuy�n ��n �i�m t�p k�t �i.")
		return
	end
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end
	if GetLevel() < 80 then
		Talk(1, "", "Ph�i ��t c�p 80 tr� l�n th� m�i nh�n ���c Bao L��ng, Quay v� luy�n t�p th�m �i<color>")
		return
	end		  
	if CalcItemCount(-1, 6, 1, 30311, -1) < 1 then
		Talk(1, "", "Ng��i kh�ng mang theo <color=orange>Bao L��ng �y nhi�m<color> ta kh�ng th� gi�p ng��i nh�n nhi�m v�!")
		return
	end
	DoiSangTieu()
end

function DoiSangTieu()
ConsumeEquiproomItem(1,6,1,30311,-1);
local nID = {1341,1342}
local nIndex = random(1, 2)
SetTask(3920,1)
ChangeOwnFeature( 1, 3500*18, nID[nIndex],  0, 0, 0, 0)
SetTaskTemp(200,1); 
ForbidEnmity(1);
DisabledUseTownP(1);
ForbitSkill(1);
ForbitTrade(1); 
SetMoveSpeed(6);
AddSkillState(464, 5, 0, 18*3000); -- H�i ph�c 500 sinh l�c gi�y
AddSkillState(739, 1, 0, 18*3000); --CHIM
AddSkillState(313, 10, 0, 18*3000); -- Kh�ng T�t C� 25%
AddSkillState(458, 60, 0, 18*3000); -- M�u t�ng 3000%
AddSkillState(729, 1, 0, 18*3000); -- V�ng s�ng H�a Di�m
SetDeathScript("\\script\\update_feature\\van_tieu_ca_nhan\\vantieu_canhan.lua");
Msg2Player("Nh�n <color=orange>Bao L��ng<color> th�nh c�ng. Mau di chuy�n ��n �i�m t�p k�t")
AddGlobalNews("C�p b�o! Ng��i ch�i <color=orange>"..GetName().."<color> v�a ti�p nh�n Bao L��ng t�i La Ti�u S�n");
end

function OnDeath(nPlayerIndex)
local tbAward = 
{
	[1]={szName="Bao L��ng �y nhi�m",tbProp={6,1,30311,1,0,0},nRate = 50,nExpiredTime=1440},
}
SetTask(3920,0)
ForbidEnmity(0);
DisabledUseTownP(0);
ForbitTrade(0); 
ForbitSkill(0);
SetMoveSpeed(-1);
RestoreOwnFeature();
RemoveSkillState(464);
RemoveSkillState(739);
RemoveSkillState(313);
RemoveSkillState(458);
RemoveSkillState(729);
SetDeathScript("");
Msg2Player("Bao L��ng c�a b�n �� b� c��p! Nhi�m vu th�t b�i");
tbDropTemplet:GiveAwardByList(nPlayerIndex, -1, tbAward, "Carriage Drop Item", 1)
local szNewsBL = (format("<color=fire>Cao th� <color=gold>"..GetNpcName(nPlayerIndex).."<color> v�a c��p th�nh c�ng Bao L��ng c�a <color=gold>"..GetName().."<color>"))
LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNewsBL, "", "");
end

function xoatieu_khithoat()
SetTask(3920,0)
ForbidEnmity(0);
DisabledUseTownP(0);
ForbitTrade(0); 
ForbitSkill(0);
SetMoveSpeed(-1);
RestoreOwnFeature();
RemoveSkillState(464);
RemoveSkillState(739);
RemoveSkillState(313);
RemoveSkillState(458);
RemoveSkillState(729);
end