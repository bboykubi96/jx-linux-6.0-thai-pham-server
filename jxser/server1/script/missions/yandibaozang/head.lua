IncludeLib("RELAYLADDER")
IncludeLib("FILESYS")
IncludeLib("TITLE");
IncludeLib("SETTING");
Include("\\script\\lib\\objbuffer_head.lua")

-------------------------------------------------------------------------------------------------------------------------------------

YDBZ_MISSION_MATCH			 = 50
YDBZ_TIMER_MATCH			 = 87
YDBZ_TIMER_FIGHTSTATE		 = 89
YDBZ_NPC_BOSS_COUNT			 = 1
YDBZ_VARV_STATE			 = 4
YDBZ_SIGNUP_WORLD			 = 5
YDBZ_SIGNUP_POSX			 = 6
YDBZ_SIGNUP_POSY			 = 7
YDBZ_NPC_COUNT			 = {8,9,10}
YDBZ_NPC_BOSS_COUNT			 = 11
YDBZ_NPC_WAY				 = {12,13,14}
YDBZ_STATE_SIGN			 = 15
YDBZ_TEAM_COUNT			 = 16
YDBZ_TEAM_SUM				 = 17

YDBZ_NPC_TYPE = {
	{20,21,22,23,24,25,26,27,28,29},			
	{30,31,32,33,34,35,36,37,38,39},	
	{40,41,42,43,44,45,46,47,48,49},	
}

YDBZ_TEAM_NAME			 = {1,2,3}
YDBZ_TEAMS_TASKID			 = 1851		--Diem Pk Viem De
YDBZ_PLAY_LIMIT_COUNT		 = 1852
YDBZ_ITEM_YANDILING			 = 1853
YDBZ_MISSIOM_PLAYER_KEY		 = 1854
YDBZ_ITEM_YANDILING_SUM		 = 1855
YDBZ_TEAMS_TICHLUY			 = 1856		--Tich Luy Doi Thuong
YDBZ_LIMIT_SIGNUP			 = 5			--Th�i Gian B�o Danh 5 Ph�t
YDBZ_LIMIT_FINISH			 = 30*60		--K�t Th�c B�o Danh Ph�t Th� 30
YDBZ_LIMIT_BOARDTIME			 = 5*60
YDBZ_TIME_WAIT_STATE1		 = 10
YDBZ_TIME_WAIT_STATE3		 = 30
YDBZ_LIMIT_SETFIGHTSTATE		 = 3
YDBZ_LIMIT_TEAMS_COUNT		 = 25			--S� L��ng T� ��i Tham Gia Vi�m �� M�c ��nh 15
YDBZ_LIMIT_PLAYER_LEVEL		 = 150			-- Y�u C�u C�p 150
YDBZ_LIMIT_WEEK_COUNT		 = 42			--1 Tu�n �i 42 L�n
YDBZ_LIMIT_DAY_COUNT			 = 8			--1 Ng�y �i 6 L�n
YDBZ_PAIHANG_ID			 = 10252
YDBZ_LIMIT_ITEM			 = {{6,1,1604},1,"Anh H�ng Thi�p"}
YDBZ_LIMIT_DOUBEL_ITEM		 = {{6,1,1617},1,"Vi�m �� L�nh"}
YDBZ_AWARD_EXP			 = 5000000	--�i Qua 1 �i Nh�n ���c 500 Tri�u Kinh Nghi�m
YDBZ_Faninl_AWARD_EXP		 = 10000000	--Gi�t 3 Boss Trong �i 10 Nh�n ���c 1 T� Kinh Nghi�m
YDBZ_KILLPLAYER_EXP			 = 3000000	--Gi�t 1 M�ng Ng��i Nh�n ���c 300 Tri�u Kinh Nghi�m
YDBZ_KILLLASTBOSS_EXP		 = 7000000	--Ti�u Di�t 1 Boss Nh�n ���c 700 Tri�u Kinh Nghi�m
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
YDBZ_BOAT_POS = {
	[1]={60032,104832},
	[2]={59744,123296},
	[3]={52960,121952},
}

YDBZ_FIGHTING_RELIFT = {
	[1]= 
	{
		{57408,112000},
		{57504,112160},
		{57664,112160},
	},
	[2]=
	{
		{58016,114464},
		{57888,114688},
		{58048,114784},
	},
	[3]=
	{
		{56288,112544},
		{56160,112736},
		{56320,112736},
	},
}

