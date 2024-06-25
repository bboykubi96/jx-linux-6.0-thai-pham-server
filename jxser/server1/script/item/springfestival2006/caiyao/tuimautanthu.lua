Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"huydaigiadola", "boquyx123","","","","",""} 
function main()	
dofile("script/item/caiyao/tuimautanthu.lua")
local nMapId,x,y  = GetWorldPos();
local totalcount =CalcFreeItemCellCount();
local nTime = GetGameTime();
local timedasudung=nTime-GetTask(5885)
local timeconlai=45-timedasudung


--local nShowTime = floor(nTime/180);
--	if (timedasudung < 45) then
	--		Msg2Player("<color=green>Con <color=red>"..timeconlai.."<color> Gi©y MÌi C„ Th” Ti’p TÙc MÎ")
	--	return 1
	--end

	if totalcount == 0 then 
		return 1
	end
	--local szAccount = GetAccount()
	--	for i=1, getn(%tbGMAccount) do
	--	if szAccount == %tbGMAccount[i] then
			tbProp = {	
			{szName="NgÚ Hoa Ng‰c LÈ Hoµn",tbProp={1,2,0,5,0,0},nCount=totalcount,nBindState = -2},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"Ph«n Th≠Îng Admin Ho Tro")
			--SetTask(5885,GetGameTime())
		--	SetTimer(210,1)
		return 1;
		
		--end
		--end
end


