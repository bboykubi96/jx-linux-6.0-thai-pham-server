-- script viet hoa By http://tranhba.com  t�ng kim ��o c� binh l�nh chi k�n hi�u , cho g�i ra m�y phe NPC binh l�nh 2 c� 
-- script viet hoa By http://tranhba.com  Liu Kuo 
-- script viet hoa By http://tranhba.com  2004.12.18 
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine() -- script viet hoa By http://tranhba.com  th�ng qua ph�n �o�n chi�n tr��ng ��ch c�p b�c c�ng nh� ch�i ��ch tr�n doanh t�i th�m NPC 
if (GetFightState() == 0) then 
Say("K�n hi�u kh�ng th� � kh�ng ph�i l� chi�n ��u d��i t�nh hu�ng s� d�ng #", 0) 
return -1 
end; 
tbPK_MAP = {357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} -- script viet hoa By http://tranhba.com  m�t m�nh ��u b�n �� c�m ch� s� d�ng k�n hi�u 
for j = 1, getn(tbPK_MAP) do 
if ( nMapId == tbPK_MAP[j] ) then 
Msg2Player(" � m�t m�nh ��u b�n �� kh�ng th� s� d�ng ��o n�y c� "); 
return -1 
end 
end 

for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("��o n�y c� ch� c� th� � t�ng kim chi�n tr��ng b�n trong s� d�ng "); 
return -1 
end 
end 
if (GetCurCamp() == 1) then 
if (GetMissionV(MS_CALLNPCCOUNT_S) >= MAX_CALLNPCCOUNT) then 
Msg2Player("Tr��c m�t chi�n tr��ng s� d�ng k�n hi�u s� l��ng �� ��t t�i th��ng h�n , kh�ng th� s� d�ng n�a li�u . ") 
return -1 
else 
			SetMissionV(MS_CALLNPCCOUNT_S, GetMissionV(MS_CALLNPCCOUNT_S) + 1)
end 
elseif (GetCurCamp() == 2) then 
if (GetMissionV(MS_CALLNPCCOUNT_J) >= MAX_CALLNPCCOUNT) then 
Msg2Player("Tr��c m�t chi�n tr��ng s� d�ng k�n hi�u s� l��ng �� ��t t�i th��ng h�n , kh�ng th� s� d�ng n�a li�u . ") 
return -1 
else 
			SetMissionV(MS_CALLNPCCOUNT_J, GetMissionV(MS_CALLNPCCOUNT_J) + 1)		
end 
end 

if ( GetLevel() >= 40 and GetLevel() <= 79) then -- script viet hoa By http://tranhba.com  s� c�p chi�n tr��ng 
if( GetCurCamp() == 1) then -- script viet hoa By http://tranhba.com  cho g�i c�ng nh� ch�i c�ng tr�n doanh ��ch NPC 
CallSjNpc( 682, 50, W, X, Y,"��ch t�ng qu�n s� binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 50, W, X, Y,"��ch kim qu�n s� binh "); 
end 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then -- script viet hoa By http://tranhba.com  trung c�p chi�n tr��ng 
if( GetCurCamp() == 1) then 
CallSjNpc( 682, 70, W, X, Y,"��ch t�ng qu�n s� binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 70, W, X, Y,"��ch kim qu�n s� binh "); 
end 
else -- script viet hoa By http://tranhba.com  cao c�p chi�n tr��ng 
if( GetCurCamp() == 1) then 
CallSjNpc( 682, 90, W, X, Y,"��ch t�ng qu�n s� binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 90, W, X, Y,"��ch kim qu�n s� binh "); 
end 
end 
end 

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name) 
local playername = GetName(); 
-- script viet hoa By http://tranhba.com for i = 1, 2 do 
AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X - 3 ) * 32, Y * 32, 1, playername..Name, 0); 
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X +  3 ) * 32, Y * 32, 1, playername..Name, 0);
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com for j = 1, 2 do 
-- script viet hoa By http://tranhba.com AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X - j * 3 ) * 32, Y * 32, 1, playername.." ��ch t�ng qu�n s� binh ", 0); 
-- script viet hoa By http://tranhba.com end 
	-- script viet hoa By http://tranhba.com AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), X * 32, ( Y + 3 ) * 32, 1, playername.."���ξ�ʿ��", 0);
end
