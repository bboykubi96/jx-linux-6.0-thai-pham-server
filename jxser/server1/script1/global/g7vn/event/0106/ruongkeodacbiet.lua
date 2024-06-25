--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20191205
NgayHetHanEventHLW = 20200806


function main()
	dofile("script/global/g7vn/event/0106/ruongkeodacbiet.lua")
--			if GetAccount()~="boquyx123" or GetAccount()~="luuhuanvlv2019" then
--	Say("HiÖn t¹i ch­a ®­îc sö dông nhÐ huynh")
--	return 1
	--end
		local nDate = tonumber(date("%Y%m%d"))
		if nDate < NgayBatDauEventHLW then
			Say("T¹m thêi ch­a cã event. Xin quay l¹i sau")
			return 1
		end
		if nDate > NgayHetHanEventHLW then
			Say("VËt ph¶m qu¸ h¹n sö dông")
			return 0
		end
	local tbthuongitem = {
		

			{szName = "Hu©n Ch­¬ng ChiÕn Th¾ng",tbProp={6,1,1633,1,0,0},nCount=300,nExpiredTime=202000807},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

