-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn phu xe ®èi tho¹i 
CurStation = 1; 
Include("\\script\\global\\station.lua")

function main(sel) 
SetCurCamp(GetCamp()) 
SetFightState(0) 
BT_LeaveBattle() 
Say("Chóng ta trªn chiÕn tr­êng ®Ých phu xe vµo sanh ra tö , dïng t¸nh m¹ng cña m×nh kiÕm tiÒn # xin/mêi cho mét Ýt ng©n l­îng !", 5,"Nh÷ng ®Þa ph­¬ng kia ®· ®i qua /WayPointFun","Nh÷ng thø kia thµnh phè ®· ®i qua /StationFun","Trë l¹i t¹i chç /TownPortalFun","Rêi ®i chiÕn tr­êng /LeaveChefu","Kh«ng cÇn /OnCancel"); 
end; 

function OnCancel() 
end; 

function LeaveChefu() 
w,x,y = RevID2WXY(GetPlayerRev()); 
NewWorld(w,x/32, y/32); 
end;
