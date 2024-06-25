-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu l­u tiªn ®éng tÇng ba 4to l­u tiªn ®éng bèn tÇng 2 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 33 
-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån mª cung F3-F4 trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q3","Ng­¬i thÊy mét c¬ quan , phİa trªn cã kh¾c ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L60_q3() 
Say("ThiÓu h¹o phô th©n cña lµ Th¸i b¹ch kim tinh , h¾n ë mét nghÌo khã ®İch th«n trang cuéc sèng , v× vËy l¹i x­ng nghÌo tang thŞ . thiÓu h¹o tõng ë ®«ng ph­¬ng thµnh lËp ®iÓu v­¬ng quèc , quèc néi ®İch v¨n vâ b¸ quan ®Òu lµ ®iÓu . trong ®ã yÕn tö lµ bèn lÔ quan trung ®İch mét con , ng­¬i biÕt nã tr­ëng quan lµ c¸i g× lÔ quan sao ",4,"Xu©n /L60_S3_correct","H¹ /L60_S3_wrong","Thu /L60_S3_wrong","§«ng /L60_S3_wrong") 
end 

function L60_S3_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(13) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(13) == 1)) then
Msg2Player("Ng­¬i theo nh­ c©u tr¶ lêi mét , c¬ quan sÏ dÉn ng­¬i ®Õn tÇng thø t­ ") 
SetFightState(1); 
NewWorld(128, 1586, 3217); 
else 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt cßn kh«ng cã bÊt kú ph¶n øng nµo ") 
end 
end; 

function L60_S3_wrong() 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt cßn kh«ng cã bÊt kú ph¶n øng nµo ") 
end; 
