IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
--Include("\\script\\global\\fuyuan.lua")
--Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
--Include("\\script\\global\\tieungao\\huyvatpham.lua")
--Include("\\script\\global\\g7vn\\g7giftcodetanthu.lua")

function main()
	dofile("script/fwcloud/dautruongsinhtu/npc/trinhsat.lua")
	local szTong = GetTongName()
	if szTong == "" then
		Msg2Player("Kh«ng cã trong bang héi, kh«ng thÓ tham gia.")
		return
	end

	local nHour = tonumber(GetLocalDate("%H%M"));
	local tbSay = {}
	tinsert(tbSay,"§iÓm tËp kÕt T©y/gotoA1")
	tinsert(tbSay,"§iÓm tËp kÕt Nam/gotoB1")
	tinsert(tbSay,"§iÓm tËp kÕt B¾c/gotoC1")
	tinsert(tbSay,"§iÓm tËp kÕt §«ng/gotoD1")
	tinsert(tbSay,"§iÓm tËp kÕt ng· 4 phÝa T©y/gotoD12")
	tinsert(tbSay,"§iÓm tËp kÕt ng· 4 phÝa Nam/gotoB12")
	tinsert(tbSay,"§iÓm tËp kÕt ng· 4 phÝa B¾c/gotoC12")
	tinsert(tbSay,"§iÓm tËp kÕt ng· 4 phÝa §«ng/gotoD12")
	
	--if (nHour > 1900 and nHour < 2100) then	
--	tinsert(tbSay,"Mua m¸u sale off 99%/buymaunhanh")
--end
	--tinsert(tbSay,"VÒ Ba L¨ng HuyÖn/vebl")
--	if (nHour > 1900 and nHour < 2100) or (nHour > 2200 and nHour < 2300) then	
--	tinsert(tbSay,"Mua m¸u Free 100%/cuusatmausieunhanh")
--end
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ! /#no()")
	Say("Ng­¬i muèn ra tiÒn tuyÕn", getn(tbSay), tbSay)

	return 1	
end;

function vebl()
NewWorld(53,1602,3213)
SetPunish(1);
SetTmpCamp(0);
end

function cuusatmausieunhanh()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
        Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
		return
	end	
	tbAwardTemplet:GiveAwardByList({tbProp = { 1,2,0,5,0,0,0,0}, nCount=totalcount, nBindState = -2}, "", 1);
end

-----------code moi

function gotoA1()

NewWorld(355,1210,2601)
SetProtectTime(18*5)  --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end

function gotoA12()

NewWorld(355,1350,2429)
SetProtectTime(18*5)  --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end
function gotoB1()

NewWorld(355,1272,2948)
SetProtectTime(18*5)  --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end

function gotoB12()

NewWorld(355,1403,3098)
SetProtectTime(18*5)  --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end

function gotoC1()

NewWorld(355,1476,2579)
SetProtectTime(18*5) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end

function gotoC12()

NewWorld(355,1576,2768)
SetProtectTime(18*5) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
		SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end

function gotoD1()

NewWorld(355,1544,2920)
SetProtectTime(18*5) 
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
SetPKFlag(1)
ForbidChangePK(1);
	SetDeathScript("\\script\\fwcloud\\dautruongsinhtu\\npc\\playerdeath.lua")
end



function gotoD12()
NewWorld(355,1174,2786)
SetProtectTime(18*5) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*5)
SetFightState(1)
SetPunish(0);
	SetPKFlag(1)
	ForbidChangePK(1);
end
function no()
end

function buymaunhanh()
	local pri = 1000
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if moneymin >= totalcount then
		tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
		Pay(totalcount * pri)
	else
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= moneymin }}, format("Get %s", "Than pham 1"))
		Pay(moneymin * pri)
end
end

function sieunhanbienhinh()
	local szTong = GetTongName()
	
	if szTong == "ThÝch" then
	ChangeOwnFeature(0,0,1780);
	end
	if szTong == "HoµngGia" then
	ChangeOwnFeature(0,0,1675);
	end
	if szTong == "§ÕÙV­¬ng" then
	ChangeOwnFeature(0,0,1681);
	end
	if szTong == "SèngÙCßn" then
	ChangeOwnFeature(0,0,1676);
	end
	if szTong == "Fwcloud" then
	ChangeOwnFeature(0,0,1689);
	end
	if szTong == "ThiªnÙH¹" then
	ChangeOwnFeature(0,0,1196);
	end
	if szTong == "SinhTö" then
	ChangeOwnFeature(0,0,1691);
	end
end