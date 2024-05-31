IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua");



function main()
if (GetAccount() == "boquyx123") or (GetAccount() == "vanduy2706")  then	
dofile("script/global/quanlygame/huongdan.lua");
end
	local bilTbOp = {}	


    tinsert(bilTbOp, "Danh S¸ch Ho¹t §éng/danhsachhoatdong")
	tinsert(bilTbOp, "H­íng DÉn Ng­êi Ch¬i/huongdanthamgia")
	tinsert(bilTbOp, "VËt PhÈm T×m N¬i §©u/vatphamtimnoidau")
	--tinsert(bilTbOp, "M·nh Hoµng Kim Lµm G×/manhhoangkim")
	--tinsert(bilTbOp, "me/giaunhatgame")
	--tinsert(bilTbOp, "Oppen Bao L©u Råi/oppenbaolau")
	--tinsert(bilTbOp, "Lµm Sao §Ó Acc M¹nh/accmanh")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Trang Chñ: <color=pink>volamhoainiem.net/\n<color=green>Fanpage: <color=pink>Facebook.com/volamhoainiem.net/\n<color=green>Th¶o LuËn : <color=pink>Facebook.com/groups/volamhoainiem.net", getn(bilTbOp), bilTbOp)
end

function danhsachhoatdong()
	local bilTbOp = {}	
	    --tinsert(bilTbOp, "Tham Gia Cµy D· TÈu/dataucay")

	tinsert(bilTbOp, "Hoa S¬n Lo¹n ChiÕn/loidailoanchien")
--	tinsert(bilTbOp, "Tèng Kim §¹i ChiÕn/tongkimdaichien")
	tinsert(bilTbOp, "H¸i Qu¶ Huy Hoµng/sanhathoangkim")
	tinsert(bilTbOp, "ThuyÒn Phong L¨ng §é/thuyenphonglangdo")
	tinsert(bilTbOp, "V­ît ¶i NhiÕp Thİ TrÇn/vuotai")
	tinsert(bilTbOp, "Tİn Sø/hdtinsu")
	--tinsert(bilTbOp, "§Êu Ng­u Xu©n Phong §¶o/daunguu")
	--tinsert(bilTbOp, "§ua Ngùa Sa M¹c/duanguasamac")
	tinsert(bilTbOp, "Boss Hoµng Kim M«n Ph¸i/bosshoangkim")
	tinsert(bilTbOp, "Boss §¹i Hoµng Kim/bossdaihoangkim")
	--tinsert(bilTbOp, "Boss TiÓu Hoµng Kim/bosshoangkimtieu")
	--tinsert(bilTbOp, "Ch¬i BÇu Cua C¸ Cäp/choibaucua")
	tinsert(bilTbOp, "Viªm §Õ B¶o Tµng/viemde")
	--tinsert(bilTbOp, "VËn Tiªu Long M«n/vantieu")
	--tinsert(bilTbOp, "C©u C¸ D­¬ng Ch©u/cauca")
	tinsert(bilTbOp, "C«ng Thµnh ChiÕn/congthanhchien")
	tinsert(bilTbOp, "Thiªn Tö §¹i ChiÕn/thientu")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Chó ı c¸c nh©n sü: <color=cyan>Server chóng ta cßn rÊt rÊt nhiÒu ho¹t ®éng ®Êu bang héi vµ tranh ®o¹t hÕt søc g©y cÊn BQT sÏ sím ra m¾t khi nµo c¸c bang héi æn ®Şnh c©n b»ng.\nHiÖn t¹i giíi h¹n bang héi t¹i server lµ : 150 acc.\nC¸c nh©n sü muèn lËp bang héi th× nhÊt thiÕt ph¶i ®ñ ®iÒu kiÖn trªn 15 acc tay.", getn(bilTbOp), bilTbOp)
end

