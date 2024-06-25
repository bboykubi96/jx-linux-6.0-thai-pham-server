IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
IDMapx={1384,1416,1464,1398,1422,1438,1460,1473,1553,1584,1642,1697,1741,1776,1786,1723,1685,1786,1784,1733,1717,1647,1601,1624,1539,1482,1419,1440,1474,1461}
IDMapy={3307,3120,3056,3021,2940,2974,3009,2954,2976,3007,2923,2923,2963,2928,3064,3107,3138,3330,3350,3348,3410,3440,3442,3404,3421,3403,3441,3352,3219,3180}
local aa=random(1,30)
NPC_Clickdb = {
	{1130,80,4,53,IDMapx[aa],IDMapy[aa],0,"¤ng Giµ Noel",0,"\\script\\global\\longdenbanghoi\\ruongthanbi.lua","main", 0},   
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
                                                                                                              AddTimer(30*60* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end

function checkfightstate()
	if ( GetFightState() == 0 ) then	--·ÇÕ½¶·Çø½ûÓÃ
		Msg2Player("Tr¹ng th¸i phi chiÕn ®Êu th× kh«ng thÓ NhËu ®­îc.");
		return 0
	end
	return 1
end
local _Limit = function(nNpcIdx)
		local _, nTongID = GetTongName()
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ THAM GIA.");
		return
    end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end
	local nBuildFund = 5000




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
									{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=100},	
									{szName="Lam Thuû Tinh",tbProp={4,238,1,1,0,0},nCount=1},	
									{szName="Lôc Thuû Tinh",tbProp={4,239,1,1,0,0},nCount=1},	
									{szName="Tö Thuû Tinh",tbProp={4,240,1,1,0,0},nCount=1},	
	--{szName="B¶o r­êng thÇn bÝ",tbProp={6,1,4447,1,1,0},nCount=5},
--{szName="Ngùa Phiªn Vò",tbProp={0,10,7,10,0,0,0},nCount=1,nExpiredTime=3*24*60},
--{szName = "NhÉn Kim Quang",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "[Hoµn Mü] HiÖp Cèt T×nh ý KÕt",tbProp={0,6203},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "MÆt n¹ V­¬ng Gi¶", tbProp = {0,11,853,1,0,0},nCount=1, nExpiredTime = 1*24*60},
--{szName="C©y Th«ng",tbProp={6,1,3065,1,0,0},nCount=20},	
								--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
								---	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},

								--	{szName="Long §¶m",tbProp={0,5941},nCount=1,nQuality=1},
											
												--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,4409,0},nCount=200},
								},
						[2] = {

								},
						}
	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng ¤ng Giµ Noel")

	Msg2SubWorld("<color=green>Bîm NhËu <color=yellow>"..GetName().."<color> ®· nhËu thµnh c«ng víi <color=red>¤ng Giµ Noel<color> vµ nhËn ®­îc <color=cyan>100xu + 1 Bé Thuû Tinh . .!")	
end


local _OnBreak = function()
	
	Msg2Player("B¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ nhËu víi ¤ng Giµ Noel.")
	
end

function main()
dofile("/script/global/longdenbanghoi/ruongthanbi.lua")
if checkfightstate() ~= 1 then
		return 1
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)

	if %_Limit(nNpcIdx) == nil then
		return
	end
	local W,nx,ny = GetWorldPos();
	local toadox=floor(nx/8)
	local toadoy=floor(ny/16)
	--Msg2SubWorld("<color=green>Bîm NhËu <color=yellow>"..GetName().."<color> ®ang nhËu lÐn cïng ¤ng Giµ Noel th× bÞ ®¸nh óp t¹i to¹ ®é"..toadox.."/"..toadoy..".")	
	
	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(28, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	Msg2SubWorld("<color=green>Bîm NhËu <color=yellow>"..GetName().."<color> ®ang nhËu lÐn cïng ¤ng Giµ Noel to¹ ®é "..toadox.."/"..toadoy..". c¸c Tuý H÷u mau truy t×m tung tÝch.")	
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>¤ng Giµ Noel<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end