Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"taylor1", "taylor2","taylor3","taylor4","taylor5","taylor6",""} 
tbCD_MAP = {209, 210, 211,333,396.397,398,399.400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}	
function main()
local totalcount =CalcFreeItemCellCount();
			local nMapId,x,y  = GetWorldPos();
			for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map nµy Kh«ng Sö Dông §­îc");
			return 1	
		end
		end	
AskClientForNumber("tuiduocpham_getpotion", 0,250, "Sè l­îng rót")
	
	return 1
end
function tuiduocpham_getpotion(num)
local totalcount =CalcFreeItemCellCount();
local num =  totalcount 
	if totalcount == 0 then 
		return 1
	end
	local szAccount = GetAccount()
		for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			tbProp = {	
			{szName="Ngò Hoa Ngäc Lé Hoµn",tbProp={1, 8, 0, 1, 0, 0},nCount= num},
				}
			tbAwardTemplet:GiveAwardByList(tbProp,"PhÇn Th­ëng Admin Ho Tro")
			
		return 1;
		
		end
		end
end


