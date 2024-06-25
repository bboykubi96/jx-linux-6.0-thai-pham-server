--GameServer
function TaskShedule()
	TaskName("THONG BAO TIN TUC TU DONG");
	
	
	TaskInterval(20);

	-- TaskTime(0, 0);
	
	TaskCountLimit(0);
	
	OutputMsg("=====> THONG BAO TIN TUC TU DONG");
end

g_strTipMsg = 
	{
		"ë trß ch¬i trªn thÕ giíi cïng c¸c ®¹i thµnh thŞ ®İch cöa thµnh vÖ binh cïng tay míi th«n ®İch m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i , nh­ng hiÓu râ bæn m«n ®İch kü n¨ng ph¸t triÓn lé tuyÕn cïng thİch hîp nhÊt luyÖn cÊp ®İch trµng së",
		"nÕu nh­ ph¸t triÓn m×nh ®· häc ®­îc kü n¨ng bİ mËt , xin/mêi trë vÒ s­ , ®em häc ®­îc c¸c lo¹i kü n¨ng , nh­ , huyÕt chiÕn b¸t ph­¬ng , kh«ng lßng d¹ nµo chĞm , Thiªn v­¬ng chiÕn y ( Thiªn v­¬ng gióp ), lßng d¹ , cïng víi la ®Şa mÊt ( §­êng m«n ).",
		"mét phÇn nhµ ch¬i hoµn thµnh 90 cÊp nhiÖm vô sau , vÉn kh«ng thÓ ®¹t ®­îc kü n¨ng , trë vÒ s­ sau , trë vÒ tr­íc khi an chØnh c¶i [183,182])",
		" mét phÇn §­êng m«n nhµ ch¬i ë häc [ tô tµi b¾n cung . m­a sa lª hoa ] gÆp ph¶i kh«ng thÓ sö dông m­a sa lª hoa ®İch t×nh huèng , trë vÒ s­ sau , ®Õn tr­íc khi an ®iÒu chØnh [183,182]) ",
		"mét phÇn Vâ §­¬ng nhµ ch¬i gÆp ph¶i mÊt ®i kü n¨ng ®iÓm ®İch t×nh huèng , trë vÒ s­ sau , ®Õn tr­íc khi an ®iÒu chØnh [183,182])",
		" [ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] mçi lÇn Trung quèc ®éi ®¹t ®­îc t­ëng th­ëng , nhµ ch¬i cã thÓ ®Õn [ lÔ quan ] chç dÉn t­ëng : kim bµi - kim cá lé , ng©n bµi - b¹ch c©u hoµn , ®ång bµi - lÔ hoa ", 
		"[¸o vËn t­ëng bµi ®­a ®¹i lÔ] nhËn lÊy lÔ phÈm tr­íc tiªn ®o¹n : B¾c Kinh thêi gian 10:00~14:00 nhËn lÊy tr­íc mét ngµy 22:00~ ngµy ®ã 4:00 ®İch phÇn th­ëng ", 
		"[ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] nhËn lÊy lÔ phÈm thø hai thêi gian ®o¹n :19:00~20:00 nhËn lÊy ngµy ®ã 14:00~18:00 ®İch phÇn th­ëng ", 
		"[ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] nhËn lÊy lÔ phÈm thø ba thêi gian ®o¹n :23:00~ ngµy kÕ 0:00 nhËn lÊy ngµy ®ã 18:00~22:00 ®İch phÇn th­ëng ", 
		" [ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] dÉn t­ëng cã lóc h¹n , nhµ ch¬i h¼n chó ı vèn ®éi ®İch tranh tµi , ®Õn [ lÔ quan ] chç kŞp thêi dÉn t­ëng .", 
		" sö dông [ kim cá lé ] ë mét giê néi luyÖn cÊp , ®em ®¹t ®­îc gÊp ®«i kinh nghiÖm trŞ gi¸ : ë trong vßng mét canh giê sö dông [ b¹ch c©u hoµn ] ®em ®¹t ®­îc [ tù ®éng ®¸nh tr¸ch ].2 lo¹i thuèc men chøc n¨ng ®em ë ngµy ®ã më ra ", 
		" [ dù ®o¸n ¸o vËn cuéc so tµi chuyÖn ] ë thµnh phè ®İch [ lÔ quan ] chç tham gia ¸o vËn cuéc so tµi chuyÖn dù ®o¸n ", 
		"[ ¸o vËn cuéc so tµi chuyÖn c¸nh ®o¸n ] c¸nh ®o¸n tróng t­ëng ®İch nhµ ch¬i ë ®¹t ®­îc tiÒn th­ëng håi b¸o ®İch ®ång thêi , cßn cã cã thÓ ®¹t ®­îc ? ®Şnh n­íc ?? an bang ? hÖ liÖt hoµng kim trang bŞ trung ®İch mét mãn ", 
		" tÊt c¶ cuéc so tµi chuyÖn sau khi kÕt thóc , hÖ thèng ®em ë ®o¸n tróng Trung quèc ®éi ®¹t ®­îc ®İch kim ? ng©n ? ®ång bµi sè l­îng ®İch nhµ ch¬i trung sinh ra mét vŞ siªu cÊp may m¾n nhµ ch¬i , t­ëng th­ëng ¸o vËn hÖ liÖt hoµng kim trang bŞ s¸o trang ", 
		"[¸o vËn t­ëng bµi c¸nh ®o¸n ] Trung quèc t­ëng bµi sè l­îng c¸nh ®o¸n , ®em ë 2004.8.17 ngµy buæi s¸ng duy tr× tr­íc chÆn chØ . muèn tham gia nhµ ch¬i xin/mêi n¾m chÆc thêi gian mua lo¹i nµy vĞ sè ", 
		" [ ¸o vËn hoµng kim trang bŞ ] bao gåm 2 bé/vá [ nh· ®iÓn chi hån ], [ B¾c Kinh chi méng ]", 
		"[ ¸o vËn chi hån ] ¸o vËn lßng  thuéc tİnh ®Òu v× ? tÊt c¶ vâ c«ng cÊp bËc thªm 1? , ®¸i ®ñ sau tù ®éng kİch ho¹t toµn th©n trang bŞ ®İch tÊt c¶ thÇm thuéc tİnh ", 
		" [ phóc duyªn hÖ thèng ] th«ng qua ch¬i thêi gian gia t¨ng ®Ó ®æi lÊy phóc duyªn trŞ gi¸ , dïng phóc duyªn trŞ gi¸ ®Õn [ thÇn bİ th­¬ng nh©n liÔu Êt ] chç ®æi lÊy c¸c lo¹i ®Æc biÖt vËt phÈm ", 
		" [ phóc duyªn hÖ thèng ] cïng thµnh phè ®İch [ vâ l©m truyÒn nh©n ] ®èi tho¹i , hiÓu râ cÆn kÏ tin tøc .", 
		" [ trung thu ho¹t ®éng ] ¨n trung thu b¸nh Trung thu , ng¾m tr¨ng , mæ mª ng÷ ---- ho¹t ®éng ®ang toµn diÖn tiÕn hµnh , phÇn th­ëng chê ng­¬i . mêi ®­îc lÔ quan chç hái cÆn kÏ tin tøc .", 
		" [ hoa ®µo ®¶o ] ¸o vËn v¹n ng­êi cïng nh¹c , ë hÖ thèng dõng ky b¶o tu , tõ 14/8/2004 ®Õn 30/8/2004, miÔn phİ ë hoa ®µo ®¶o tu luyÖn ."
	};
	
