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

function main()
	
	--dofile("script/global/g7vn/xaphubienkinh.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")

	local playerG7Count = GetPlayerCount()
	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>C«ng Thµnh ChiÕn<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n b«n tÈu giang hå dÔ dµng h¬n \n+Webstie: <color=red>http://vltruyenky.com<color>\n+Facebook: <color=green>https://www.facebook.com/<color>"
	local Opt = 
	{
		{"§iÓm tËp kÕt A.", gotoA},
		{"§iÓm tËp kÕt B.", gotoB},
		{"§iÓm tËp kÕt C.", gotoC},
		--{"Mµu PK", doimau},	
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)
end

-----------code moi

function gotoA()
NewWorld(37, 1448, 3338)--dong
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

function gotoB()
NewWorld(37, 1600, 3407)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

function gotoC()
NewWorld(37, 1616, 3552)
SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

