Include("\\script\\missions\\tianchimijing\\floor_templet\\game.lua")

YueGeDaoWorld = Game:new() 
YueGeDaoWorld.szMapType = " th∏ng ca Æ∂o " -- script viet hoa By http://tranhba.com  sˆa ÆÊi b∂n ÆÂ bµy t· 

YueGeDaoWorld.tbForbitItemType = -- script viet hoa By http://tranhba.com  n∆ng t∏i vi c m Æπo cÙ 
{ 
"TRANSFER","MATE" 
} 

YueGeDaoWorld.Player = { 
	szPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegedaoplayer.lua",
szClassName = "YueGeDaoPlayer", 
} 

YueGeDaoWorld.PlayerEnterTrapTime = { 
} 

YueGeDaoWorld.tbNpcTypeList = -- script viet hoa By http://tranhba.com npc Æ›ch loπi h◊nh 
{ 
[" th∏ng ca vÚ v÷ 1"] = 
{ 
nNpcId = 1847, 
szName = " th∏ng ca vÚ v÷ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegewuwei1.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegewuwei1.lua",
}, 
[" th∏ng ca vÚ v÷ 2"] = 
{ 
nNpcId = 1847, 
szName = " th∏ng ca vÚ v÷ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegewuwei2.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegewuwei2.lua",
}, 
[" th∏ng ca Æ∂o chÒ "] = 
{ 
nNpcId = 1849, 
szName = " th∏ng ca Æ∂o chÒ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegedaozhu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegedaozhu.lua",
}, 
[" c©y cËi "] = 
{ 
nNpcId = 1861, 
szName = " c©y cËi ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shumu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shumu.lua",
}, 
[" th∏ng ca ki’m thﬁ "] = 
{ 
nNpcId = 1848, 
szName = " th∏ng ca ki’m thﬁ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\yuegejianshi.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\yuegejianshi.lua",
}, 
[" bia Æ∏ "] = 
{ 
nNpcId = 1865, 
szName = " bia Æ∏ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shibei.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shibei.lua",
}, 
[" ki’m mÈ bia Æ∏ "] = 
{ 
nNpcId = 1860, 
szName = " ki’m mÈ bia Æ∏ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shibeiex.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\shibeiex.lua",
}, 
[" ki’m si "] = 
{ 
nNpcId = 1853, 
szName = " ki’m si ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\jianchi.txt",
}, 
[" ki’m cuÂng "] = 
{ 
nNpcId = 1854, 
szName = " ki’m cuÂng ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\jiankuang.txt",
}, 
[" th«n ch› kh´ng r‚ Æ›ch v‚ l©m nh©n s‹ "] = 
{ 
nNpcId = 1854, 
szName = " th«n ch› kh´ng r‚ Æ›ch v‚ l©m nh©n s‹ ", 
nLevel = 95, 
bNoRevive = 0, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\shenzhibuqingdewulingrenshi.txt",
}, 
[" th∏ng ca Æ∂o thuy“n phu "] = 
{ 
nNpcId = 240, 
szName = " th∏ng ca Æ∂o thuy“n phu ", 
nLevel = 95, 
		szPosPath = "\\settings\\maps\\yuegedao\\yuegedao\\chuanfu.txt",
		szScriptPath = "\\script\\missions\\yuegedao\\yuegedao\\chuanfu.lua",
}, 
} 
YueGeDaoWorld.tbTrapList = 
{ 
-- script viet hoa By http://tranhba.com  ["A1"] = 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  szPosPath = "",-- script viet hoa By http://tranhba.com Trap Æi”m Æ›ch t‰a ÆÈ v®n ki÷n 
-- script viet hoa By http://tranhba.com  szTrapFile = "",-- script viet hoa By http://tranhba.com Trap ch©n vËn Æ›ch Æ≠Íng tæt 
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
