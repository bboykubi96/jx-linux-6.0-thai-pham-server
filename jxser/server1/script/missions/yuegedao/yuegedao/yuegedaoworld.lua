Include("\\script\\missions\\tianchimijing\\floor_templet\\game.lua")

YueGeDaoWorld = Game:new() 
YueGeDaoWorld.szMapType = " th�ng ca ��o " -- script viet hoa By http://tranhba.com  s�a ��i b�n �� b�y t� 

YueGeDaoWorld.tbForbitItemType = -- script viet hoa By http://tranhba.com  n�ng t�i vi c�m ��o c� 
{ 
"TRANSFER","MATE" 
} 

YueGeDaoWorld.Player = { 
	szPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegedaoplayer.lua",
szClassName = "YueGeDaoPlayer", 
} 

YueGeDaoWorld.PlayerEnterTrapTime = { 
} 

YueGeDaoWorld.tbNpcTypeList = -- script viet hoa By http://tranhba.com npc ��ch lo�i h�nh 
{ 
[" th�ng ca v� v� 1"] = 
{ 
nNpcId = 1847, 
szName = " th�ng ca v� v� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegewuwei1.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegewuwei1.lua",
}, 
[" th�ng ca v� v� 2"] = 
{ 
nNpcId = 1847, 
szName = " th�ng ca v� v� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegewuwei2.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegewuwei2.lua",
}, 
[" th�ng ca ��o ch� "] = 
{ 
nNpcId = 1849, 
szName = " th�ng ca ��o ch� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegedaozhu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegedaozhu.lua",
}, 
[" c�y c�i "] = 
{ 
nNpcId = 1861, 
szName = " c�y c�i ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shumu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shumu.lua",
}, 
[" th�ng ca ki�m th� "] = 
{ 
nNpcId = 1848, 
szName = " th�ng ca ki�m th� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegejianshi.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegejianshi.lua",
}, 
[" bia �� "] = 
{ 
nNpcId = 1865, 
szName = " bia �� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shibei.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shibei.lua",
}, 
[" ki�m m� bia �� "] = 
{ 
nNpcId = 1860, 
szName = " ki�m m� bia �� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shibeiex.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shibeiex.lua",
}, 
[" ki�m si "] = 
{ 
nNpcId = 1853, 
szName = " ki�m si ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\jianchi.txt",
}, 
[" ki�m cu�ng "] = 
{ 
nNpcId = 1854, 
szName = " ki�m cu�ng ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\jiankuang.txt",
}, 
[" th�n ch� kh�ng r� ��ch v� l�m nh�n s� "] = 
{ 
nNpcId = 1854, 
szName = " th�n ch� kh�ng r� ��ch v� l�m nh�n s� ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shenzhibuqingdewulingrenshi.txt",
}, 
[" th�ng ca ��o thuy�n phu "] = 
{ 
nNpcId = 240, 
szName = " th�ng ca ��o thuy�n phu ", 
nLevel = 95, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\chuanfu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\chuanfu.lua",
}, 
} 
YueGeDaoWorld.tbTrapList = 
{ 
-- script viet hoa By http://tranhba.com  ["A1"] = 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  szPosPath = "",-- script viet hoa By http://tranhba.com Trap �i�m ��ch t�a �� v�n ki�n 
-- script viet hoa By http://tranhba.com  szTrapFile = "",-- script viet hoa By http://tranhba.com Trap ch�n v�n ��ch ���ng t�t 
-- script viet hoa By http://tranhba.com  }, 
} 

function YueGeDaoWorld:AddAllNpc() 
for key, value in self.tbNpcTypeList do 
self:AddANpc(key, value.szPosPath) 
end 
end 

function YueGeDaoWorld:Start() 
self:RegAll() 
self:AddAllTrap() 
self:AddAllNpc() 
end 

YueGeDaoWorld:AssociateMap(968) 
YueGeDaoWorld:SetForbitItem() 
