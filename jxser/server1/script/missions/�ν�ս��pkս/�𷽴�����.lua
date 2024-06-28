Include("\\script\\missions\\ÀŒΩ’Ω≥°PK’Ω\\ÀŒΩ’Ω≥°Õ∑Œƒº˛.lua");

function OnDeath() 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

-- script viet hoa By http://tranhba.com if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

if (GetMissionV(5) >= (MAX_S_COUNT / 2) and GetMissionV(6) >= (MAX_J_COUNT / 2)) then 

if (random(100) > 70) then 
return 
end; 

AddEventItem(195); 
Msg2Player("Ngµi thu Æ≠Óc nhπc v≠¨ng ki’m !"); 
end; 


str1 = "<#> tËng kim chi’n dﬁch k’t qu∂ : ng≠Íi TËng "..GetName().."<#> gi’t ch’t kim ph≠¨ng ßπi t≠Ìng , tËng ph≠¨ng Æπt Æ≠Óc thæng lÓi !"; 
str = "<#> thÀt tËt qu∏ #["..GetName().."<#>] gi’t ch’t kim Æem , chÛng ta ng≠Íi TËng thæng cuÈc chi’n Æ u nµy ! c∏c t≠Ìng s‹ hoan h´ nha #"; 
Msg2MSAll(1, str1); 
Msg2MSGroup(1, str, 1); 
resultstr = WinBonus(1,2); 
str1 = str1..resultstr; 
SetMissionV(2,2); 
SetMissionV(1,3); 
AddGlobalCountNews(str1 , 3); 
CloseMission(1); 
end;