YDBZ_MAP_MAP = {
	853,
	854,
	855,
	856,
	857,
	858,
	859,
	860,
	861,
	862,
};

--------------------------T� ��i Gi�t ���c Boss Cu�i Nh�n ���c Ph�n Th��ng-------------------------------------------------
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng cao th� <color=yellow>%s<color> thu�c t� ��i ti�u di�t [L��ng Mi Nhi] �� nh�n ���c ph�n th��ng [%s] " ,GetName(),GetItemName(nItemIndex))
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Tong(nTongId, msg)
	end
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	Msg2Team(msg)
end

YDBZ_ZUANYONG_ITEM =	
{
	[1] = {"H�nh nh�n",6,1,1605},
	[2] = {"Vi�m �� tr��ng m�nh ho�n",	6,	0,	1607}, 
	[3] = {"Vi�m �� gia b�o ho�n",	6,	0,	1608}, 
	[4] = {"Vi�m �� ��i l�c ho�n",	6,	0,	1609}, 
	[5] = {"Vi�m �� cao thi�m ho�n",	6,	0,	1610}, 
	[6] = {"Vi�m �� cao trung ho�n",	6,	0,	1611}, 
	[7] = {"Vi�m �� phi t�c ho�n",	6,	0,	1612}, 
	[8] = {"Vi�m �� b�ng ph�ng ho�n",	6,	0,	1613}, 
	[9] = {"Vi�m �� l�i ph�ng ho�n",	6,	0,	1614}, 
	[10] = {"Vi�m �� h�a ph�ng ho�n",	6,	0,	1615}, 
	[11] = {"Vi�m �� ��c ph�ng ho�n",	6,	0,	1616}, 
}

YDBZ_tbaward_item = {
	[1] = {
	},

	[2] = {
		{50,1,{6,1,1605,1,0,0},1,"H�nh nh�n",1},
		{100,15,{1, 2, 0, 5, 0, 0},0,"Ng� Hoa Ng�c L� Ho�n",0},
	},
	[3] = {
		{100,1,{6,1,1605,1,0,0},1,"H�nh nh�n",1},
		{100,30,{1, 2, 0, 5, 0, 0},0,"Ng� Hoa Ng�c L� Ho�n",0},
	},
}

YDBZ_tbaward_item_ex = {
	--[1] = {szName="Vi�m �� B� B�o",tbProp={6,1,2805,1,0,0},nCount=1,nBindState=-2,},-- phan qua Viem De
}

YDBZ_NPC_ATTRIDX_PROCEED		 = 1
YDBZ_NPC_ATTRIDX_ID			 = 2
YDBZ_NPC_ATTRIDX_NAME		 = 3
YDBZ_NPC_ATTRIDX_LEVEL		 = 4
YDBZ_NPC_ATTRIDX_SERIES		 = 5
YDBZ_NPC_ATTRIDX_ISBOSS		 = 6
YDBZ_NPC_ATTRIDX_COUNT		 = 7
YDBZ_NPC_ATTRIDX_POSITION		 = 8

YDBZ_SCRIPT_NPC_DEATH = "\\script\\missions\\yandibaozang\\npc_death.lua"
YDBZ_SCRIPT_PLAYER_DEATH = "\\script\\missions\\yandibaozang\\player_death.lua"

YDBZ_map_series = {
	0,	-- Kim
	1,	-- Moc
	2,	-- Thuy
	3,	-- Hoa
	4,	-- Tho
};


YDBZ_mapfile_trap = {
	{"\\settings\\maps\\yandibaozang\\trap\\a","\\script\\missions\\yandibaozang\\trap\\a",10,"\\settings\\maps\\yandibaozang\\trap\\clear\\a"},
	{"\\settings\\maps\\yandibaozang\\trap\\b","\\script\\missions\\yandibaozang\\trap\\b",10,"\\settings\\maps\\yandibaozang\\trap\\clear\\b"},
	{"\\settings\\maps\\yandibaozang\\trap\\c","\\script\\missions\\yandibaozang\\trap\\c",10,"\\settings\\maps\\yandibaozang\\trap\\clear\\c"},
}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------