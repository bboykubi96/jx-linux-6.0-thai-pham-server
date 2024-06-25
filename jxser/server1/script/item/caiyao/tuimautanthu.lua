Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"jlk", "","","","","",""} 
function main()	
--dofile("script/item/caiyao/tuimautanthu.lua")
local nMapId,x,y  = GetWorldPos();
local totalcount =CalcFreeItemCellCount();
local nTime = GetGameTime();
local timedasudung=nTime-GetTask(5885)
local timeconlai=45-timedasudung
tbCD_MAP = {867,1002,209, 210, 211,333,396.397,398,399.400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}	
	local nCount = GetItemParam(nItemIndex, 1);
			local nMapId,x,y  = GetWorldPos();
	-------------------
			for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map nµy Kh«ng Sö Dông §­îc");
			return 1	
		end
		end
	if totalcount == 0 then 
		return 1
	end
			tbProp = {	
			{szName="Ngò Hoa Ngäc Lé Hoµn",tbProp={1, 9, 0, 1, 0, 0},nCount=totalcount,nBindState = -2},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"PhÇn Th­ëng Admin Ho Tro")
		return 1;
	
end


