--xa phu nam nhac tran edit by mcteam
-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn dŞch tr¹m phu xe ®èi tho¹i thÕ giíi nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-16) t¹m thêi che giÊu nhiÖm vô # sau nµy nÆng viÕt më l¹i ®Ó # 

CurStation = 11; 
Include("\\script\\global\\station.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\global\\skills_table.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  check_update() -- script viet hoa By http://tranhba.com  kü n¨ng ®æi míi # m«n ph¸i thªm tiªu chİ #2004-05-31# 
-- script viet hoa By http://tranhba.com  UTask_world15 = GetTask(15) 
-- script viet hoa By http://tranhba.com  if (UTask_world15 < 255) then 
-- script viet hoa By http://tranhba.com  Say("Phu xe # ai , b©y giê lµm ¨n cµng ngµy cµng khã lµm , vèn lµ còng kh«ng cã thiÕu phó th­¬ng ®¹i gia ®i thÇn n«ng chiÕc kia mµ du ngo¹n , nh­ng lµ gÇn nhÊt kh«ng biÕt tõ ®©u mµ tho¸t ra mét ®¸m h¾c l¸ hÇu , däc theo ®­êng ®¸nh c­íp kh¸ch nh©n , lµm ta lµm ¨n ®¹i bŞ ¶nh h­ëng , nÕu nh­ cã ng­êi cã thÓ ®uæi ®i nh÷ng thø nµy h¾c l¸ hÇu lµ tèt . ng­¬i gióp ta ®uæi ®i m­êi con con khØ , liÒn cã thÓ miÔn phİ ë chç nµy cña ta sö dông mét lÇn xe ngùa . ngµi muèn ngåi xe sao ? ", 2,"Gióp mét tay /yes","Kh«ng gióp mét tay /no") 
-- script viet hoa By http://tranhba.com  SetTask(15, 1) 
-- script viet hoa By http://tranhba.com  else 
Say("Phu xe # chóng ta phu xe lµm lµ khİ lùc ho¹t , ¨n lµ khæ cùc c¬m , ngµi kháe t©m gióp ®ë mét chót ®i ? ", 4,"Nh÷ng n¬i ®· ®i qua /WayPointFun","Thµnh thŞ ®· ®i qua /StationFun","Trë vÒ ®Şa ®iÓm cò /TownPortalFun","Kh«ng cÇn /OnCancel"); 
-- script viet hoa By http://tranhba.com  end 
end; 

function yes() 
Task0013 = GetTaskTemp(13); 
if (Task0013 < 10) then -- script viet hoa By http://tranhba.com  kh«ng cã s¸t ®¸o m­êi con h¾c l¸ hÇu 
Say(" lµm phu xe thËt lµ cùc khæ , cã lóc ngay c¶ ch¸o tr¾ng còng uèng kh«ng h¬n !", 4,"Nh÷ng n¬i ®· ®i qua /WayPointFun","Thµnh thŞ ®· ®i qua /StationFun","Trë l¹i ®Şa ®iÓm cò /TownPortalFun","Kh«ng cÇn /OnCancel"); 
else 
SetTaskTemp(13, 0) 
Say("C¸m ¬n ng­¬i gióp ta ®uæi ®i h¾c l¸ hÇu # ta miÔn phİ t¸i ng­¬i !", 4,"Nh÷ng n¬i ®· ®i qua /WayPointFun","Thµnh thŞ ®· ®i qua /StationFun","Trë l¹i ®Şa ®iÓm cò /TownPortalFun","Kh«ng cÇn /OnCancel") 
end 
end; 

function OnCancel() 
Say("Phu xe # cã tiÒn trë l¹i ngåi xe ®i . ",0) 
end; 
