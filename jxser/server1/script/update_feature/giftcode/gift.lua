IncludeLib("FILESYS");
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\giftcode\\libgm.lua")
Include("\\script\\update_feature\\giftcode\\gift_award.lua")
Task_VipCode = 5025
Task_GiftCode = 5024
-------------------------------------------------------
tbKandy = {}
tbKandy.szFile = "\\dulieu\\checkcode.dat"
server_loadfile(tbKandy.szFile)
---------------------------------------------
function code()
dofile("script/update_feature/giftcode/gift.lua")
dofile("script/update_feature/giftcode/gift_award.lua")
	local szTitle ="<color=green>Mem  12h00  ngµy :<color> <color=yellow>25/04/liªn hÖ <color>\n"
	local tbOpt = {
		{"NhËp VipCode  ",CodeStrings},
		--{"NhËp GiftCode T©n Thñ",QuaTanThu},
		{"Tho¸t",}
	}
	CreateNewSayEx(szTitle, tbOpt) 

end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CodeStrings()
			if GetTask(Task_VipCode) == 0 then
				if CalcFreeItemCellCount() >= 40 then
					AskClientForString("CODECHECK","",1,999999999,"NhËp GiftCode")
				else
					Talk(1,"","Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i Råi NhËn Th­ëng")
				end
			else
				Talk(1,"","<color=red>"..GetName().." §· KÝch Ho¹t Råi")
			end
end;

function CODECHECK(nVar)
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<color=red>M· GIFTCODE §· §­îc Sö Dông Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<color>")
	end
	for k=1,getn(ListGift) do
		if nVar == ListGift[k][1] then
			server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");
			server_savedata(tbKandy.szFile);
			SetTask(Task_VipCode, 1) tbAwardTemplet:GiveAwardByList(tbQuaTang.tbAward[2],"PhÇn Th­ëng GiftCode")
			Msg2SubWorld("<color=green>Chóc Mõng<color> "..GetName().." <color=green> §· NhËn GiftCode  Hç Trî  Vip Cho Acc Tay Thµnh C«ng")
			return
		else 
			nillVar = 0
		end
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function QuaTanThu()
	if GetTask(Task_GiftCode) == 0 then
		if CalcFreeItemCellCount() >= 40 then
			AskClientForString("CHECKCODE","",1,999999999,"NhËp GiftCode")
		else
			Talk(1,"","Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i Råi NhËn Th­ëng")
		end
	else
		Talk(1,"","<color=red>"..GetName().." §· NhËn Th­ëng Råi")
	end
end

function CHECKCODE(nVar)
	for i = 1,getn(GiftTanThu) do
		if nVar == GiftTanThu[i][1] then
			SetTask(Task_GiftCode,1) tbAwardTemplet:GiveAwardByList(tbQuaTang.tbAward[1],"PhÇn Th­ëng GiftCode")
			Msg2SubWorld("<color=green>Chóc Mõng<color> "..GetName().." <color=green> §· NhËn GiftCode Thµnh C«ng")
			return
		end
		Talk(1,"","<color=red>"..GetName().." NhËp Th«ng Tin Kh«ng ChÝnh X¸c")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------