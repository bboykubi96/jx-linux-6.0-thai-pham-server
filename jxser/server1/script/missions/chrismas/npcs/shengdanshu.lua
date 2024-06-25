-- script viet hoa By http://tranhba.com  GetGlbValue(9) ghi chĞp thêi gian hour 
-- script viet hoa By http://tranhba.com  GetGlbValue(8) ghi chĞp nhËn lÊy sè lÇn 
-- script viet hoa By http://tranhba.com  GetTask(615) ghi chĞp mét giê bªn trong cã hay kh«ng cã dÉn qu¸ t­ëng 
-- script viet hoa By http://tranhba.com  c©y gi¸ng sinh ®­a lÔ ho¹t ®éng , mçi giê mçi thai phôc vô khİ ®­a 13 c¸ lÔ vËt , mçi ng­êi mçi giê chØ cã thÓ nhËn lÊy mét 
-- script viet hoa By http://tranhba.com  nµy ho¹t ®éng tõ 12 th¸ng 22 ngµy kĞo dµi ®Õn 1 th¸ng 11 ngµy 


function main() 

-- script viet hoa By http://tranhba.com iRand = random(1,300) 
-- script viet hoa By http://tranhba.com if ( iRand < 100 ) then 
-- script viet hoa By http://tranhba.com  Say("Ng­¬i ë ®©y c©y gi¸ng sinh cho phĞp mét nguyÖn , ®ét nhiªn ph¸t hiÖn trªn c©y nhiÒu mét chiÕu lÊp l¸nh ®İch ®å ",2,"ThËt biÕt ®iÒu , ta ®Õn xem nh×n nh×n /present","Ta cßn lµ chuyªn t©m høa nguyÖn ®i /no") 
-- script viet hoa By http://tranhba.com else 
Say("Nhµ ch¬i : c©y gi¸ng sinh thËt lµ ®Ñp m¾t # ë n¬i nµy høa nguyÖn nhÊt ®Şnh sÏ thùc hiÖn !",0) 
-- script viet hoa By http://tranhba.com end 

end 

function present() 

local nLastTime = GetGlbValue(9) 
local nQuantity = GetGlbValue(8) 
local Utask615 = GetTask(615) 
local nHour = tonumber( date( "%m%d%H" ) ) 
local nMinute = tonumber( date( "%M") ) 

if ( nLastTime == 0 and mod( nHour , 100 ) ~= 0 and nMinute < 30 ) then 
SetGlbValue(9,nHour - 1) 
SetGlbValue(8,0) 
AddLocalNews("*** «ng giµ n« en ë c©y gi¸ng sinh th­îng cóp thËt lµ nhiÒu lÔ vËt , mäi ng­êi nhanh lªn ®i lÊy !***") 
elseif ( nLastTime ~= nHour and nMinute >= 30 ) then 
SetGlbValue(9,nHour) 
SetGlbValue(8,0) 
-- script viet hoa By http://tranhba.com  Msg2Player("New hour : ["..nHour.."o'clock] Reset") 
AddLocalNews("*** «ng giµ n« en ë c©y gi¸ng sinh th­îng cóp thËt lµ nhiÒu lÔ vËt , mäi ng­êi nhanh lªn ®i lÊy !***") 
end 
nLastTime = GetGlbValue(9) 
nQuantity = GetGlbValue(8) 
if ( Utask615 ~= nLastTime and nQuantity <= 12 ) then 
onTake() 
		SetGlbValue(8,nQuantity + 1)
SetTask(615,nLastTime) 
-- script viet hoa By http://tranhba.com 		Msg2Player("AddItem 1,total = "..nQuantity + 1)
elseif ( Utask615 == nLastTime ) then 
Say("Kh«ng muèn nh­ vËy lßng tham # cho ng­êi kh¸c chõa chót c¬ héi !",0) 
else 
Say("Thø tèt mét c¸i chíp m¾t liÒn bŞ cÇm xong råi , 1 giê sau trë vÒ n÷a thö mét chót may m¾n ®i !",0) 
-- script viet hoa By http://tranhba.com  SetTask(615,nHour) 
end 

end 

function onTake() 

i = random(1,100000) 
if ( i < 40000 ) then 
AddItem(6,0,20,1,0,0,0) 
Msg2Player("Nga # lµ mét bã hoa hång # ta muèn ®­a cho ng­êi yªu .") 
elseif ( i < 85000 ) then 
AddItem(6,0,11,1,0,0,0) 
Msg2Player("Nga # lµ 1 c¸ lÔ hoa , ta muèn ®Ó cho mäi ng­êi xem .") 
elseif ( i < 90000 ) then 
AddItem(6,1,72,1,0,0,0) 
Msg2Player("A # lµ 1 b×nh Thiªn S¬n b¶o lé # hy väng nã cã thÓ cho ta mang ®Õn may m¾n .") 
elseif ( i < 95000 ) then 
AddItem(6,1,73,1,0,0,0) 
Msg2Player("Oa #1 b×nh b¹ch qu¶ lé , ta võa ®óng cÇn nã !") 
else 
AddItem(6,1,125,1,0,0,0) 
Msg2Player("A #1 b×nh hoa quÕ r­îu . ta muèn t×m c¸ b»ng h÷u ®èi Èm !") 
end 

end 

function no() 
end 
