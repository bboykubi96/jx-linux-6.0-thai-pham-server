IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")


function main()
	local szTitle = "Xin chµo <color=red>"..GetName().."<color> ! §¹i HiÖp muèn gia nhËp <color=fire>Hoa S¬n<color> hay kh«ng?"
	local tbOpt=
	{
		--"§Õn ph¸i/go_tieudao",
		"Gia nhËp Hoa S¬n/HoaSonPhai",
		--"Gia nhËp Tiªu Dao vµ häc ®Õn max skill 180/join_hoason",
		"KÕt thóc ®èi tho¹i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_hoason()
	Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>Hoa S¬n ph¸i<color>")
	NewWorld(1046, 1641, 3288)
end


function HoaSonPhai()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 2 then
		Talk(1, "", "ChØ cã nh©n vËt hÖ Thñy míi cã thÓ gia nhËp Hoa S¬n")
		return
	end
	if FactionNumber >= 0 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H·y tù luyÖn tËp thªm ®Õn cÊp 10 råi quay l¹i ®©y.")
		return
	end
	SetFaction("huashan");
	SetCamp(3);
	SetCurCamp(3);
	SetSeries(2)
	SetRank(87);
	--nt_setTask(137,71);
	--SetTask(169,10);
	SetTask(11,10*256); 
	SetLastFactionNumber(10);
	--add_hs(GetLevel())
	--Msg2Faction("%s tõ h«m nay vµo ph¸i Tiªu Dao, nay ®Õn b¸i kiÕn c¸c vÞ s­ huynh, mong h·y chiÕu cè!",GetName())
	---AddItem(0,0,7,1,0,0) AddItem(0,0,8,1,0,0)
	--AddNote("NhËp ph¸i Tiªu Dao nhËn danh hiÖu Tiªn §¶o C­ SÜ")
	--Msg2Player("Chóc mõng ng­¬i ®· gia nhËp ph¸i Tiªu Dao, nhËn danh hiÖu Tiªn §¶o C­ SÜ")
	
		AddMagic(1347,0) --Skill Hoa son
		AddMagic(1372,0) --Skill Hoa son
		AddMagic(1349,0) --Skill Hoa son
		AddMagic(1374,0) --Skill Hoa son
		--AddMagic(1350,0) --duong ngo kiem phap
		AddMagic(1375,0) --Skill Hoa son
		AddMagic(1351,0) --Skill Hoa son
		AddMagic(1376,0) --Skill Hoa son
		AddMagic(1354,0) --Skill Hoa son
		AddMagic(1355,0) --Skill Hoa son
		AddMagic(1379,0) --Skill Hoa son
		AddMagic(1380,0) --ma van kiem khi
		AddMagic(1369, 0) --cuu kiem hop nhat
		--AddMagic(1378,0) --khi chan son ha
		AddMagic(1358,0) --Skill Hoa son
		--AddMagic(1380,0) --ma van kiem khi
		AddMagic(1360,20) --Skill Hoa son --------Doc Co Cuu Kiem
		--AddMagic(1364,20) --doat menh lien hoan kiem
   		AddMagic(1382, 20)
   		AddMagic(1365, 20)
   		--AddMagic(1384, 20) -- than quang toan nhieu
		AddMagic(210, 1)
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Hoa S¬n<color>")
end

function join_hoason()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i kh¸c råi.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng­¬i cã ch¾c ch¾n muèn gia nhËp ph¸i <color=fire>Tiªu Dao<color> hay kh«ng?"
	local tbOpt ={
			"X¸c nhËn!/join_tieudao_sure",
			"Kh«ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_tieudao_sure()
	SetFaction("xiaoyao");
	SetCamp(3);
	SetCurCamp(4);
	SetRank(98);
	SetSeries(4);
	SetLastFactionNumber(12);
	AddMagic(1881,0)-- level 10
	AddMagic(1905,0)-- level 10

	AddMagic(1882,0)-- level 20
	AddMagic(1906,0)-- level 20

	AddMagic(1883,0)-- level 30

	AddMagic(1885,0)-- level 40
	AddMagic(1907,0)-- level 40

	AddMagic(1887,0)-- level 50
	AddMagic(1909,0)-- level 50

	AddMagic(1888,0)-- level 60
	AddMagic(1889,0)-- level 60
     AddMagic(1890,0)-- level 60

	AddMagic(1891,20)---- level 90
	AddMagic(1910,20)---- level 90

	AddMagic(1894,20)---- level 120

	AddMagic(1896,20)---- level 150
	AddMagic(1911,20)---- level 150

	AddMagic(1901,20)---- level 180
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Tiªu Dao<color>")
end