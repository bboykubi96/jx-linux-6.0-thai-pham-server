Include("\\script\\battles\\battlehead.lua")

function main(sel) 
if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y SD Th�n H�nh Ph�")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng��i �ang v�n chuy�n Bao L��ng . Mau di chuy�n ��n �i�m t�p k�t �i.")
		return 1
	end;
if (GetFightState() == 0 or IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then 
Msg2Player("Ng��i tr��c m�t kh�ng th� s� d�ng tr� v� th�nh ph� #"); 
return 1 
end 

local W,X,Y = GetWorldPos(); 
local nMapId = W; 
for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player(" � ch� n�y ng��i kh�ng th� s� d�ng ��o n�y c� "); 
return 1; 
end 
end 
UseTownPortal(); 
return 1 
end; 