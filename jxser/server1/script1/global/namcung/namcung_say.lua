Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\namcung\\namcung_gm.lua")
Include("\\script\\global\\namcung\\hotrothem.lua")

function main()
	str = "Chµo mõng c¸c b¹n ®· tham gia thÕ giíi <color=red>Vâ L©m TruyÒn Kú<color> ®­îc ph¸t triÓn bëi <color=green>Nam Cung NhÊt Thiªn<color> mäi chi tiÕt xin liªn hÖ <color=green>Https://www.facebook.com/nhatthienpro<color> ®Ó nhËn ®­îc sù hæ trî khi cÇn thiÕt."
	AddGlobalCountNews(str, 2)
	local szTitle = "<npc>Hæ trî GM. C÷u Niªn T­¬ng Phïng.Hoan nghªnh c¸c anh hïng hµo kiÖt... ! <enter>Script GM By <color=green>Nam Cung NhÊt Thiªn<color> clbgamesvn.com"
	local tbOpt =
	{
		{"Hæ trî Test", nacu},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nacu()
dialog_main()
end

