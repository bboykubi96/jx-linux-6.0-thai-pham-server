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
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
function main()
dofile("script/global/g7vn/baoruonghk/tieudao.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4538,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,17)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6284},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan Thiªn Ngäc ChØ CÇm.")
end
if a==2 or a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6285},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan L¹c B×nh Sa Y.")
end
if a==4 or a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6286},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan Tïy Khóc Giíi ChØ.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6287},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan BÝch Hoa T×nh Ngäc Béi.")
end
if a==7 or a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6288},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan HiÖp T×nh Hoµng giíi.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6290},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n Phong Vò KiÕm.")
end
if a==10 or a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6291},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n L­u Tinh Hé Th©n Phï .")
end
if a==12 or a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6292},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n PhÊt Thiªn T©m §¸i.")
end
if a==14 or a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6293},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n S­¬ng TuyÕt Hoµng Béi.")
end
if a==16 or a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6294},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n ChÝch Tr× Th­îng giíi.")
end
--ConsumeEquiproomItem(1, 6,1, 4538,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP Tiªu Dao", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP Tiªu Dao\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




