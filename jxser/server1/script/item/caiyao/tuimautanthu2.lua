Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"", "","","","","","","","","","","","","",""} 
function main(nItemIndex)	
dofile("script/item/caiyao/tuimautanthu.lua")

	local szAccount = GetAccount()
	--	for i=1, getn(%tbGMAccount) do
	--	if szAccount == %tbGMAccount[i] then
	
			tbProp = {	
			{szName="Ng� Hoa Ng�c L� Ho�n",tbProp={1,2,0,5,0,0},nCount=60,nBindState=-2},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"Ph�n Th��ng")
			--	logplayer("dulieu/dungtuimau.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		--	SetTimer(210,1)
		
	--	end
	--	end
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


