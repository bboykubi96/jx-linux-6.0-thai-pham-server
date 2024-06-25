IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua");

function main1()
dofile("script/global/quanlygame/huongdan.lua");
if GetPlayerCount() > 50 then
menu2()
else
menu1()
end
end


function main()
dofile("script/global/quanlygame/huongdan.lua");
	local bilTbOp = {}	


    tinsert(bilTbOp, "Danh S¸ch Ho¹t §éng/danhsachhoatdong")
--	tinsert(bilTbOp, "H­íng DÉn Ng­êi Ch¬i/huongdanthamgia")
--	tinsert(bilTbOp, "VËt PhÈm T×m N¬i §©u/vatphamtimnoidau")
	--tinsert(bilTbOp, "M·nh Hoµng Kim Lµm G×/manhhoangkim")
	--tinsert(bilTbOp, "Muèn Giµu NhÊt Game/giaunhatgame")
	----tinsert(bilTbOp, "Oppen Bao L©u Råi/oppenbaolau")
	--tinsert(bilTbOp, "Lµm Sao §Ó Acc M¹nh/accmanh")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Trang Chñ: <color=pink> /\n<color=green>Fanpage: <color=pink>Facebook.com/vltruyenkycongthanhchien/\n<color=green>Th¶o LuËn : <color=pink>Facebook.com/groups/groups/742996832826455/", getn(bilTbOp), bilTbOp)
end

function danhsachhoatdong()
	local bilTbOp = {}	
    tinsert(bilTbOp, "L«i §µi Lo¹n ChiÕn/loidailoanchien")
	tinsert(bilTbOp, "Tèng Kim §¹i ChiÕn/tongkimdaichien")
	tinsert(bilTbOp, "S¨n H¹t Huy Hoµng/sanhathoangkim")
		tinsert(bilTbOp, "Trèng Kh¶i Hoµng/trongkhaihoang")

	--tinsert(bilTbOp, "ThuyÒn Phong L¨ng §é/thuyenphonglangdo")
	--tinsert(bilTbOp, "V­ît ¶i NhiÕp Thİ TrÇn/vuotai")
	--tinsert(bilTbOp, "§Êu Ng­u Xu©n Phong §¶o/daunguu")
	tinsert(bilTbOp, "§ua Ngùa Sa M¹c/duanguasamac")
	tinsert(bilTbOp, "Boss §¹i Hoµng Kim/bosshoangkim")
	tinsert(bilTbOp, "Boss TiÓu Hoµng Kim/bosshoangkimtieu")
	--tinsert(bilTbOp, "Ch¬i BÇu Cua C¸ Cäp/choibaucua")
	--tinsert(bilTbOp, "Viªm §Õ B¶o Tµng/viemde")
	--tinsert(bilTbOp, "C«ng Thµnh ChiÕn/congthanhchien")
	--tinsert(bilTbOp, "Thiªn Tö §¹i ChiÕn/thientu")
	--tinsert(bilTbOp, "VËn Tiªu Long M«n/vantieu")
	tinsert(bilTbOp, "C©u C¸ D­¬ng Ch©u/cauca")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Trang Chñ: <color=pink> /\n<color=green>Fanpage: <color=pink>Facebook.com/\n<color=green>Th¶o LuËn : <color=pink>Facebook.com/groups", getn(bilTbOp), bilTbOp)
end

function huongdanthamgia()
	local bilTbOp = {}	
	tinsert(bilTbOp, "B¶n Skill Néi Hay Ngo¹i/noingoaicong")
    tinsert(bilTbOp, "NhËp Code T©n Thñ/nhapcode")
    tinsert(bilTbOp, "Mua Kú Tr©n DŞ B¶o/muakytrandibao")
	tinsert(bilTbOp, "ChuyÓn Ph¸i LÊy Skill/chuyenphai")
	tinsert(bilTbOp, "Tè C¸o Post §iÓm/tocao")
	tinsert(bilTbOp, "Tû Thİ KÌo ¡n Xu/tythivsnhau")
	tinsert(bilTbOp, "Ch¬i O¼n Tï T×/oantuty")
		tinsert(bilTbOp, "Ch¬i §æ Xóc X¾c/doxucxac")
	tinsert(bilTbOp, "Vßng S¸ng ë §©u/vongsang")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Chó ı c¸c nh©n sü: <color=cyan>C¸c nh©n sü cã th¾c m¾c g× thªm cã thÓ liªn hÖ S§T cña GM hoÆc liªn hÖ Fanpage.\nHiÖn t¹i giíi h¹n bang héi t¹i server lµ : 200 acc.\nC¸c nh©n sü muèn lËp bang héi th× nhÊt thiÕt ph¶i ®ñ ®iÒu kiÖn trªn 10 acc tay.", getn(bilTbOp), bilTbOp)
