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
	{1130,80,4,53,IDMapx[aa],IDMapy[aa],0,"�ng Gi� Noel",0,"\\script\\global\\longdenbanghoi\\ruongthanbi.lua","main", 0},   
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
	if ( GetFightState() == 0 ) then	--��ս��������
		Msg2Player("Tr�ng th�i phi chi�n ��u th� kh�ng th� Nh�u ���c.");
		return 0
	end
	return 1
end
local _Limit = function(nNpcIdx)
		local _, nTongID = GetTongName()
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i, ho�c kh�ng ph�i l� bang ch� kh�ng th� THAM GIA.");
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
									{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=100},	
									{szName="Lam Thu� Tinh",tbProp={4,238,1,1,0,0},nCount=1},	
									{szName="L�c Thu� Tinh",tbProp={4,239,1,1,0,0},nCount=1},	
									{szName="T� Thu� Tinh",tbProp={4,240,1,1,0,0},nCount=1},	
	--{szName="B�o r��ng th�n b�",tbProp={6,1,4447,1,1,0},nCount=5},
--{szName="Ng�a Phi�n V�",tbProp={0,10,7,10,0,0,0},nCount=1,nExpiredTime=3*24*60},
--{szName = "Nh�n Kim Quang",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "[Ho�n M�] Hi�p C�t T�nh � K�t",tbProp={0,6203},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "M�t n� V��ng Gi�", tbProp = {0,11,853,1,0,0},nCount=1, nExpiredTime = 1*24*60},
--{szName="C�y Th�ng",tbProp={6,1,3065,1,0,0},nCount=20},	
								--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
								---	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},

								--	{szName="Long ��m",tbProp={0,5941},nCount=1,nQuality=1},
											
												--	{szName = "T�i Qu� S� Ki�n",tbProp={6,1,4409,0},nCount=200},
								},
						[2] = {

								},
						}
	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"Ph�n th��ng �ng Gi� Noel")

	Msg2SubWorld("<color=green>B�m Nh�u <color=yellow>"..GetName().."<color> �� nh�u th�nh c�ng v�i <color=red>�ng Gi� Noel<color> v� nh�n ���c <color=cyan>100xu + 1 B� Thu� Tinh . .!")	
end


local _OnBreak = function()
	
	Msg2Player("B�n b� tr�ng ��n ho�c c� ��ng kh�ng th� nh�u v�i �ng Gi� Noel.")
	
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
	--Msg2SubWorld("<color=green>B�m Nh�u <color=yellow>"..GetName().."<color> �ang nh�u l�n c�ng �ng Gi� Noel th� b� ��nh �p t�i to� ��"..toadox.."/"..toadoy..".")	
	
	--����������
	tbProgressBar:OpenByConfig(28, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	Msg2SubWorld("<color=green>B�m Nh�u <color=yellow>"..GetName().."<color> �ang nh�u l�n c�ng �ng Gi� Noel to� �� "..toadox.."/"..toadoy..". c�c Tu� H�u mau truy t�m tung t�ch.")	
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>�ng Gi� Noel<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end