function huongdanthamgia()
	local bilTbOp = {}	
	tinsert(bilTbOp, "B¶n Skill Néi Hay Ngo¹i/noingoaicong")
    tinsert(bilTbOp, "NhËp Code T©n Thñ/nhapcode")
    tinsert(bilTbOp, "Mua Kú Tr©n DŞ B¶o/muakytrandibao")
	tinsert(bilTbOp, "ChuyÓn Ph¸i LÊy Skill/chuyenphai")
	tinsert(bilTbOp, "Tè C¸o Post §iÓm/tocao")
	tinsert(bilTbOp, "Tû Thİ KÌo ¡n Xu/tythivsnhau")
	--tinsert(bilTbOp, "Ch¬i O¼n Tï T×/oantuty")
		--tinsert(bilTbOp, "Ch¬i §æ Xóc X¾c/doxucxac")
	--tinsert(bilTbOp, "Vßng S¸ng ë §©u/vongsang")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Chó ı c¸c nh©n sü: <color=cyan>C¸c nh©n sü cã th¾c m¾c g× thªm cã thÓ liªn hÖ S§T: <color=red>0348128456 <color=cyan>cña GM hoÆc liªn hÖ Fanpage.\nHiÖn t¹i giíi h¹n bang héi t¹i server lµ : 100 acc.\nC¸c nh©n sü muèn lËp bang héi th× nhÊt thiÕt ph¶i ®ñ ®iÒu kiÖn trªn 15 acc tay.", getn(bilTbOp), bilTbOp)
end

function vatphamtimnoidau()
	local bilTbOp = {}	
   -- tinsert(bilTbOp, "Hoµng Kim LÖnh/muakytrandibao")
  --  tinsert(bilTbOp, "NhÊt Kû Cµn Kh«n Phï/nhatky")
	tinsert(bilTbOp, "¸o Nhu T×nh nb HiÖp Cèt/nhutinh")
	tinsert(bilTbOp, "MÆt N¹ ChiÕn Tr­êng/matna")
	--tinsert(bilTbOp, "Phiªn Vò ChiÕn M·/phienvu")
	tinsert(bilTbOp, "Tİn VËt M«n Ph¸i/tinvatne")
	
	--tinsert(bilTbOp, "Vßng S¸ng LÊy §©u/vongsang")
	--tinsert(bilTbOp, "Phi Tèc LÖnh Bµi/phitoc")
--	tinsert(bilTbOp, "ChiÕn M· B«n Tiªu/bontieu")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	Say("<color=green>Chó ı c¸c nh©n sü: <color=cyan>Sau ®©y lµ c¸c vËt phÈm mµ c¸c b¹n th¾c m¾c kh«ng biÕt t×m ë ®©u.\nHiÖn t¹i giíi h¹n bang héi t¹i server lµ : 100 acc.\nC¸c nh©n sü muèn lËp bang héi th× nhÊt thiÕt ph¶i ®ñ ®iÒu kiÖn trªn 15	 acc tay.", getn(bilTbOp), bilTbOp)
end



function loidailoanchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white>14h - 22h10\n<color=cyan>Tham gia: <color=white> NPC Hoa S¬n L·o TÈu t¹i T­¬ng D­¬ng 198/202\n<color=pink>PhÇn th­ëng:<color=white>GiÕt 1 ng­êi ®­îc 2xu. \nTh¾ng:10 m·nh HKMP random  + 5triÖu EXP mçi ng­êi", getn(bilTbOp), bilTbOp)
end

function tongkimdaichien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white> 11h-13h-15h-17h-19h-21h-23h h»ng ngµy,riªng c¸c ngµy cã thiªn tö sÏ kh«ng cã.\n<color=cyan>Tham gia: <color=white>trËn 13h X2,trËn 15h X2,trËn 21h X3,cßn l¹i X1\n<color=pink>PhÇn th­ëng:<color=white>13h: th¾ng trªn 4k: 2 hé tiªu lÖnh  - 21h th¾ng trªn 5k:  2 hé tiªu lÖnh  => trËn 13h 21h thua : 2 hé tiªu lÖnh.\nTİch lòy trong trËn: Top trËn 21h nhËn phi v©n 1 ngµy", getn(bilTbOp), bilTbOp)
end

function sanhathoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white> 12h tr­a.\n<color=cyan>Tham gia: <color=white>t¹i BiÖn Kinh 194,215. <color=white> \n<color=pink>PhÇn th­ëng:<color=white> 1 ®ît ®­îc 50 qu¶, mçi qu¶ ®­îc: 1 m·nh HKMP random + 500 m¸u tèng kim + 1 tû EXP.\n-Nh©n vËt ch÷ tr¾ng + phi chiÕn ®Êu kh«ng nhÆt ®­îc", getn(bilTbOp), bilTbOp)
end

function thuyenphonglangdo()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white> TÊt c¶ giê ch¼n.\n<color=cyan>Tham gia: <color=white>ChØ cho phĞp ®i bÕn 1 vµ bÕn 2 cã thÓ cõu-®å s¸t.\n<color=pink>PhÇn th­ëng:<color=white> Cã 3 boss mçi boss ®­îc:\n -4 m·nh HKMP random. \n -500 triÖu exp (ng­êi ®øng gÇn còng ®­¬c nhËn) \n -Hoµn thµnh ®Õn bê B¾c", getn(bilTbOp), bilTbOp)
end

function vuotai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white>TÊt c¶ c¸c giê, b¾t ®Çu tõ phót thø 10.\n<color=cyan>Tham gia: <color=white>T¹i nhiÕp thİ trÇn t¹i T­¬ng D­¬ng 188/200.\n<color=pink>PhÇn th­ëng:<color=white> Hoµn thµnh v­ît ¶i x¸c xuÊt ra: <color=red>1% r¬i ¸o nhu t×nh.\n<color=white>-2 m·nh HKMP random + 50 triÖu exp.\n-Mçi ¶i ®­îc 100 triÖu exp, qua ¶i 27 ®­îc 1 tû exp.\n-GiÕt boss trong mËt thÊt ®­îc 150 triÖu exp.", getn(bilTbOp), bilTbOp)
end
function hdtinsu()
	local bilTbOp = {}
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white> 10h-->12h, 18h-->21h, 0h00-->2h00.\n<color=cyan>Tham gia: <color=white>NPC DŞch Quan t¹i Thµnh §« Nam 377,317. <color=white> \n<color=pink>PhÇn th­ëng:<color=white>1 tû EXP + 1 m·nh HKMP random\n-Mçi ngµy chØ ®i ®­îc 10 lÇn.",getn(bilTbOp),bilTbOp)
end
function thientu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>21h thø 2 - víi ®iÒu kiÖn lµ ph¶i cã 1 bang chiÕm l©m an 1 bang chiÕm biÖn kinh.NÕu 1 bang chiÕm 2 thµnh th× thø 2 tèng kim b×nh th­êng.\n<color=cyan>Tham gia: <color=white>Bang chñ tr­íc 21h ph¶i qua néi c¸t th­îng th­ ë L©m An vµ BiÖn Kinh nhËn 50 lÖnh bµi quèc chiÕn vµ chŞ nhËn 1 lÇn.\n<color=pink>PhÇn th­ëng:<color=white> NhËn t¹i 204/198 Ba L¨ng HuyÖn", getn(bilTbOp), bilTbOp)
end

function duanguasamac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>22h30 Thø 7.\n<color=cyan>Tham gia: <color=white>B¸o danh t¹i lÔ quan.\n<color=pink>PhÇn th­ëng:<color=white>Top 1: vßng s¸ng M¸u 1K,KTC 5 hsd 5 ngµy m·nh HKMP +  C¸c top cßn l¹i vßng s¸ng m¸u 200, KTC 2  1 ngµy r­ìi vµ ngÉu nhiªn nhËn m·nh HKMP vµ thñy tinh.", getn(bilTbOp), bilTbOp)
end

function bosshoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white>9h - 16h - 20h - 22h30.\n<color=cyan>Tham gia: <color=white>NgÉu nhiªn t¹i map Th«n,Thµnh,map train.\n<color=pink>PhÇn th­ëng: <color=red>5% x¸c xuÊt r¬i ¸o Nhu T×nh<color=white> + 10xu .<color=white>.", getn(bilTbOp), bilTbOp)
end
function bossdaihoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Thêi gian:<color=white>20h05-->21h\n<color=cyan>Tham gia: <color=white>NgÉu nhiªn ë c¸c map\n<color=pink>PhÇn th­ëng: <color=white>200xu + 20 m·nh HKMP random.\n-§øng gÇn ®­îc 2 tØ EXP, ng­êi kÕt thóc ®­îc 3 tû EXP", getn(bilTbOp), bilTbOp)
end
function bosshoangkimtieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>8h30 - 14h30 - 22h30.\n<color=cyan>Tham gia: <color=white>ngÉu nhiªn ë c¸c ®éng.\n<color=pink>PhÇn th­ëng:<color=white>ngÉu nhiªn r¬i VLMT +  TTK + thñy tinh + bµn nh­îc.", getn(bilTbOp), bilTbOp)
end

function choibaucua()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 00-01-02-03-09-10-11-12-14-16-18-20-22 hµng ngµy.\n<color=cyan>Tham gia: <color=white>BÇu Cua §¹i Nh©n T­¬ng D­¬ng 199/200.\n<color=pink>PhÇn th­ëng:<color=white>th¾ng bÇu cua x¸c xuÊt 30 phÇn tr¨m nhËn ®­îc 1 m·nh hoµng kim ngÉu nhiªn vµ xu th¾ng cuéc.", getn(bilTbOp), bilTbOp)
end

function vantieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 10h00 - 23h00.\n<color=cyan>Tham gia: NPC Long M«n Tiªu Côc 201/200 Ba L¨ng HuyÖn ®iÒu kiÖn ph¶i cã hé tiªu lÖnh tham gia tèng kim cã ®­îc<color=white>.\n<color=pink>PhÇn th­ëng:<color=white>vËn thµnh c«ng nhËn ®­îc xu :  vËn thÊt b¹i tøc bŞ c­íp sÏ r¬i ra hé tiªu lÖnh.", getn(bilTbOp), bilTbOp)
end

function viemde()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>Tİnh n¨ng sÏ ®­îc më trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 0h25 - 8h25 - 10h25 - 14h25 - 16h25 - 20h25 - 22h25 hµng ngµy.\n<color=cyan>Tham gia: <color=white>B×nh B×nh C« N­¬ng BiÖn Kinh.\n<color=pink>PhÇn th­ëng:<color=white>Boss mçi ¶i ®­îc 200 triÖu EXP.\n-GiÕt 1 nguåi ®­îc 200 triÖu EXP.\n-Th¾ng L­¬ng MŞ Nhi ®­îc: 2tû EXP+3 m·nh HKMP random + 50 triÖu EXP.", getn(bilTbOp), bilTbOp)
end

function daunguu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 20h30 c¸c ngµy thø 3-5-7.\n<color=cyan>Tham gia: <color=white>LÔ Quan B¸o Danh.\n<color=pink>PhÇn th­ëng:<color=white>Ng­u sinh tån hoÆc ng­êi sinh tån cuèi cïng nhËn vlmt ttk.Khi ng­u chÕt ng­êi ch¬i nhËt b¶o r­¬ng kim ng­u sÏ cã c¬ héi nhËn ®­îc xu..", getn(bilTbOp), bilTbOp)
end

function congthanhchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 20h30 c¸c ngµy thø 6.\n<color=cyan>Tham gia: bang chñ b¸o danh t¹i tiÕp ®Çu c«ng thµnh chiÕn chi phİ 100 v¹n thêi gian b¸o danh lµ tr­íc 19h30 nÕu sau 19h30 coi nh­ ko thÓ b¸o danh.Giíi h¹n acc 1 bang c«ng thµnh lµ 150 acc qu¸ sè l­îng kh«ng thÓ vµo.<color=white>.\n<color=pink>PhÇn th­ëng: <color=white>NhËn t¹i 199/201 D­¬ng Ch©u.", getn(bilTbOp), bilTbOp)
end