end

function vatphamtimnoidau()
	local bilTbOp = {}	
    tinsert(bilTbOp, "Hoµng Kim LÖnh/muakytrandibao")
    tinsert(bilTbOp, "NhÊt Kû Cµn Kh«n Phï/nhatky")
	 tinsert(bilTbOp, "¸o Nhu T×nh nb HiÖp Cèt/nhutinh")
	tinsert(bilTbOp, "MÆt N¹ ChiÕn Tr­êng/matna")
	tinsert(bilTbOp, "Phiªn Vò ChiÕn M·/phienvu")
	tinsert(bilTbOp, "Tİn VËt M«n Ph¸i/tinvatne")
	
	tinsert(bilTbOp, "Vßng S¸ng LÊy §©u/vongsang")
	tinsert(bilTbOp, "Phi Tèc LÖnh Bµi/phitoc")
	tinsert(bilTbOp, "ChiÕn M· B«n Tiªu/bontieu")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Chó ı c¸c nh©n sü: <color=cyan>Sau ®©y lµ c¸c vËt phÈm mµ c¸c b¹n th¾c m¾c kh«ng biÕt t×m ë ®©u.\nHiÖn t¹i giíi h¹n bang héi t¹i server lµ : 150 acc.\nC¸c nh©n sü muèn lËp bang héi th× nhÊt thiÕt ph¶i ®ñ ®iÒu kiÖn trªn 10 acc tay.", getn(bilTbOp), bilTbOp)
end


function loidailoanchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 22h h»ng ngµy sau khi kÕt thóc tèng kim,chØ nh÷ng acc tham gia tèng kim cao cÊp míi ®­îc tham gia", getn(bilTbOp), bilTbOp)
end

function tongkimdaichien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 13h - 15h- 17h- 19h - 21h - TrËn 13h vµ 21h cã th­ëng ®Æc biÖt", getn(bilTbOp), bilTbOp)
end

function sanhathoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 12h h»ng ngµy t¹i ®Êu tr­êng sinh tö", getn(bilTbOp), bilTbOp)
end

function thuyenphonglangdo()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white> tÊt c¶ giê ch¼n riªng 2-16-20-22h lµ chuyÕn cã ®¹i thñy tÆc.\n<color=cyan>Tham gia: <color=white>ChØ cho phĞp ®i 1 bÕn 1 cã thÓ cõu ®å s¸t.\n<color=pink>PhÇn th­ëng:<color=white> hoµn thµnh ®Õn bê b¾c - tiªu diÖt thñy tÆc 1 m·nh HKMP + 1 thñy tinh - tiªu diÖt ®¹i thñy tÆc 2 m·nh HKMP + TTK", getn(bilTbOp), bilTbOp)
end

function vuotai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>tÊt c¶ giê lÎ trõ 21h.\n<color=cyan>Tham gia: <color=white>t¹i nhiÕp thİ trÇn.\n<color=pink>PhÇn th­ëng:<color=white> hoµn thµnh v­ît ¶i x¸c xuÊt ra TTK + VLMT  + Thñy Tinh", getn(bilTbOp), bilTbOp)
end

function thientu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>21h thø 2 - víi ®iÒu kiÖn lµ ph¶i cã 1 bang chiÕm l©m an 1 bang chiÕm biÖn kinh.NÕu 1 bang chiÕm 2 thµnh th× thø 2 tèng kim b×nh th­êng.\n<color=cyan>Tham gia: <color=white>Bang chñ tr­íc 21h ph¶i qua néi c¸t th­îng th­ ë L©m An vµ BiÖn Kinh nhËn 50 lÖnh bµi quèc chiÕn vµ chŞ nhËn 1 lÇn.\n<color=pink>PhÇn th­ëng:<color=white> NhËn t¹i 204/198 Ba L¨ng HuyÖn", getn(bilTbOp), bilTbOp)
end

function duanguasamac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian :22h30 thø 7 vµ chñ nhËt.", getn(bilTbOp), bilTbOp)
end

function bosshoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 19h30 h»ng ngµy", getn(bilTbOp), bilTbOp)
end

function bosshoangkimtieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 12h35 vµ 23h05", getn(bilTbOp), bilTbOp)
end

