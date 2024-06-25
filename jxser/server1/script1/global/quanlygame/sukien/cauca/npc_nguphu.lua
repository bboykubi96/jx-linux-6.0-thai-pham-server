IncludeLib("SPREADER")
IncludeLib("SETTING")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
--dofile("script/global/quanlygame/sukien/cauca/npc_nguphu.lua")	
	AskDeal()
end
function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end

function AskDeal()
Say("Ta c� b�n c�c lo�i d�ng c� ��nh b�t c�. Kh�ch quan n�u b� l� kh�ng mua th� th�t v� c�ng ��ng ti�c!", 4, 
	"��i C� l�y ph�n th��ng/doi_phan_thuong",
	"Kh�ng c�n ��u/OnCancelBuy_xxg");
end;



function doi_phan_thuong()
	local tbDialog = 
{ 
"<dec><npc>\n<color=yewllow>H�m nay �i c�u c� d� tr�ng m�a b�i thu ��i hi�p c�n ��i g� kh�ng?<color>", 
"��i 4 con (L�c-r�-tr�-b�ng) =  1 KNB/doicalayknb",
"��i 3 con (L��ng-T�m-Cua) =  2 KNB/doicalayknb2",
"K�t th�c ��i tho�i /0", 
} 
CreateTaskSay(tbDialog) 
end



function doicalayknb() 
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="C� L�c",tbProp={6,1,4350},nCount = 1},
				{szName="C� R�",tbProp={6,1,4351},nCount = 1},
				{szName="C� Tr�",tbProp={6,1,4352},nCount = 1},
				{szName="C� B�ng",tbProp={6,1,4353},nCount = 1},
                                                                                                                                                                                                                                                        },
		tbProduct = {szName="KNB",tbProp={4,343,1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function doicalayknb2() 
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="L��ng",tbProp={6,1,4354},nCount = 1},
				{szName="T�m",tbProp={6,1,4355},nCount = 1},
				{szName="Cua",tbProp={6,1,4356},nCount = 1},
                                                                                                                                                                                                                                                        },
		tbProduct = {szName="KNB",tbProp={4,343,1,1},nCount = 2,},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end