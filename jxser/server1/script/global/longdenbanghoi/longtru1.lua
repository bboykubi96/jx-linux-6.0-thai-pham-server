IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
IncludeLib("TIMER")
Include("\\script\\global\\g7vn\\hotrotinhnang.lua")
NPC_Clickdb = {
	{1866,80,4,333,1498,2987,0,"Long Trô Kinh NghiÖm",0,"\\script\\global\\longdenbanghoi\\longtru1.lua","main", 0},   
}
function add_npc_click12()
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
				SetNpcTimer(nNpcIdx, 18);
                AddTimer(60* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end



function OnTimer(nNpcIndex,nTimeOut)
	local tbRoundPlayer, nCount = GetAroundPlayerList( 20);
Msg2SubWorld("1")
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 100000, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Long Tru"));
	end
	SetNpcTimer(nNpcIdx, 18);
end
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Lång §Ìn Bang Héi<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end