IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4996
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------
function main()
--dofile("script/global/g7vn/event83/bohoahong.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= 20190307 and nDate <= 20190330 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <10000 then
			if CalcFreeItemCellCount() >= 1 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng Hoa Ph��ng Tr�ng")
				CastSkill(691,1,0,180)
			else
				Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 1 � tr�ng r�i h�y s� d�ng",0) return 1
			end
		else
			Say(""..myplayersex().." �� S� D�ng T�i �a 10000 Hoa Ph��ng Tr�ng�\nTrong Su�t Th�i Gian Ho�t ��ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� D�ng S� T� ��ng M�t �i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
{szName="�� ph� Ho�ng Kim",tbProp={6,1,random(239,378),1,0,0},nCount=1,nRate=33},
}
------------------------------------------------------------------------------------------------------------------------------------------------