
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
dofile("script/global/g7vn/item/hopquavang.lua")
if CalcFreeItemCellCount() < 10 then
Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
return 1
end
local ranchung=random(1,6)
if ranchung==1 then
	local ranvk=random(1,3)
		if ranvk<=2 then
			AddItem(0, 0,random(0,5), random(1,10),random(0,4), 300, 10) 
		else
			AddItem( 0, 1,random(0,2), random(1,10),random(0,4), 300, 10) 
		end
elseif ranchung==2 then
			AddItem( 0, 2,random(0,13), random(1,10),random(0,4), 300, 10) 
elseif ranchung==3 then
			AddItem( 0, 7,random(0,13), random(1,10),random(0,4), 300, 10) 
elseif ranchung==4 then
			AddItem( 0, 8,random(0,1), random(1,10),random(0,4), 300, 10) 
elseif ranchung==5 then
			AddItem( 0, 6,random(0,1), random(1,10),random(0,4), 300, 10) 
elseif ranchung==6 then
			AddItem( 0, 5,random(0,3), random(1,10),random(0,4), 300, 10) 
end

end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o  r­¬ng §å phæ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end
