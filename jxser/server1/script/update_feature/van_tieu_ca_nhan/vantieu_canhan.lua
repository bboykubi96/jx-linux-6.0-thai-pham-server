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
				Talk(1,"","<color=white>thiÕu hiÖp kh«ng mang theo <color=orange>Danh Tó LÖnh<color> råi !!") 
			return
		end
	if( nHour < 0100 or nHour > 2359) then
		Talk(1, "", "Thêi gian nhËn Bao L­¬ng tõ 01:00 vµ kÕt thóc vµo lóc 23:59. Ngµy mai ng­¬i h·y quay l¹i.")
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i dÞ th­êng phi chiÕn ®Êu kh«ng thÓ tham gia.")
		return
	end
	
	--Say("§¹i qu©n trªn chiÕn tr­êng ®ang rÊt cÇn l­¬ng thùc ®¹i hiÖp cã thÓ ®­a Bao L­¬ng nµy vÒ ®iÓm tËp kÕt ®Ó vËn chuyÓn ®Õn chiÕn tr­¬ng kh«ng!", 
	--2, 
	--"TiÕp nhËn Bao L­¬ng/nhan_baoluong", 
	--"KÕt thóc ®èi tho¹i/Cancel");
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
		Talk(1, "", "Mçi ngµy chØ vËn chuyÓn Bao L­¬ng ®­îc 1 lÇn. Ngµy mai quay l¹i nhÐ") 
		return
	end
	if GetTask(3920) == 1  then
		Talk(1, "", "Ng­¬i ®ang vËn chuyÓn Bao L­¬ng mµ cßn muèn nhËn n÷a sao. Mau di chuyÓn ®Õn §iÓm tËp kÕt ®i.")
		return
	end
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end
	if GetLevel() < 80 then
		Talk(1, "", "Ph¶i ®¹t cÊp 80 trë lªn th× míi nhËn ®­îc Bao L­¬ng, Quay vÒ luyÖn tËp thªm ®i<color>")
		return
	end		  
	if CalcItemCount(-1, 6, 1, 30311, -1) < 1 then
		Talk(1, "", "Ng­¬i kh«ng mang theo <color=orange>Bao L­¬ng ñy nhiÖm<color> ta kh«ng thÓ gióp ng­¬i nhËn nhiÖm vô!")
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
AddSkillState(464, 5, 0, 18*3000); -- Håi phôc 500 sinh lùc gi©y
AddSkillState(739, 1, 0, 18*3000); --CHIM
AddSkillState(313, 10, 0, 18*3000); -- Kh¸ng TÊt C¶ 25%
AddSkillState(458, 60, 0, 18*3000); -- M¸u t¨ng 3000%
AddSkillState(729, 1, 0, 18*3000); -- Vßng s¸ng Háa DiÖm
SetDeathScript("\\script\\update_feature\\van_tieu_ca_nhan\\vantieu_canhan.lua");
Msg2Player("NhËn <color=orange>Bao L­¬ng<color> thµnh c«ng. Mau di chuyÓn ®Õn ®iÓm tËp kÕt")
AddGlobalNews("CÊp b¸o! Ng­¬i ch¬i <color=orange>"..GetName().."<color> võa tiÕp nhËn Bao L­¬ng t¹i La Tiªu S¬n");
end

function OnDeath(nPlayerIndex)
local tbAward = 
{
	[1]={szName="Bao L­¬ng ñy nhiÖm",tbProp={6,1,30311,1,0,0},nRate = 50,nExpiredTime=1440},
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
Msg2Player("Bao L­¬ng cña b¹n ®· bÞ c­íp! NhiÖm vu thÊt b¹i");
tbDropTemplet:GiveAwardByList(nPlayerIndex, -1, tbAward, "Carriage Drop Item", 1)
local szNewsBL = (format("<color=fire>Cao thñ <color=gold>"..GetNpcName(nPlayerIndex).."<color> võa c­íp thµnh c«ng Bao L­¬ng cña <color=gold>"..GetName().."<color>"))
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