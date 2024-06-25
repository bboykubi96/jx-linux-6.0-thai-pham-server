IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {

{1111,80,4,37,1553,3442,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1556,3443,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1559,3447,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1561,3451,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1564,3458,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
		{1111,80,4,37,1547,3444,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1551,3448,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1556,3452,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1559,3459,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1557,3466,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
		{1111,80,4,37,1553,3457,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1546,3453,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1541,3456,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1545,3459,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1550,3463,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
		{1111,80,4,37,1551,3469,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1544,3466,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1538,3468,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1543,3473,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1548,3476,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
		{1111,80,4,37,1554,3477,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1554,3484,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1547,3482,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1540,3479,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1534,3476,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
		{1111,80,4,37,1533,3483,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1538,3485,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1543,3487,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1549,3490,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
	{1111,80,4,37,1551,3498,0,"Qu¶ Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahuyhoang2.lua","main", 0}, 
}
function add_npc_click()
	call_npc(NPC_Clickdb)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(5*60* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i chiÕn ®Êu míi nhÆt ®­îc.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if nPlayerLevel <40 or nPlayerLevel>=80 then

	Say("CÊp 40 ®Õn 79 míi cã thÓ nhÆt ®­îc qu¶ Huy Hoµng S¬")
	return
	else
		nGetSeedLevel=2
	end
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		--Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ THAM GIA.");
		--return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
	--	Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch më Qu¶ Hoµng Kim nµy.");
	--	return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	DelNpc(nNpcIdx)
	local tbAwardLDBH = {
						[1] = {		
						--			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=20},	
	--{szName="B¶o r­¬ng ThÇn BÝ",tbProp={6,1,4447,1,1,0},nCount=1},
	{szName="Qu¶ Huy Hoµng",tbProp={6,1,904,1,0,0},nCount=1,nExpiredTime=7*24*60},	
--{szName="Ngùa B«n Tiªu",tbProp={0,10,6,10,0,0,0},nCount=1,nExpiredTime=1*24*60},
--{szName = "NhÉn Kim Quang",tbProp={0,3771},nCount=1,nExpiredTime=2*24*60},
								--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
								---	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},

									
											
												--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,4409,0},nCount=200},
								},
						[2] = {
								--	{szName="Phi V©n Th¹ch",tbProp={4,1620,1,1},nCount=1,nRate=20},
								--	{szName="An Bang",tbProp={0,random(210,213)},nCount=1,nQuality=1,nExpiredTime=60*24,nRate=30},
								},
						}

	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng Qu¶ Huy Hoµng")
local _, nTongID = GetTongName()
				Msg2Tong(nTongID,"§¹i hiÖp "..GetName().." ®· nhÆt ®­îc qu¶ Huy Hoµng S¬")
--Msg2SubWorld("<color=green>§¹i hiÖp<color=red>"..GetName().."<color> ®· më thµnh c«ng Qu¶ Hoµng Kim vµ nhËn ®­îc phÇn th­ëng,,,!")	
end


local _OnBreak = function()
	Msg2Player("b¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ më Qu¶ Huy Hoµng")
 --  Msg2SubWorld("<color=green>§¹i hiÖp<color=red>"..GetName().."<color> ®· bÞ ®¸nh träng th­¬ng, kh«ng thÓ tiÕp tôc më Qu¶ Hoµng Kim.!")	
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	SetFightState(1)
	tbProgressBar:OpenByConfig(random(29,34), %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Qu¶ Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end