function choibaucua()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 00-01-02-03-09-10-11-12-14-16-18-20-22 hµng ngµy.\n<color=cyan>Tham gia: <color=white>BÇu Cua §¹i Nh©n t¹i ba l¨ng huyÖn.\n<color=pink>PhÇn th­ëng:<color=white>th¾ng bÇu cua x¸c xuÊt 30 phÇn tr¨m nhËn ®­îc 1 m·nh hoµng kim ngÉu nhiªn vµ xu th¾ng cuéc.", getn(bilTbOp), bilTbOp)
end

function vantieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : tÊt c¶ c¸c giê.\n<color=cyan>Tham gia: NPC Long M«n Tiªu Côc 201/200 Ba L¨ng HuyÖn ®iÒu kiÖn ph¶i cã hé tiªu lÖnh tham gia tèng kim cã ®­îc<color=white>.\n<color=pink>PhÇn th­ëng:<color=white>vËn thµnh c«ng nhËn 1 m·nh HKMP :  vËn thÊt b¹i tøc bŞ c­íp sÏ r¬i ra hé tiªu lÖnh.", getn(bilTbOp), bilTbOp)
end

function viemde()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 18h30 vµ 23h hµng ngµy.\n<color=cyan>Tham gia: <color=white>B×nh B×nh C« N­¬ng BiÖn Kinh.\n<color=pink>PhÇn th­ëng:<color=white>Team th¾ng cuéc nhËn 1 VLMT trªn 1 ng­êi..", getn(bilTbOp), bilTbOp)
end

function trongkhaihoang()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian:20h10 ngµy thø 7..", getn(bilTbOp), bilTbOp)
end

function daunguu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 20h30 c¸c ngµy thø 3-5-7.\n<color=cyan>Tham gia: <color=white>LÔ Quan B¸o Danh.\n<color=pink>PhÇn th­ëng:<color=white>Ng­u sinh tån hoÆc ng­êi sinh tån cuèi cïng nhËn vlmt ttk.Khi ng­u chÕt ng­êi ch¬i nhËt b¶o r­¬ng kim ng­u sÏ cã c¬ héi nhËn ®­îc xu..", getn(bilTbOp), bilTbOp)
end

function congthanhchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 20h30 c¸c ngµy thø 6.\n<color=cyan>Tham gia: bang chñ b¸o danh t¹i tiÕp ®Çu c«ng thµnh chiÕn chi phİ 100 v¹n thêi gian b¸o danh lµ tr­íc 19h30 nÕu sau 19h30 coi nh­ ko thÓ b¸o danh.Giíi h¹n acc 1 bang c«ng thµnh lµ 150 acc qu¸ sè l­îng kh«ng thÓ vµo.<color=white>.\n<color=pink>PhÇn th­ëng: <color=white>NhËn t¹i 204/198 Ba L¨ng HuyÖn.", getn(bilTbOp), bilTbOp)
end


function nhapcode()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn NPC:<color=white>Quµ TÆng GiftCode.\n<color=cyan>VŞ Trİ: <color=white>202/200 Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>nhÊp vµo npc nã sÏ cho 1 ®o¹n sè ngÉu nhiªn trong 60 gi©y nÕu kh«ng nhËp ®o¹n ®ã th× nã sÏ xãa mÊt vµ b¹n ph¶i xin nã l¹i sè kh¸c.NÕu nhËp sai th× xem l¹i sè ®óng ch­a hoÆc sè bŞ nã reset l¹i sè kh¸c ch­a b»ng c¸ch nhÊp vµo xin l¹i", getn(bilTbOp), bilTbOp)
end

function muakytrandibao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn NPC:<color=white>Më Icon B¶o VËt Kú Tr©n C¸c.\n<color=cyan>VŞ Trİ: <color=white>TÊt c¸c thµnh thŞ.\n<color=pink>C¸ch Thøc: <color=white>Trong shop b¶o vËt cã rÊt nhiÒu thø thİch c¸i g× th× sót th«i.Riªng cã c¸i Hoµng Kim LÖnh c¸i nµy rÊt h÷u İch lµ khi ®eo vµo sÏ kich hÕt ®å trªn ng­êi.L­u ı ®eo vµo th× sÏ ko lÊy ra ®­îc.Muèn thay ®æi c¸i kh¸c th× bá c¸i kh¸c vµo g­¬ng vµ lick chuét ph¶i vµo c¸i trong g­¬ng nã sÏ thay thÕ c¸i ®ang ®eo trªn ng­êi.", getn(bilTbOp), bilTbOp)
end

function chuyenphai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn NPC:<color=white>10 NPC M«n Ph¸i (c¸i con mµ b¹n gia nhËp m«n ph¸i ¸).\n<color=cyan>VŞ Trİ: <color=white>Xung Quanh Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>Lick vµo bÊt kú con npc cña ph¸i nµo th× b¹n còng chuyÓn m«n ph¸i ®­îc cÇn 1 tİn vËt mua t¹i shop tèng kim ho¹t tham gia ho¹t ®éng.", getn(bilTbOp), bilTbOp)
end

function doigioitinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn NPC:<color=white>Hç Trî T©n Thñ.\n<color=cyan>VŞ Trİ: <color=white>202/199 Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>Lick vµo npc chän dßng ®æi ngo¹i h×nh trang bŞ lµ sÏ thÊy ®æi giíi tİnh.", getn(bilTbOp), bilTbOp)
end

function tocao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>Trong Tèng Kim.\n<color=pink>C¸ch Thøc: <color=white>NÕu thÊy ai ®ã post ®iÓm th× b¹n cã thÓ bËt lÖnh bµi t©n thñ lªn tè c¸o ng­êi ®ã nÕu sè ng­êi ®ång ı nhiÒu h¬n sè ng­êi tõ chèi th× h¾n sÏ bŞ kick ra vµ kh«ng thÓ vµo l¹i..", getn(bilTbOp), bilTbOp)
end

function nhutinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Nhu T×nh C©n Quèc NghÖ Th­êng - HiÖp Cèt T×nh ı KÕt.\n<color=cyan>VŞ Trİ: <color=white>§¸nh Boss §¹i Hoµng Kim r¬i ra.\n<color=pink>C¸ch Thøc: <color=white>§eo vµo ®­îc lªn 1 KNVC..- KTC", getn(bilTbOp), bilTbOp)
end

function tythivsnhau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn NPC:<color=white>L«i §µi Th¸ch §Êu.\n<color=cyan>VŞ Trİ: <color=white>195/202 Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>NÕu cã ai ®ã th¸ch ®Êu víi b¹n ®ßi ¨n xu th× b¹n vµ h¾n pt víi nhau.Xong ai chñ pt sÏ ®­a ra sè tiÒn cuéc nÕu b¹n thÊy ok th× ®ång ı vµ v¸n solo ®­îc tİnh sau ®ã 2 bªn vµo l«i ®µi bªn nµo ®¸nh th¾ng sÏ ®­îc «m hÕt tiÒn.Cßn nh÷ng ng­êi bªn ngoµi tøc ng­êi xem nÕu muèn ®¸ kÌo víi nhau th× ng­êi xem cã thÓ pt víi nhau vµ chän ng­êi m×nh b¾t th¾ng nÕu th¾ng sÏ hèt hÕt", getn(bilTbOp), bilTbOp)
end

function oantuty()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>trong g­¬ng k×a pa.\n<color=pink>C¸ch Thøc: <color=white>2 ng­êi cÇn ®¸nh víi nhau th× pt nhau sau ®ã chñ pt dïng lÖnh bµi chän dßng ®¸nh b¹c chän o¼n tï t× råi 2 ng­êi ®¸nh.", getn(bilTbOp), bilTbOp)
end

function doxucxac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>trong g­¬ng k×a pa.\n<color=pink>C¸ch Thøc: <color=white>tÊt c¶ ng­êi nµo ®¸nh th× pt nhau sau ®ã chñ pt dïng lÖnh bµi chän dßng ®¸nh b¹c chän ®æ xóc x¾c hÔ thèng sÏ ®æ ngÉu nhiªn ai lín ®iÓm nhÊt hèt hÕt tiÒn.", getn(bilTbOp), bilTbOp)
end

function nhatky()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>NhÊt Kû Cµn Kh«n Phï.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop b¶o vËt.\n<color=pink>C«ng dông: <color=white>sö dông sÏ nhËn ®­îc 1 KNCV 30 ngµy.", getn(bilTbOp), bilTbOp)
end


function cauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=yellow>Thêi gian : 20h t¹i cÇu D­¬ng Ch©u", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>MÆt N¹ M«n Ph¸i.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop tèng kim.\n<color=pink>C«ng dông: <color=white>®eo vµo nhiÒu kh¸ng tİnh vµ lùc tay.", getn(bilTbOp), bilTbOp)
end

function tinvatne()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Tİn VËt M«n Ph¸i.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop tèng kim hoÆc lÔ quan.\n<color=pink>C«ng dông: <color=white>chuyÓn m«n ph¸i t¹i c¸c npc nhËp ph¸i xung quanh Ba L¨ng HuyÖn.", getn(bilTbOp), bilTbOp)
end

