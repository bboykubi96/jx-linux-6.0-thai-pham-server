
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
function main()
dofile("script/global/g7vn/item/huyetchienlebao.lua")
if GetLevel()<80 then
local nAddLevel =81 - GetLevel()
		ST_LevelUp(nAddLevel)
				local tbAward= {
	{szName="D· TÈu CHi LÖnh",tbProp={6,1,4407,1,0,0},nCount=20},	
	{szName="R­¬ng §å Xanh",tbProp={6,1,4476,1,0,0},nCount=20},	
	{szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=5,nBindState=-2},	
	{szName="QuÕ Hoa Töu",tbProp={6,1,125,1,0,0},nCount=5,nBindState=-2},
	{szName="Tiªn Th¶o Lé §Æt BiÖt",tbProp={6,1,1181,1,0,0},nCount=2,nBindState=-2},	
	
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")	
PlayerFunLib:AddSkillState(1679,20,3,18*60*60*24*7,1)
else
Say("ChØ sö dông cho nh©n vËt d­íi cÊp 80.")
return 1
end
end

