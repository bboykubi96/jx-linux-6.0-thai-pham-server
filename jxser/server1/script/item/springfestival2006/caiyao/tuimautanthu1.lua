------------------***Heart*Doldly***----------------------
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------------

tbCD_MAP = {209, 210, 211,78}
function main()
dofile("script/item/caiyao/tuimautanthu.lua")	
local nMapId,x,y  = GetWorldPos();
local totalcount =CalcFreeItemCellCount();
local nTime = GetRestTime();
local nShowTime = floor(nTime/9);
Msg2Player("..nTime..")
	if (nTime > 0) then
		if (nShowTime <= 0) then
			nShowTime = 1
		end
			Msg2Player("<color=green>Sau <color=red>"..nShowTime.."<color> Gi�y M�i C� Th� Ti�p T�c M�")
		return 1
	end

	if totalcount == 0 then 
		return 1
	end
		for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map n�y Kh�ng S� D�ng ���c");
			return 1	
		end
		end
		
--			local tbProp = {1,2,0,5,0,0,0,0};
			tbProp = {	
			{szName="Ng� Hoa Ng�c L� Ho�n",tbProp={1,2,0,5,0,0},nCount=totalcount,nBindState = -2},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"Ph�n Th��ng Admin Ho Tro")
		return 1;
end

function cancel()
end