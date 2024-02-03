IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")



function main()
	local szTitle = "Xin chµo <color=red>"..GetName().."<color> ! Ng­¬i cã muèn gia nhËp <color=fire>Vò Hån §­êng<color> kh«ng?"
	local tbOpt=
	{
	--"VÒ ph¸i/go_vuhon",
	"Gia nhËp Vò Hån/join_vuhon",
	"KÕt thóc ®èi tho¹i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_vuhon()
	Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>Vò Hån ®­êng<color>")
	NewWorld(1042, 1625, 3130)
end

function join_vuhon()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 3 then
		Talk(1, "", "ChØ nh©n vËt hÖ Háa míi cã thÓ gia nhËp Vò Hån §­êng")
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
	local szTitle = "<color=red>"..GetName().."<color> ng­¬i cã ch¾c ch¾n muèn gia nhËp ph¸i <color=fire>Vò Hån<color> bän ta kh«ng?"
	local tbOpt ={
			"X¸c nhËn!/join_vuhon_sure",
			"Kh«ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_vuhon_sure()
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(90);
	SetLastFactionNumber(11);
	SetTask(4406,10*256);
	--add_wh(GetLevel())
	AddMagic(1972,0) --phô trî thuÉn
	AddMagic(1974,0) -- phô trî ®ao
	AddMagic(1975,0) --10x
	AddMagic(1964,0) --10x

	AddMagic(1976,0) -- 20x

	AddMagic(1977,0) -- 30x
	AddMagic(1965,0) -- 30x

	AddMagic(1979,0) --40x
	AddMagic(1963,0) --40

	AddMagic(1980,0) --50

	AddMagic(1981,0) --60
	AddMagic(1971,0) --60
	AddMagic(1982,0) -- 60 tran phai

	AddMagic(1983,20) -- 9x
	AddMagic(1967,20) --9x
	
	AddMagic(1984,20) --120

	AddMagic(1985,20) -- 150
	AddMagic(1969,20) -- 150

	AddMagic(1986,20) -- 180

	Msg2Faction("%s tõ nµy gia nhËp Vò Hån, ®Õn b¸i kiÕn c¸c vÞ s­ huynh, xin c¸c vÞ chiÕu cè!",GetName())
	Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vò Hån §­îc HËu Qu©n")
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Vò Hån<color>")
end