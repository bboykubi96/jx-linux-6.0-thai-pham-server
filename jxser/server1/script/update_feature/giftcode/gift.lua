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
	local szTitle ="<color=green>Mem  12h00  ng�y :<color> <color=yellow>25/04/li�n h� <color>\n"
	local tbOpt = {
		{"Nh�p VipCode  ",CodeStrings},
		--{"Nh�p GiftCode T�n Th�",QuaTanThu},
		{"Tho�t",}
	}
	CreateNewSayEx(szTitle, tbOpt) 

end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CodeStrings()
			if GetTask(Task_VipCode) == 0 then
				if CalcFreeItemCellCount() >= 40 then
					AskClientForString("CODECHECK","",1,999999999,"Nh�p GiftCode")
				else
					Talk(1,"","H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i R�i Nh�n Th��ng")
				end
			else
				Talk(1,"","<color=red>"..GetName().." �� K�ch Ho�t R�i")
			end
end;

function CODECHECK(nVar)
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<color=red>M� GIFTCODE �� ���c S� D�ng Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<color>")
	end
	for k=1,getn(ListGift) do
		if nVar == ListGift[k][1] then
			server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");
			server_savedata(tbKandy.szFile);
			SetTask(Task_VipCode, 1) tbAwardTemplet:GiveAwardByList(tbQuaTang.tbAward[2],"Ph�n Th��ng GiftCode")
			Msg2SubWorld("<color=green>Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n GiftCode  H� Tr�  Vip Cho Acc Tay Th�nh C�ng")
			return
		else 
			nillVar = 0
		end
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function QuaTanThu()
	if GetTask(Task_GiftCode) == 0 then
		if CalcFreeItemCellCount() >= 40 then
			AskClientForString("CHECKCODE","",1,999999999,"Nh�p GiftCode")
		else
			Talk(1,"","H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i R�i Nh�n Th��ng")
		end
	else
		Talk(1,"","<color=red>"..GetName().." �� Nh�n Th��ng R�i")
	end
end

function CHECKCODE(nVar)
	for i = 1,getn(GiftTanThu) do
		if nVar == GiftTanThu[i][1] then
			SetTask(Task_GiftCode,1) tbAwardTemplet:GiveAwardByList(tbQuaTang.tbAward[1],"Ph�n Th��ng GiftCode")
			Msg2SubWorld("<color=green>Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n GiftCode Th�nh C�ng")
			return
		end
		Talk(1,"","<color=red>"..GetName().." Nh�p Th�ng Tin Kh�ng Ch�nh X�c")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------