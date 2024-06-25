IncludeLib("LEAGUE");
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\task\\task_addplayerexp.lua")
IncludeLib("TASKSYS");

function main()
	dofile("script/global/update_feature/van_tieu_ca_nhan/npcdichden.lua")
	Say("S� H�ng C�a Ta To�n Ng�c Ng� Ch�u b�o, Ng��i C�n Th�n D�m ta", 
	2, 
	"Ta ��n �� giao  Chuy�n H�ng N�y/giao_baoluong", 
	"K�t th�c ��i tho�i/Cancel");
end;

function giao_baoluong()
	local nHour = tonumber(GetLocalDate("%H%M"))
	if( nHour >= 2359) then
		Talk(1, "", "T�t c� bao l��ng �� v�n chuy�n t� �i�m t�p k�t ��n chi�n tr��ng r�i. Nhi�m v� c�a ng��i �� th�t b�i")
		nhiemvu_thatbai()
		return  
	end
	if GetTask(3920) == 0  then
		Talk(1, "", "Chuy�n H�ng c�a nh� ng��i ��u! Mau v�n chuy�n v� ��y r�i nh�n th��ng")
		return
	end
	tranhiemvu_baoluong()
end

function nhiemvu_thatbai()
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
end

function tranhiemvu_baoluong()
	SetTask(3922,GetTask(3922)+1)
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
      
	local szNewsGiaoBL = (format("<color=fire>��i hi�p <color=gold>"..GetName().."<color> ho�n th�nh v�n chuy�n h�ng ��n cho th��ng nh�n t�y v�c"))
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNewsGiaoBL, "", "");
	phan_thuongbl()
end
function phan_thuongbl()
local n_solan = GetTask(5969);
	if ( n_solan >= 4 ) then
	      tl_addPlayerExp(10000000000)   
	   Msg2Player("Nh�n ���c 10 ty c� c�ng d�n") 
        end
        if ( n_solan < 4 ) then
	      tl_addPlayerExp(300000000000)   
	   Msg2Player("Nh�n ���c 300 ty c� c�ng d�n") 
        end
	--if GetLevel() < 190 then
	--	local EXP = 1000000000
	--	tl_addPlayerExp(EXP)
	--	Msg2Player("Nh�n ���c 1.T�  �i�m kinh nghi�m c�ng d�n v� ��ng c�p d��i 190")
	--end
	--if GetLevel() >= 190 then
	--	local EXP = 100000000000
	--	tl_addPlayerExp(EXP)
	--	Msg2Player("Nh�n ���c 100 T� �i�m kinh nghi�m c�ng d�n")
	--end
	local tbAward =
	{
		{{szName = "Tien Xu",tbProp = {4,1496,1,1,0,0},nCount = 100,nRate = 100},},
		{{szName = "B�o Th�ch R��ng ",tbProp = {6, 1, 4807, 1, 0, 0},nCount=1000,nRate = 100},},
		{{szName = "B�o Th�ch R��ng ",tbProp = {6,1,63018,1,0,0},nCount=30,nBindState = -2,nExpiredTime=1440,nRate = 100},},

	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng V�n chuy�n Bao L��ng")
	--tbAwardTemplet:Give(tbrandom_baothachruong, 1, {"PHANTHUONGBAOTHACHRUONG", "VanLuongThanhCong"})
         KickOutSelf()      
end
