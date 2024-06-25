	-- hoµng kim qu¸i vËt ch©n cña b¶n ®Æt ra

	--1, thµnh lËp mét hoµng kim qu¸i vËt s¶n sinh ph­¬ng ¸n kŞch b¶n gèc v¨n kiÖn ®Ó c¹nh nhau ®­a ë Relay\RelaySetting\Task\ môc lôc phİa d­íi.

	-- ë cai v¨n kiÖn bé phËn më ®Çu ph¶i bao hµm hoµng kim qu¸i vËt ®Çu v¨n kiÖn

	-- ®Ó mµ phİa d­íi ph¸p bao hµm

	--Include( "\\RelaySetting\\Task\\GoldBossHead.lua ");

	--2, ë phi hµm sè khu vùc (toµn côc ®Şnh nghÜa), ®iÒn d÷ hoµng kim qu¸i vËt cã liªn quan toµn côc l­îng biÕn ®æi gi¸ trŞ

	-- theo thø tù lµ

	--1, Sid biÓu thŞ sinh ra Boss ph­¬ng ¸n hµo, tõng ph­¬ng ¸n chØ cã thÓ ®ång thêi s¶n sinh mét Boss. Chó ı Boss ph­¬ng ¸n hµo ph¶i lµ duy nhÊt, bÊt n¨ng ®Æt ra t¸i diÔn Sid hµo.

	--2, Interval biÓu thŞ s¶n sinh Boss kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	--3, Count biÓu thŞ g©y ra cai ph­¬ng ¸n sè lÇn, nÕu v× 0 biÓu thŞ v« h¹n sè lÇn, chØ cÇn ®Õn lóc ®ã ®ang lóc tùu g©y ra b¶n kŞch b¶n gèc.

	--4, StartHour, StartMin biÓu thŞ lÇn ®Çu tiªn g©y ra bæn ph­¬ng ¸n thêi gian, StartHour biÓu thŞ tiÕng ®ång hå, StartMin biÓu thŞ phót.

	-- nÕu nh­ StartHour d÷ StartMin b»ng -1 th×, biÓu thŞ Relay më ra ®éng, liÒn lËp tøc b¾t ®Çu lÇn ®Çu tiªn g©y ra

	-- tû nh­:

	--Sid = 4

	--Interval = 30

	--Count = 4

	--StartHour = 3

	--StartMin = 19

	-- kÓ trªn ®Æt ra biÓu thŞ, thø 4 mét hoµng kim qu¸i vËt s¶n sinh ph­¬ng ¸n, t­¬ng ë 3 ®iÓm 19 xa nhau thñy lÇn ®Çu tiªn g©y ra, ®ång thêi sau ®ã mçi b¸n tiÕng ®ång hå (30 phót) g©y ra mét lÇn, céng g©y ra 4 thø. Còng chİnh lµ ë 3:19 3:49 4:19 4:49 g©y ra.

	--3, ®Şnh nghÜa d÷ thùc hiÖn Boss ch©n cña b¶n hµm sè NewBoss()

	-- cai hµm sè ph¶i tån t¹i. Cai hµm sè c«ng n¨ng thŞ quyÕt ®Şnh cã hay kh«ng yÕu s¶n sinh Boss,Boss së t¹i, chñng lo¹i d÷ ®¼ng cÊp.

	-- bëi vËy, hµm sè cuèi ph¶n håi nh­ sau 4 mét tham sè

	-- ph©n biÖt biÓu thŞ cã hay kh«ng yÕu s¶n sinh boss,boss së t¹i ®å id,boss Npc gç cèp pha id, boss ®¼ng cÊp.

	-- tû nh­ nh­ sau NewBoss thùc hiÖn.

	--function NewBoss()

	--return 1, 20, random(100), 50 + random(50);

	--end;

	-- biÓu thŞ, s¶n sinh qu¸i vËt, nã trªn mÆt ®Êt ®å ID vi 20 trªn b¶n ®å, npc gç cèp pha hµo ë 1 ®¸o 100 ngÉu nhiªn, ®¼ng cÊp ë 51 ®¸o 100 ngÉu nhiªn

	--4, ë Relay\RelaySetting\Task\TaskList. ini v¨n kiÖn trung t¨ng b¶n kŞch b¶n gèc

	-- b¶ [List] h¹ Count gi¸ trŞ gia nhÊt biÓu thŞ l¹i t¨ng lªn mét ®óng giê g©y ra nhiÖm vô

	-- t¨ng [Task_X], b¶ X thay thµnh míi nhÊt Count gi¸ trŞ.

	-- ë [Task_X] TaskFile th­îng ®iÒn b¶n kŞch b¶n gèc v¨n kiÖn danh

	-- hoµng kim qu¸i vËt ng­êi thiÕt kÕ: §Ëu h¹o

	--2004. 2. 13 16:27:08

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Boss hoµng kim 0800 ")

	-- thiÕt trİ kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	TaskInterval(1440)

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit(0)

	-- ®Æt ra ®óng giê kú khëi ®éng thêi gian

	TaskTime(8, 0);

	-- c¾t bá tõ tr­íc sè liÖu

	for i = 1, getn(tb_goldboss) do

	success = ClearRecordOnShareDB( "GoldBoss", tb_goldboss[i]. Sid, 0, 1, 0);

	OutputMsg( "Du lieu Boss hoang kim database ".. tb_goldboss[i]. Sid);
	OutputMsg( "Boss hoµng kim 0800 ")

	end

	end

	function TaskContent()

	for i = 1, getn(tb_goldboss) do

	str = tb_goldboss[i]. str;

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	end

	GlobalExecute( "dwf \\script\\missions\\boss\\callboss_incity.lua CallBossDown_Fixure() ");

	end


