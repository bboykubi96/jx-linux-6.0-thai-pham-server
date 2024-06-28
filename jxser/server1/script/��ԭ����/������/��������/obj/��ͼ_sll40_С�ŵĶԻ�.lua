-- script viet hoa By http://tranhba.com  ThiÕu L©m phİa sau nói mËt thÊt néi thÊt cöa sæ nhá tr­íc ®İch ®èi tho¹i 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
	if (UTask_sl >= 40*256+20) and (UTask_sl < 50*256) then		-- script viet hoa By http://tranhba.com  ±ØĞëÔÚÈÎÎñÖĞ²ÅÄÜ½øÈë£¬²¢ÇÒÃ¿´Î½øÈë¶¼Òª»Ø´ğÎÊÌâ
Say("BÇn t¨ng ®ang bÕ quan tu luyÖn , nÕu nh­ muèn truyÒn lêi cho bän h¾n , sÏ ph¶i th«ng qua hai c©u nµy khÈu quyÕt , nghe râ !",4,"§Êm bãp ni t¸m mª hång /L40_S2_wrong","Hång bèi mª ma ni theo nh­ /L40_S2_wrong","T¸m mª ni hång ®Êm bãp /L40_S2_wrong","Theo nh­ t¸m ni ma mª hång . /L40_S2_correct") 
	elseif (UTask_sl == 40*256+50) then
Talk(3,"","Träng yÕu nh­ vËy ®İch khÈu quyÕt , ng­¬i lµm sao cã thÓ quªn , ta nãi l¹i lÇn n÷a , nhí !","C©u thø nhÊt lµ , thÕ sù v« th­êng , quèc thæ nguy hiÓm # c©u thø hai lµ , tø ®¹i khæ v« İch , n¨m ©m v« ng· # thø ba c©u lµ , sinh diÖt biÕn dŞ . dèi tr¸ v« chñ # thø t­ c©u # t©m lµ ¸c nguyªn , hµnh ®éng téi ®Õm # thø n¨m c©u # nh­ thÕ quan s¸t , tiÖm c¸ch sinh tö "," lÇn nµy kh«ng muèn n÷a quªn , ®i ®i !") 
else 
Msg2Player("ThÇn t¨ng ®ang bÕ quan tu luyÖn , xin kh«ng cÇn quÊy rÇy ") 
end 
end; 

function L40_S2_correct() 
Talk(9,"L50_step2","§Ö tö b¸i kiÕn s­ thóc tæ ","Ch­ëng m«n ph¸i ®Ö tö tíi xin/mêi hai vŞ s­ thóc tæ xuÊt quan , ®µm luËn chuyÖn thiªn h¹ ","Kh«ng tŞch # thiªn h¹ con trai , chóng ta kh«ng hiÓu , ng­¬i chuyÓn ®¹t cho ch­ëng m«n 5 c©u , h¾n sÏ hiÓu ","C©u thø nhÊt # thÕ sù v« th­êng , quèc thæ nguy hiÓm . ","Kh«ng tŞch # c©u thø hai # tø ®¹i khæ v« İch , n¨m ©m v« ng· ","Thø ba c©u # sinh diÖt biÕn dŞ . dèi tr¸ v« chñ ","Kh«ng tŞch # thø t­ c©u # t©m lµ ¸c nguyªn , hµnh ®éng téi ®Õm ","Thø n¨m c©u # nh­ thÕ quan s¸t , tiÖm c¸ch sinh tö ") 
end; 

function L40_S2_wrong() 
Talk(1,"","Häc xong khÈu quyÕt sau , cöa nhá kh«ng cã bÊt cø ®éng tÜnh g× , cã hay kh«ng ng­¬i ®äc sai lÇm råi ?") 
end; 

function L50_step2() 
Talk(1,"","N¨m c©u khÈu quyÕt ®İch thø tù ph¶i nhí râ rµng , ®i ®i !") 
	SetTask(7,40*256+50)
AddNote("ThÊy tŞch diÖt hai t¨ng , cÇu xin truyÒn ®¹t cho ph­¬ng tr­îng ®İch chØ thŞ . ") 
Msg2Player("ThÊy tŞch diÖt hai t¨ng , cÇu xin truyÒn ®¹t cho ph­¬ng tr­îng ®İch chØ thŞ . ") 
end; 
