Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"", "","","","","","","","","","","","","",""} 
function main(nItemIndex)	
dofile("script/item/caiyao/hotromautanthu.lua")
SetItemBindState(nItemIndex, -2)
local nMapId,x,y  = GetWorldPos();
local totalcount =CalcFreeItemCellCount();
local nTime = GetRestTime();
local nShowTime = floor(nTime/9);
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
	local szAccount = GetAccount()
	--	for i=1, getn(%tbGMAccount) do
	--	if szAccount == %tbGMAccount[i] then
			tbProp = {	
			{szName="Ng� Hoa Ng�c L� Ho�n",tbProp={1,2,0,5,0,0},nCount=totalcount},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"Ph�n Th��ng Admin Ho Tro")
				logplayer("dulieu/dungtuimau.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		--	SetTimer(210,1)
		return 1;
		
	--	end
	--	end
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