g_nFutureDate = 20240723;
STR_HEAD_FUTURE = " [Giang Hå truyÒn r»ng]";
g_strFutureMsg = 
	{
		"chuc ¼´½«¿ª·Å¡¼µ¥Á·µØÍ¼¡½¡¢¡¼´ò±¦µØÍ¼¡½",
		"mung ¡¼Ï´Ëèµº¡½Ï´¼¼ÄÜµã¹¦ÄÜ½«ÔÚ2004Äê7ÔÂ24ÈÕ¿ª·Å£¬50¼¶»òÒÔÉÏµÄ·Ç°×ÃûÍæ¼ÒÓĞÒ»´ÎÃâ·Ñ½øÈë»ú»á",
		"nam ½èÖú¡¼×ÏË®¾§¡½»òÉñÃØ¡¼ÎäÆ÷Í¼Æ×¡½¿ÉÒÔÌáÉıÎäÆ÷µÈ¼¶",
		"moi ¡¼À¶Ãû¹ÖÎï¡½(Ãû×ÖÏÔÊ¾ÎªÀ¶É«)´À´ÀÓû¶¯£¬¾İËµ½«Ğ¯´ø²»ÉÙ½ğÇ®ºÍ×°±¸ÏÂÉ½£¬»¹¿ÉÄÜ´øÓĞ¡¼Ë®¾§¡½¡¢¡¼ĞÉºì±¦Ê¯¡½¡¢¡¼»Æ½ğ×°±¸¡½¡¢¡¼¼¼ÄÜÊé¡½",
		"2013¡¼»Æ½ğ×°±¸¡½¡¼¶¨¹ú¡½¡¼°²°î¡½»Æ½ğ×°±¸Ì××°ÏÖÉí½­ºş£¬´ò¡¼À¶Ãû¹ÖÎï¡½¼´ÓĞ»ú»á»ñµÃ",
		"2014¡¼Ë«±¶½ğÇ®Ë«±¶¾­Ñé¡½90¼¶¼¼ÄÜ¾«²ÊÎ¨ÃÀ£»½£Íø×é¶Ó³É·ç£¬´ò¹ÖÁ·¼¶»ğ±¬¡£´ğĞ»ĞÂÀÏÍæ¼Ò£¬½üÆÚ½«»áÓĞË«±¶½ğÇ®Ë«±¶¾­Ñé»î¶¯",
		
	};
function TaskContent()
	str = "";
	nFutureCount = getn(g_strFutureMsg);
	nCount = getn(g_strTipMsg) + nFutureCount;
	nIndex = random(1, nCount);
	if (nIndex <= nFutureCount) then 
		str = getFutureMsg();
		if (strlen(str) <= 0) then
			str = getTipMsg();
		end
	else
		str = getTipMsg();
	end
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", str));
end

function getTipMsg()

	nCount = getn(g_strTipMsg);
	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];
end

function getFutureMsg()
	nCurDate = tonumber(date("%Y%m%d"));
	str = "";
	if (g_nFutureDate > nCurDate) then
		nCount = getn(g_strFutureMsg);
		nIndex = random(1, nCount);
		str = STR_HEAD_FUTURE..(g_strFutureMsg[nIndex]);
	end
	
	return str;
end
