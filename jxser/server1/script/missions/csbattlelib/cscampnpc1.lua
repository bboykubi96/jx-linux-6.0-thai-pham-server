-- script viet hoa By http://tranhba.com CheckCondition() cÇn nªn hµm sè dïng cho kiÓm tra cã hay kh«ng phï hîp gia nhËp ®iÒu kiÖn 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");

function main() 

if (GetMissionV(1) == 1) then 
-- script viet hoa By http://tranhba.com  kh«ng tiÕn vµo chiÕn tr­êng bµng quan 
if (GetTaskTemp(JOINSTATE) == 0) then 
Say("Ng­¬i nghÜ gia nhËp hoµng ph­¬ng cßn lµ tö ph­¬ng ?", 4,"Ta muèn gia nhËp hoµng ph­¬ng /ChooseCamp","Ta muèn gia nhËp tö ph­¬ng /ChooseCamp","Ta muèn tr­íc quan s¸t , sau l¹i nãi ! /ChooseCamp","Ta muèn muèn nh×n /OnCancel"); 
return 
-- script viet hoa By http://tranhba.com  ®ang bµng quan 
else 
if (GetCurCamp() == 0) then 
Say("Ng­¬i nghÜ gia nhËp hoµng ph­¬ng cßn lµ tö ph­¬ng ?", 4,"Ta muèn gia nhËp hoµng ph­¬ng /ChooseCamp","Ta muèn gia nhËp tö ph­¬ng /ChooseCamp","Ta muèn võa nghÜ /OnCancel","Ta muèn rêi ®i chiÕn tr­êng . /ChooseLeave"); 
return 
else 
Say("Ng­¬i nghÜ rêi ®i chiÕn tr­êng sao ?", 2, " õ/d¹ , ®óng vËy /ChooseLeave","Ta cßn kh«ng cã ®¸nh xong , cßn kh«ng muèn rêi ®i . /OnCancel"); 
return 
end 
end 
else 
Say("Cßn ch­a tíi thêi gian chiÕn ®Êu !",0); 
return 
end; 
end; 

function ChooseCamp(nSel) 

if (CheckCondition() == 0) then 
return 
end; 

if (nSel == 0) then 
JoinCamp(1) 
elseif (nSel == 1) then 
JoinCamp(2) 
else 
SetTaskTemp(JOINSTATE, 1); 
SetPos(CS_CampPos0[2], CS_CampPos0[3]); 
end; 
end; 

function OnCancel() 

end; 

function ChooseLeave() 
LeaveGame(0) 
end; 
