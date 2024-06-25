Include("\\script\\battles\\battlehead.lua")
IncludeLib("TONG")
function main(sel)
	if (GetFightState() == 0  or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395) then
		Msg2Player("HiÖn t¹i b¹n kh«ng thÓ sö dông bïa vÒ thµnh!");
		return 1
	end
	local szTongName, nTongID = GetTongName();
if szTongName~=nil and szTongName~="" then
	if TONG_GetMoney(nTongID)>0 then
	
	--TONG_ApplyAddMoney(nTongID, -(TONG_GetMoney(nTongID)))
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
			return 1;
		end
	end	
	UseTownPortal();
	return 1	
end;
