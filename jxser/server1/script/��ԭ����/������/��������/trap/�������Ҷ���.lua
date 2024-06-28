-- script viet hoa By http://tranhba.com  ThiÕu L©m phİa sau nói mËt thÊt hai cöa trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
UTask_sl40tmp = GetTaskTemp(43) 
	if (UTask_sl >= 40*256+20) and (UTask_sl < 50*256) then		-- script viet hoa By http://tranhba.com  ±ØĞëÔÚÈÎÎñÖĞ²ÅÄÜ½øÈë£¬²¢ÇÒÃ¿´Î½øÈë¶¼Òª»Ø´ğÎÊÌâ
		Say("KhÈu quyÕt më th¹ch m«n lµ: ",4,"¸n Ma Ni B¸t Mª Hång /L40_S2_wrong","Hång Bèi Mª Ma Ni ¸n /L40_S2_wrong","B¸t Mª Ni Hång ¸n Ma /L40_S2_wrong","¸n B¸t Ni Ma Mª Hång. /L40_S2_correct")
else 
Talk(1,"","B# l yÕt #y m# l# th ®ång h m tÇn , nh#g th ®ång h m tÇn tr# tr#t kh tÇn g c?m# ## t# n kú .") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i dêi ra trap ®iÓm 
end 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L40_S2_correct() 
Talk(1,"","Kh# quy# v t­ëng ni# xong, th ®ång h m tÇn t?t?m?ra.") 
-- script viet hoa By http://tranhba.com  NewWorld(74, 2040 ,3259) -- script viet hoa By http://tranhba.com  chê ®îi cung cÊp b¶n ®å täa ®é 
end; 

function L40_S2_wrong() 
Talk(1,"","Sau khi #c kh# quy# xong, th ®ång h m tÇn v th­¬ng kh tÇn g c?ph# #g g?h#, kh tÇn g bi# c?nh?nh# kh# quy# kh tÇn g?") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i dêi ra trap ®iÓm 
end; 
