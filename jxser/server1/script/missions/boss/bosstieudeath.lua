----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------


HONOURID = {3022, 3022}
SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 10000000	--Tæ §éi GiÕt NhËn §­îc Kinh NghiÖm
KILLBOSSNEAREXPAWARD = 5000000	--Ng­êi Xung Quanh §øng GÇn Boss NhËn §­îc Kinh NghiÖm

--PhÇn Th­ëng R¬i Ra Tõ Boss Hoµng Kim
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss TiÓu<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local tbVnNewItemDropAward = {
	[1] = {
	{szName="LÔ Bao BÝ KÝp",tbProp={6,1,4347,1,0,0},nCount=1,nRate=10},
					{szName="Thñy Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=20},	
					{szName="THBT",tbProp={4,353,1,1},nCount=1,nRate=20},	
					{szName="M· Bµi GhÐp Thó C­ìi",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=15},
			--		{szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1,nRate=10},	
					{szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,0,0},nCount=1,nRate=15},	
					{szName="QuÕ hoa Töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=15},	
					{szName="R­¬ng Kim Phong",tbProp={6,1,4535,1,0,0},nCount=1,nExpiredTime=14*24*60,nRate=5},	
			--			{szName="M¶nh HiÖp Cèt",tbProp={4,random(1629,1632),1,1},nCount=1,nRate=10},	
		--			{szName="M¶nh §Þnh Quèc",tbProp={4,random(1637,1641),1,1},nCount=1,nRate=10},	
	--{szName="Gi¶m Trõ §iÓm PK",tbProp={6,1,30353,1,0,0},nCount=1,nRate=10},	
					
				
	},
	[2] = {
{szName="§¹i Lùc Hoµn",tbProp={6,0,3,1,1},nCount=1},
	{szName="Phi Tèc Hoµn",tbProp={6,0,6,1,1},nCount=1},
	{szName="LÖnh Bµi Gäi Boss",tbProp={6,1,4489,1,0,0},nCount=8},
	{szName="R­¬ng Trang BÞ Thiªn Hoµng",tbProp={6,1,4536,1,0,0},nCount=random(2,3),nExpiredTime=7*24*60},
	},
	}
function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	local tenboss=GetNpcName(nNpcIndex)
 tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))

--local a1=random(1,3)
--if a1==2 then 
 	--SetTask(2501,GetTask(2501)+30) -- thªm 30 ®iÓm vinh dù	
--	tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=100},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· tiªu diÖt thµnh c«ng boss TiÓu Hoµng Kim")
local szNews="<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· tiªu diÖt thµnh c«ng boss <color=blue>"..tenboss.."<color>"
AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--	end
	--------------------------------------------PhÇn Th­ëng Tæ §éi GiÕt Boss--------------------------------------------------------------------------------------------------------------------
	local nTeamSize = GetTeamSize();
	local szName;

	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm Tæ §éi GiÕt BOSS hoµng kim"));
		end
	else
		szName = GetName();
		local tbnvboss = {
		--	{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=20},
		--	{szName="TiÒn §ång Khãa",tbProp={4,1495,1,1,0,0},nCount=20,nBindState = -2},
	}
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i BOSS hoµng kim"));
		--tbAwardTemplet:GiveAwardByList(tbnvboss, "PhÇn th­ëng Tiªu DiÖt Boss C¸ Nh©n")
	end
-----------------------------------------------------------------------------------------------PhÇn Th­ëng Ng­êi Xung Quanh §øng GÇn Boss--------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Lóc BOSS Hoµng Kim BÞ Tiªu DiÖt"));
	end
	
---------------------------------------------PhÇn Th­ëng Tæ §éi GiÕt Boss--------------------------------------------------------------------------------------------------------------------


end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
