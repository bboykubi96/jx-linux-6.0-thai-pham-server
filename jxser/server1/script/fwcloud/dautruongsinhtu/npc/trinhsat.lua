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
	local nHour = tonumber(GetLocalDate("%H%M"));
	local tbSay = {}
	tinsert(tbSay,"§iÓm tËp kÕt 1/gotoA1")
	tinsert(tbSay,"§iÓm tËp kÕt 2/gotoB1")
	tinsert(tbSay,"§iÓm tËp kÕt 3/gotoC1")
	tinsert(tbSay,"§iÓm tËp kÕt 4/gotoD1")
	
--	tinsert(tbSay,"Mua m¸u nhanh (1 l­îng - 1 b×nh)/buymaunhanh")
	tinsert(tbSay,"VÒ Ba L¨ng HuyÖn/vebl")
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
SetFightState(0)
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
SetPos(1300,2754)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotoB1()
SetPos(1381,2845)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotoC1()
SetPos(1370,2675)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
SetPunish(0);
	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotoD1()
SetPos(1463,2777)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
SetPunish(0);
	SetPKFlag(1)
	ForbidChangePK(1);
end


function no()
end

function buymaunhanh()

	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if money>=totalcount then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount,nBindState=-2 }}, format("Get %s", "Than pham 1"))
	Pay(totalcount)
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