function nhapcode()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn NPC:<color=white>NhËp Code.\n<color=cyan>VŞ Trİ: <color=white>195/201 T­¬ng D­¬ng.\n<color=pink>C¸ch Thøc: <color=white>Chia sÎ bµi ghim trªn fanpage sau ®ã inb lªn fanpage nhËn code ", getn(bilTbOp), bilTbOp)
end

function muakytrandibao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn NPC:<color=white>Më Icon B¶o VËt Kú Tr©n C¸c.\n<color=cyan>VŞ Trİ: <color=white>TÊt c¸c thµnh thŞ.\n<color=pink>C¸ch Thøc: <color=white>Trong shop b¶o vËt cã rÊt nhiÒu thø thİch c¸i g× th× sót th«i.Riªng cã c¸i Hoµng Kim LÖnh c¸i nµy rÊt h÷u İch lµ khi ®eo vµo sÏ kich hÕt ®å trªn ng­êi.L­u ı ®eo vµo th× sÏ ko lÊy ra ®­îc.Muèn thay ®æi c¸i kh¸c th× bá c¸i kh¸c vµo g­¬ng vµ lick chuét ph¶i vµo c¸i trong g­¬ng nã sÏ thay thÕ c¸i ®ang ®eo trªn ng­êi.", getn(bilTbOp), bilTbOp)
end

function chuyenphai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn NPC:<color=white>10 NPC M«n Ph¸i (c¸i con mµ b¹n gia nhËp m«n ph¸i ¸).\n<color=cyan>VŞ Trİ: <color=white>Xung Quanh Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>Lick vµo bÊt kú con npc cña ph¸i nµo th× b¹n còng chuyÓn m«n ph¸i ®­îc cÇn 1 tİn vËt mua t¹i shop tèng kim ho¹t tham gia ho¹t ®éng.", getn(bilTbOp), bilTbOp)
end

function doigioitinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn NPC:<color=white>Hç Trî T©n Thñ.\n<color=cyan>VŞ Trİ: <color=white>202/199 Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>Lick vµo npc chän dßng ®æi ngo¹i h×nh trang bŞ lµ sÏ thÊy ®æi giíi tİnh.", getn(bilTbOp), bilTbOp)
end

function tocao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>Trong Tèng Kim.\n<color=pink>C¸ch Thøc: <color=white>NÕu thÊy ai ®ã post ®iÓm th× b¹n cã thÓ bËt lÖnh bµi t©n thñ lªn tè c¸o ng­êi ®ã nÕu sè ng­êi ®ång ı nhiÒu h¬n sè ng­êi tõ chèi th× h¾n sÏ bŞ kick ra vµ kh«ng thÓ vµo l¹i..", getn(bilTbOp), bilTbOp)
end

function nhutinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Nhu T×nh C©n Quèc NghÖ Th­êng - HiÖp Cèt T×nh ı KÕt.\n<color=cyan>VŞ Trİ: <color=white>Tham gia c¸c ho¹t ®éng trong server may m¾n nhËn ®­îc.\n<color=pink>C¸ch Thøc: <color=white>§eo vµo ®­îc lªn 1 KNVC..- KTC", getn(bilTbOp), bilTbOp)
end

function tythivsnhau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn NPC:<color=white>L«i §µi Th¸ch §Êu.\n<color=cyan>VŞ Trİ: <color=white>195/202 Ba L¨ng HuyÖn.\n<color=pink>C¸ch Thøc: <color=white>NÕu cã ai ®ã th¸ch ®Êu víi b¹n ®ßi ¨n xu th× b¹n vµ h¾n pt víi nhau.Xong ai chñ pt sÏ ®­a ra sè tiÒn cuéc nÕu b¹n thÊy ok th× ®ång ı vµ v¸n solo ®­îc tİnh sau ®ã 2 bªn vµo l«i ®µi bªn nµo ®¸nh th¾ng sÏ ®­îc «m hÕt tiÒn.Cßn nh÷ng ng­êi bªn ngoµi tøc ng­êi xem nÕu muèn ®¸ kÌo víi nhau th× ng­êi xem cã thÓ pt víi nhau vµ chän ng­êi m×nh b¾t th¾ng nÕu th¾ng sÏ hèt hÕt", getn(bilTbOp), bilTbOp)
end

