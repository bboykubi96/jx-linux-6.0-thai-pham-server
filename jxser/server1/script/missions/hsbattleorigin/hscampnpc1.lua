Include("\\script\\missions\\hsbattleorigin\\hshead.lua");
Include("\\script\\missions\\csbattlelib\\cscampnpc1.lua");

function CheckCondition() 
if ( GetLevel() >= 60 ) then 
if (Pay(MS_SIGN_MONEY) == 1) then 
return 1; 
end; 
end; 
Say("Ng��i ch�a �� c�p b�c ho�c l� mang ��ch kh�ng �� ti�n , kh�ng th� th��ng Hoa S�n tuy�t ��nh ", 0); 
return 0; 
end;