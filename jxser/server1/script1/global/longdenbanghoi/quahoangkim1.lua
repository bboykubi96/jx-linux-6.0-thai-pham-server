IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1117,80,4,355,1356,2755,0,"H¹t Hoµng Kim",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0},    
	{1117,80,4,355,1385,2751,0,"H¹t Hoµng Kim",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0},  
	
	{1110,80,4,355,1389,2758,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1389,2768,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1381,2772,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1378,2778,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1374,2787,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	
	{1110,80,4,355,1377,2749,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1370,2750,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1362,2746,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1360,2772,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1364,2785,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	
	{1110,80,4,355,1365,2759,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1376,2761,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1369,2772,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1396,2772,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1398,2756,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
			
	{1110,80,4,355,1390,2740,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1358,2732,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1348,2733,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1345,2744,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 
	{1110,80,4,355,1348,2760,0,"H¹t Huy Hoµng",0,"\\script\\global\\longdenbanghoi\\quahoangkim1.lua","main", 0}, 


			
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

function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end