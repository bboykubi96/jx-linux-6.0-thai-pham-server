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
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end

function AskDeal()
Say("Ta cã b¸n c¸c lo¹i dông cô ®¸nh b¾t c¸. Kh¸ch quan nÕu bá lì kh«ng mua th× thËt v« cïng ®¸ng tiÕc!", 4, 
	"§æi C¸ lÊy phÇn th­ëng/doi_phan_thuong",
	"Kh«ng cÇn ®©u/OnCancelBuy_xxg");
end;



function doi_phan_thuong()
	local tbDialog = 
{ 
"<dec><npc>\n<color=yewllow>H«m nay ®i c©u c¸ då tróng mïa béi thu ®¹i hiÖp cÇn ®æi g× kh«ng?<color>", 
"§æi 4 con (Lãc-r«-trª-bãng) =  1 KNB/doicalayknb",
"§æi 3 con (L­¬ng-T«m-Cua) =  2 KNB/doicalayknb2",
"KÕt thóc ®èi tho¹i /0", 
} 
CreateTaskSay(tbDialog) 
end



function doicalayknb() 
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="C¸ Lãc",tbProp={6,1,4350},nCount = 1},
				{szName="C¸ R«",tbProp={6,1,4351},nCount = 1},
				{szName="C¸ Trª",tbProp={6,1,4352},nCount = 1},
				{szName="C¸ Bãng",tbProp={6,1,4353},nCount = 1},
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
				{szName="L­¬ng",tbProp={6,1,4354},nCount = 1},
				{szName="T«m",tbProp={6,1,4355},nCount = 1},
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