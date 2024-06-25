IncludeLib("FILESYS");
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
--Include("\\script\\gm_tool\\libgm.lua")


function main()
	dofile("script/task/fresh/skillbook90.lua")
	local strFaction = GetFaction()
	if (tbSkillbook90[strFaction] == nil) then
		Say("C¸c h¹ vÉn ch­a gia nhËp m«n ph¸i!");
		return 1
	end
	nhanskill9x()
	return 1
end


tbSkillbook90 = 
{
	tianwang = 
	{
		{szName = "Thiªn V­¬ng Chïy Ph¸p. QuyÓn 1", nID = 37},
		{szName = "Thiªn V­¬ng Th­¬ng ph¸p. QuyÓn 2", nID = 38},
		{szName = "Thiªn V­¬ng §ao ph¸p.QuyÓn 3", nID = 39},
	},
	shaolin = 
	{
		{szName = "ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1", nID = 56},
		{szName = "ThiÕu L©m C«n ph¸p. QuyÓn 2", nID = 57},
		{szName = "ThiÕu L©m §ao ph¸p. QuyÓn 3", nID = 58},
	},
	tangmen = 
	{
		{szName = "H·m TÜnh thuËt.Lo¹n Hoµn KÝch", nID = 28},
		{szName = "Tô TiÔn thuËt. B¹o Vò Lª Hoa", nID = 27},
		{szName = "Phi §ao thuËt. NhiÕp Hån NguyÖt ¶nh", nID = 45},
		{szName = "Phi Tiªu thuËt. Cöu Cung Phi Tinh", nID = 46},
	},
	wudu = 
	{
		{szName = "Ngò §éc Ch­ëng Ph¸p. QuyÓn 1 ", nID = 47},
		{szName = "Ngò §éc §ao ph¸p. QuyÓn 2", nID = 48},
		{szName = "Ngò §éc NhiÕp T©m thuËt. QuyÓn 3", nID = 49},
	},
	emei = 
	{
		{szName = "DiÖt KiÕm MËt TÞch", nID = 42},
		{szName = "Nga Mi  PhËt Quang Ch­ëng MËt TÞch", nID =43},
		{szName = "Phæ §é MËt TÞch", nID = 59},
	},
	cuiyan = 
	{
		{szName = "Thóy Yªn §ao ph¸p", nID = 40},
		{szName = "Thóy Yªn Song ®ao", nID = 41},
	},
	gaibang = 
	{
		{szName = "C¸i Bang Ch­ëng Ph¸p", nID = 54},
		{szName = "C¸i Bang C«n ph¸p", nID = 55},
	},
	tianren = 
	{
		--{szName = "V©n Long KÝch. M©u ph¸p", nID = 35},
		{szName = "L­u Tinh. §ao ph¸p", nID = 36},
		{szName = "NhiÕp Hån. Chó thuËt ", nID = 53},
	},
	wudang = 
	{
		{szName = "Th¸i Cùc QuyÒn Phæ. QuyÓn 3", nID = 33},
		--{szName = "Th¸i Cùc KiÕm Phæ. QuyÓn 2", nID = 34},
	},
	kunlun = 
	{
		{szName = "Ngù Phong thuËt", nID = 50},
		{szName = "Ngù L«i thuËt", nID = 51},
		{szName = "Ngù T©m thuËt", nID = 52},
	}
};


function nhanskill9x()
dofile("script/task/fresh/addbook.lua")
	local strFaction = GetFaction()
	if (tbSkillbook90[strFaction] == nil) then
		Talk(1, "", "C¸c h¹ vÉn ch­a gia nhËp m«n ph¸i!");
		return 1;
	end
	if CalcFreeItemCellCount() < 3 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 4 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbOpp = {}
	local str = "<#> Ta cho phÐp ®¹i hiÖp chän 1 trong nh÷ng kü n¨ng 9x sau ";
	for i=1, getn(tbSkillbook90[strFaction]) do
		local strItemName = tbSkillbook90[strFaction][i].szName
		local nID =  tbSkillbook90[strFaction][i].nID
		tinsert(tbOpp,"Ta muèn nhËn".. strItemName.." /#GetSkillbook901(" .. nID .. ")");
	end
	tinsert(tbOpp, "<#>Tho¸t/OnCancel")
	if ( getn( tbOpp ) == 0 ) then
		Say(str, 0);
		return 1;
	end;
	Say( str, getn( tbOpp ), tbOpp )
end
function GetSkillbook901(nID)
	local nLevel=GetLevel()
	if CalcFreeItemCellCount() < 3 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 4 « trèng råi h·y nhËn.",0);
		return 1;
	end
	if nLevel<10 then
	Say("Ng­¬i muèn bÞ tÈu háa nhËp mµ ah? h·y ®i tu luyÖn tíi ®¼ng cÊp 10 ®·.", 0);
	else
	local nIndex=AddItem(6,1,nID,1,0,0)
	local strItemName = GetItemName(nIndex)
	SetItemBindState(nIndex, -2);
	--AddItem(6,1,2424,1,0,0)
	--SetTask(3002,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("B¹n nhËn ®­îc 1 cuèn "..strItemName)
	return 0;
	end
end