function noingoaicong()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Skill M«n Ph¸i:<color=white>Néi Vµ Ngo¹i C«ng.\n<color=cyan>Chó Thİch: <color=white>TÊt c¶ c¸c ph¸i ®iÒu céng néi c«ng lªn lùc tay.riªng ph¸i ®­êng m«n lµ b¶n th©n ph¸p nªn b¹n nµo ch¬i ®­êng m«n ph¶i céng th©n ph¸p míi lªn lùc tay ®õng céng néi c«ng.\n<color=pink>KÕt luËn: <color=white>Dï ®­êng m«n céng th©n ph¸p nh­ng dame to vµ xo¸y rÊt r¸t nhĞ.", getn(bilTbOp), bilTbOp)
end

function oppenbaolau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Vâ L©m Test MiÔn Phİ:<color=white>Míi võa oppen ngµy 31/8.\n<color=cyan>NhÊn M¹nh: <color=white>§å ®¹c gÇn nh­ ngang nhau.\n<color=pink>Ph­¬ng Tr©m: <color=white>Server æn ®Şnh l©u dµi thİch hîp cho c¸c anh em yªn t©m ®Çu t­ t©m huyÕt vµ tiÒn b¹c vµo game.", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Vßng S¸ng.\n<color=cyan>VŞ Trİ: <color=white>®¹t top 1 2 3 tèng kim - top 1 hoa s¬n - top 1 ®Õn 20 ®ua ngùa thø 7. .\n<color=pink>C«ng dông: <color=white> tïy tõng vßng cã kh¸ng tÊt c¶ vµ sinh néi lùc kh¸c nhau.", getn(bilTbOp), bilTbOp)
end

function phitoc()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Phi Tèc LÖnh Bµi.\n<color=cyan>VŞ Trİ: <color=white>vµo tèng kim sÏ cã phi tèc lÖnh bµi hoÆc nhËn t¹i qu©n nhu quan trong trËn.\n<color=pink>C«ng dông: <color=white> ai hái lµ con gµ..", getn(bilTbOp), bilTbOp)
end

function bontieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Bån TiÓu.\n<color=cyan>VŞ Trİ: <color=white>Tham gia top tèng kim 21h h»ng ngµy sÏ nhËn ®­îc.\n<color=pink>C«ng dông: <color=white> ¨n cá.", getn(bilTbOp), bilTbOp)
end

function cancauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>CÇn C©u.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim tÊt c¶ trËn sè ®iÓm lín h¬n 3k sÏ nhËn ®­îc.\n<color=pink>C«ng dông: <color=white> C©u c¸ ngo¹i ao hå ba l¨ng huyÖn.", getn(bilTbOp), bilTbOp)
end

function phienvu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Phiªn Vò.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim top 1.\n<color=pink>C«ng dông: <color=white> Ch¹y nî h¹n sö dông 1 ngµy.", getn(bilTbOp), bilTbOp)
end

function giaunhatgame()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=cyan>C©u Hái Qu¸ Hay:<color=white>tr¶ lêi lu«n.\n<color=green>Lª lÕt t×m ®Õn BÇu Cua §¹i Nh©n vµ L« §Ò Phu Phu ®Ó hèt cèt nã nhĞ.C¸ch nhanh nhÊt ®Ó lµm giµu trong game ®ã lµ ®¸nh b¹c hahaha.", getn(bilTbOp), bilTbOp)
end

function accmanh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>C©u Hái Nhøc N¸ch ThËt:<color=white>tr¶ lêi lu«n.\n<color=cyan>Mét Lµ: <color=white>§« La ThÇn Ch­ëng.<pic=7>\n<color=pink>Hai Lµ: <color=white>Tr©u Chã Cµy B­êng.<pic=17>\n<color=yellow>Ba Lµ: <color=white>Hack Acc Th»ng B¹n.<pic=26>", getn(bilTbOp), bilTbOp)
end

function manhhoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>C©u Hái Ng¸o §¸:<color=white>tr¶ lêi lu«n.\n<color=cyan>Gom ®ñ 100 m·nh th× Ğp ®­îc mãn ®å t­¬ng øng víi tªn m·nh vµ mãn ®å cã thêi h¹n vÜnh viÔn.", getn(bilTbOp), bilTbOp)
end

function vongsang()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Ù/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Vßng S¸ng.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim top 1 2 3 vßng kim c­¬ng 3 mµu - ®ua ngùa vßng mµu vµng vµ rång tr¾ng - top 1 l«i ®µi lo¹n chiÕn vßng hoa bay xung quanh .\n<color=pink>C«ng dông: <color=white> Cã KTC 5 - 4 - 3 - 2 - 1 vµ sinh lùc 1000 - 500 - 400 - 300 - 200.", getn(bilTbOp), bilTbOp)
end