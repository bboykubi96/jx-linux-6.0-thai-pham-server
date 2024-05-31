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
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruongviemde/baoruongphuchi.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
end
if CalcEquiproomItemCount(6,1,4297,-1) < 1 then
	Talk(1, "", "CÇn 1 Ch×a Kho¸ Hoµng Kim trong hµnh trang!")
return 1;
end
local a = random(1,5)
if a==1 or a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,455},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Hi Hoan ¶nh KÞch.")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,456},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Hi V« L­îng TÞch Tµ Thñ.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,457},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Hi To¸i T©m.")
end
ConsumeEquiproomItem(1, 6,1, 4297,-1)
ConsumeEquiproomItem(1, 6,1, 4439,-1)
end





