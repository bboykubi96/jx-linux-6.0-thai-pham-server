function TaskShedule()
TaskName( "Tù ®éng tin tøc —— th«ng c¸o ");
TaskInterval(5);
TaskTime( 10, 00);
TaskCountLimit(0);
OutputMsg("=====> He thong thong bao tin tuc tu dong <=====");
end

g_strTipMsg =
{
	--"Chµo  mõng ®Õn víi thÕ giíi game Vâ L©m JX1VN! Website http://jx1vn.net",
	--"Tin tøc trong tuÇn míi cËp nhËt Vâ L©m JX1VN chi tiÕt t¹i http://jx1vn.net",
	--"Server Online 24/7 b¶o tr× ®Þnh kú vµo 09h00 thø 3 vµ thø  5 hµng tuÇn",
	"Tham gia Tèng Kim lóc 21h trËn ®Æc biÖt hµng ngµy may m¾n nhËn ®iÒu phÇn th­ëng hÊp dÉn",
	--"H¸i qu¶ hoµng kim, qu¶ huy hoµng thÊp cao trung lóc 19h hµng ngµy t¹i ChiÕn Long §éng",
	--"Boss tiÓu HK xuÊt hiÖn lóc 12h30 20h00 xuÊt hiÖn ngÉu nhiªn t¹i 10 ph¸i",
	--"Level 90 trë lªn tham gia Tèng Kim trËn ®Æc biÖt ®¹t 6000 ®iÓm tÝch lòy trë lªn nhËn ®­îc ®iÓm kinh nghiÖm",
	--"Top 1, 2, 3 Tèng Kim cã c¬ héi nhËn ®­îc tõ ®iÓm kinh nghiÖm trë lªn",
	--"Tham gia Tèng Kim ®Ó cã c¬ héi nhËn nhiÒu phÇn quµ quý, BÝ kÝp, VLTM, TTK, QTH, TSBL",
	--"B¸o danh ®ua thuyÒn t¹i bÕn Phong L¨ng §é c¶ ngµy",
	--"Nh©n vËt cÊp 80 trë lªn tham gia nhiÖm vô d· tÈu nhËn ®­îc phÇn th­ëng quý",
	--"Hoµn thµnh chuçi nhiÖm vô d· tÈu ®¹t mèc 8000 nhiÖm vô nhËn ®­îc 1 trang bÞ Hoµng Kim ngÉu nhiªn vµ 2000 v¹n l­îng",
	--"Tham gia §o¸n Hoa §¨ng t¹i ®Ønh Hoa S¬n vµo lóc 22h hµng ngµy nhËn ®­îc nhiÒu phÇn th­ëng quý",
	
}

function TaskContent()
str = getTipMsg();
GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str));
GlobalExecute(format( "dw AddLocalNews([[%s]])",str));

local nWeek=tonumber(date("%w"))
if nWeek == 1 then
	str1 = getTipMsgTheoT2()
end
if nWeek == 2 then
	str1 = getTipMsgTheoT3()
end
if nWeek == 3 then
	str1 = getTipMsgTheoT4()
end
if nWeek == 4 then
	str1 = getTipMsgTheoT5()
end
if nWeek == 5 then
	str1 = getTipMsgTheoT6()
end
if nWeek == 6 then
	str1 = getTipMsgTheoT7()
end
if nWeek == 0 then
	str1 = getTipMsgTheoTCN()
end

GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=yellow>"..str1.."<color>"));

end

function getTipMsg()
nCount = getn(g_strTipMsg);
nIndex = random(1, nCount);
return g_strTipMsg[nIndex];
end

g_strTipMsgT2 =
{
	"Thø 2 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 2 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 2 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 2 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 2 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 2 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 2 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 2 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 2 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 2 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 2 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 2 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 2 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 2 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgT3 =
{
	"Thø 3 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 3 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 3 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 3 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 3 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 3 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 3 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 3 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 3 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 3 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 3 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 3 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 3 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 3 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgT4 =
{
	"Thø 4 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 4 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 4 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 4 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 4 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 4 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 4 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 4 - Ho¹t ®éng trong ngµy: 18h00 B¸o danh ®Êu l«i ®µi t¹i C«ng Thµnh Quan",
	"Thø 4 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 4 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 4 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 4 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 4 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 4 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 4 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgT5 =
{
	"Thø 5 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 5 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 5 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 5 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 5 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 5 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 5 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 5 - Ho¹t ®éng trong ngµy: 20h00 §¸nh C«ng Thµnh 3 Trô t¹i C«ng Thµnh Quan",
	"Thø 5 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 5 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 5 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 5 - Ho¹t ®éng trong ngµy: 20h00 §¸nh l«i ®µi t¹i C«ng Thµnh Quan",
	"Thø 5 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 5 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 5 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 5 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgT6 =
{
	"Thø 6 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 6 - Ho¹t ®éng trong ngµy: 11h00 Tèng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 6 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 6 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 6 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 6 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 6 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 6 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 6 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 6 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgT7 =
{
	"Thø 7 - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 7 - Ho¹t ®éng trong ngµy: 11h00 Tèng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Thø 7 - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Thø 7 - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Thø 7 - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Thø 7 - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Thø 7 - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Thø 7 - Ho¹t ®éng trong ngµy: 21h00 Liªn §Êu",
	"Thø 7 - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Thø 7 - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Thø 7 - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}

g_strTipMsgTCN =
{
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 10h00 §ua ThuyÒn Phong L¨ng §é",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 11h00 Tèng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 11h00 V­ît ¶i",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 12h30 s¨n boss TiÓu Hoµng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 13h00 V­ît ¶i",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 15h00 §ua ThuyÒn Phong L¨ng §é",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 16h00 V­ît ¶i",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 18h00 Liªn §Êu",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 19h00 H¸i Qu¶ Huy Hoµng, Qu¶ Hoµng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 19h30 S¨n boss §¹i Hoµng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 20h00 s¨n boss TiÓu Hoµng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 20h50 B¸o danh chuÈn bÞ ®¸nh Tèng Kim trËn ®Æc biÖt",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 21h00 Liªn §Êu",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 22h00 §o¸n hoa ®¨ng trªn ®Ønh Hoa S¬n",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 22h30 S¨n boss §¹i Hoµng Kim",
	"Chñ NhËt - Ho¹t ®éng trong ngµy: 23h00 §ua ThuyÒn Phong L¨ng §é",
}


function getTipMsgTheoT2()
nCount = getn(g_strTipMsgT2);
nIndex = random(1, nCount);
return g_strTipMsgT2[nIndex];
end

function getTipMsgTheoT3()
nCount = getn(g_strTipMsgT3);
nIndex = random(1, nCount);
return g_strTipMsgT3[nIndex];
end

function getTipMsgTheoT4()
nCount = getn(g_strTipMsgT4);
nIndex = random(1, nCount);
return g_strTipMsgT4[nIndex];
end

function getTipMsgTheoT5()
nCount = getn(g_strTipMsgT5);
nIndex = random(1, nCount);
return g_strTipMsgT5[nIndex];
end

function getTipMsgTheoT6()
nCount = getn(g_strTipMsgT6);
nIndex = random(1, nCount);
return g_strTipMsgT6[nIndex];
end

function getTipMsgTheoT7()
nCount = getn(g_strTipMsgT7);
nIndex = random(1, nCount);
return g_strTipMsgT7[nIndex];
end

function getTipMsgTheoTCN()
nCount = getn(g_strTipMsgTCN);
nIndex = random(1, nCount);
return g_strTipMsgTCN[nIndex];
end


function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


