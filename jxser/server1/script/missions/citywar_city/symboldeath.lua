Include("\\script\\missions\\citywar_city\\head.lua");
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function OnDeath(DeathNpc) 
WriteLog(GetLoop()..": c�t �� t�n h�i :"..DeathNpc); 
State = GetMissionV(MS_STATE) ; 
if (State ~= 2) then 
return 
end; 

DeathName = GetName(); 

LaunName = GetName(); 

	svalue = GetMissionV(MS_SYMBOLBEGIN + SymbolId - 1);

oldsvalue=svalue 
if (oldsvalue == 1) then 
svalue = 2 
elseif (oldsvalue == 2) then 
svalue = 1 
end; 

msgstr = format("C�ng th�nh tr�n chi�n tr��ng t�i t�nh b�o : %s �� l�y ���c quy�n kh�ng ch� %s",GetGamerName(svalue),StonePos[SymbolId].Name); 

	SetMissionV(MS_SYMBOLBEGIN + SymbolId - 1, svalue);
nWinCount = CheckWin(); 
if (nWinCount >= MS_SYMBOLCOUNT) then 
AddGlobalNews(msgstr); 
GameWin(2) 
return 
end; 

AddGlobalNews(msgstr); 

if (svalue == 1 )then 
		nNpcId = AddNpc(STONENPCID1, STONELEVEL1 + svalue - 1, SubWorld, StonePos[SymbolId].x, StonePos[SymbolId].y, 1, GetGamerName(svalue)..StonePos[SymbolId].Name, 1);
else 
		nNpcId = AddNpc(STONENPCID2, STONELEVEL1 + svalue - 1, SubWorld, StonePos[SymbolId].x, StonePos[SymbolId].y, 1, GetGamerName(svalue)..StonePos[SymbolId].Name, 1);
end; 
WriteLog("Gia t�ng m�t g�c c�y m�i c�t �� "..nNpcId); 

	scriptname = format("\\script\\missions\\citywar_city\\symboldeath%d.lua", SymbolId);
SetNpcDeathScript(nNpcId, scriptname); 

if (nNpcId > 0) then 
if (svalue == 1) then 
SetNpcCurCamp(nNpcId, 1); 
else 
SetNpcCurCamp(nNpcId, 2); 
end; 
end; 

end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
