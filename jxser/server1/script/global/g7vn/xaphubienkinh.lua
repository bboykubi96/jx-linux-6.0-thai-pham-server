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
	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>ch�o m�ng b�n ��n v�i h� th�ng <color=yellow>V� L�m Truy�n K�<color> - <color=green>C�ng Th�nh Chi�n<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n b�n t�u giang h� d� d�ng h�n \n+Webstie: <color=red>http://vltruyenky.com<color>\n+Facebook: <color=green>https://www.facebook.com/<color>"
	local Opt = 
	{
		{"�i�m t�p k�t A.", gotoA},
		{"�i�m t�p k�t B.", gotoB},
		{"�i�m t�p k�t C.", gotoC},
		--{"M�u PK", doimau},	
		{"K�t th�c ��i tho�i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)
end

-----------code moi

function gotoA()
NewWorld(37, 1448, 3338)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

function gotoB()
NewWorld(37, 1600, 3407)
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

function gotoC()
NewWorld(37, 1616, 3552)
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(1)
end