function oantuty()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>trong g­¬ng k×a pa.\n<color=pink>C¸ch Thøc: <color=white>2 ng­êi cÇn ®¸nh víi nhau th× pt nhau sau ®ã chñ pt dïng lÖnh bµi chän dßng ®¸nh b¹c chän o¼n tï t× råi 2 ng­êi ®¸nh.", getn(bilTbOp), bilTbOp)
end

function doxucxac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>T©n Thñ Kim Bµi.\n<color=cyan>VŞ Trİ: <color=white>trong g­¬ng k×a pa.\n<color=pink>C¸ch Thøc: <color=white>tÊt c¶ ng­êi nµo ®¸nh th× pt nhau sau ®ã chñ pt dïng lÖnh bµi chän dßng ®¸nh b¹c chän ®æ xóc x¾c hÔ thèng sÏ ®æ ngÉu nhiªn ai lín ®iÓm nhÊt hèt hÕt tiÒn.", getn(bilTbOp), bilTbOp)
end

function nhatky()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>NhÊt Kû Cµn Kh«n Phï.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop b¶o vËt.\n<color=pink>C«ng dông: <color=white>sö dông sÏ nhËn ®­îc 1 KNCV 30 ngµy.", getn(bilTbOp), bilTbOp)
end


function cauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>tÊt c¶ khung giê.\n<color=cyan>Tham gia: <color=white>D­¬ng Ch©u.\n<color=pink>PhÇn th­ëng: <color=white>sö dông c¸c lo¹i c¸ ngÉu nhiªn nhËn kinh nghiÖm cao cïng x¸c xuÊt ra m·nh vlmt ttk thñy tinh + m¸u xÕp chång.", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>MÆt N¹ M«n Ph¸i.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop tèng kim.\n<color=pink>C«ng dông: <color=white>®eo vµo nhiÒu kh¸ng tİnh vµ lùc tay.", getn(bilTbOp), bilTbOp)
end

function tinvatne()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Tİn VËt M«n Ph¸i.\n<color=cyan>VŞ Trİ: <color=white>mua t¹i shop tèng kim hoÆc lÔ quan.\n<color=pink>C«ng dông: <color=white>chuyÓn m«n ph¸i t¹i c¸c npc nhËp ph¸i xung quanh Ba L¨ng HuyÖn.", getn(bilTbOp), bilTbOp)
end

function noingoaicong()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Skill M«n Ph¸i:<color=white>Néi Vµ Ngo¹i C«ng.\n<color=cyan>Chó Thİch: <color=white>TÊt c¶ c¸c ph¸i ®iÒu céng néi c«ng lªn lùc tay.riªng ph¸i ®­êng m«n lµ b¶n th©n ph¸p nªn b¹n nµo ch¬i ®­êng m«n ph¶i céng th©n ph¸p míi lªn lùc tay ®õng céng néi c«ng.\n<color=pink>KÕt luËn: <color=white>Dï ®­êng m«n céng th©n ph¸p nh­ng dame to vµ xo¸y rÊt r¸t nhĞ.", getn(bilTbOp), bilTbOp)
end

function oppenbaolau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Vâ L©m Test MiÔn Phİ:<color=white>Míi võa oppen ngµy 31/8.\n<color=cyan>NhÊn M¹nh: <color=white>§å ®¹c gÇn nh­ ngang nhau.\n<color=pink>Ph­¬ng Tr©m: <color=white>Server æn ®Şnh l©u dµi thİch hîp cho c¸c anh em yªn t©m ®Çu t­ t©m huyÕt vµ tiÒn b¹c vµo game.", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Vßng S¸ng.\n<color=cyan>VŞ Trİ: <color=white>®¹t top 1 2 3 tèng kim - top 1 hoa s¬n - top 1 ®Õn 20 ®ua ngùa thø 7. .\n<color=pink>C«ng dông: <color=white> tïy tõng vßng cã kh¸ng tÊt c¶ vµ sinh néi lùc kh¸c nhau.", getn(bilTbOp), bilTbOp)
end

