Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("BATTLE") 

function EatMedicine() 
for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("��o n�y c� ch� c� th� � t�ng kim chi�n tr��ng b�n trong s� d�ng "); 
return -1 
end 
end 
nowmissionid = BT_GetData(PL_RULEID); -- script viet hoa By http://tranhba.com  l�y ���c tr��c m�t MISSIONID 
curcamp = GetCurCamp(); 
X = floor( X / 8 ); 
Y = floor( Y / 16 ); 
string = "<#><color=yellow>"..GetName().."<#><color><color=pink>#� ta b�y gi� t�a �� l� <color=yellow>("..X.."<#> , "..Y.."<#>)<color> t�c t�i gi�p ta m�t c�nh tay l�c . �"; 
Msg2MSGroup( nowmissionid, string, curcamp ); 
Msg2Player("Ng��i s� d�ng m�t tin/th� c�p , th�ng b�o li�u chi�n h�u ng��i b�y gi� ��ch t�a �� . "); 
end 