function phitoc()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Phi Tèc LÖnh Bµi.\n<color=cyan>VŞ Trİ: <color=white>vµo tèng kim sÏ cã phi tèc lÖnh bµi hoÆc nhËn t¹i qu©n nhu quan trong trËn.\n<color=pink>C«ng dông: <color=white> ai hái lµ con gµ..", getn(bilTbOp), bilTbOp)
end

function bontieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Bån TiÓu.\n<color=cyan>VŞ Trİ: <color=white>Tham gia top tèng kim 21h h»ng ngµy sÏ nhËn ®­îc.\n<color=pink>C«ng dông: <color=white> ¨n cá.", getn(bilTbOp), bilTbOp)
end

function cancauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>CÇn C©u.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim tÊt c¶ trËn sè ®iÓm lín h¬n 3k sÏ nhËn ®­îc.\n<color=pink>C«ng dông: <color=white> C©u c¸ ngo¹i ao hå D­¬ng Ch©u 207/197.", getn(bilTbOp), bilTbOp)
end

function phienvu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Phiªn Vò.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim top 1.\n<color=pink>C«ng dông: <color=white> Ch¹y nî h¹n sö dông 1 ngµy.", getn(bilTbOp), bilTbOp)
end

function giaunhatgame()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=cyan>C©u Hái Qu¸ Hay:<color=white>tr¶ lêi lu«n.\n<color=green>Lª lÕt t×m ®Õn BÇu Cua §¹i Nh©n vµ L« §Ò Phu Phu ®Ó hèt cèt nã nhĞ.C¸ch nhanh nhÊt ®Ó lµm giµu trong game ®ã lµ ®¸nh b¹c hahaha.", getn(bilTbOp), bilTbOp)
end

function accmanh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>C©u Hái Nhøc N¸ch ThËt:<color=white>tr¶ lêi lu«n.\n<color=cyan>Mét Lµ: <color=white>§« La ThÇn Ch­ëng.<pic=7>\n<color=pink>Hai Lµ: <color=white>Tr©u Chã Cµy B­êng.<pic=17>\n<color=yellow>Ba Lµ: <color=white>Hack Acc Th»ng B¹n.<pic=26>", getn(bilTbOp), bilTbOp)
end

function manhhoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>C©u Hái Ng¸o §¸:<color=white>tr¶ lêi lu«n.\n<color=cyan>Gom ®ñ 100 m·nh th× Ğp ®­îc mãn ®å t­¬ng øng víi tªn m·nh vµ mãn ®å cã thêi h¹n vÜnh viÔn.", getn(bilTbOp), bilTbOp)
end

function vongsang()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>Tªn VËt PhÈm:<color=white>Vßng S¸ng.\n<color=cyan>VŞ Trİ: <color=white>Tham gia tèng kim top 1 2 3 vßng kim c­¬ng 3 mµu - ®ua ngùa vßng mµu vµng vµ rång tr¾ng - top 1 l«i ®µi lo¹n chiÕn vßng hoa bay xung quanh .\n<color=pink>C«ng dông: <color=white> Cã KTC 5 - 4 - 3 - 2 - 1 vµ sinh lùc 1000 - 500 - 400 - 300 - 200.", getn(bilTbOp), bilTbOp)
end

function dataucay()
	local bilTbOp = {}	
	tinsert(bilTbOp, "Tho¸tÙ/no")
	Say("<color=green>D· TÈu:<color=white>Th­ëng. phÇn th­ëng mèc 10 20 30 40 h»ng ngµy lµ r­¬ng ®å xanh vµ kinh nghiÖm - th­ëng mèc theo chuçi th× xem t¹i web.", getn(bilTbOp), bilTbOp)
end