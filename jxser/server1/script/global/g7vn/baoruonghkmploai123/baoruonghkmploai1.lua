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

Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai1.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,20)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,11},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng Gi¸ng Ma Giíi ®ao.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,16},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,21},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> KÕ NghiÖp B«n L«i Toµn Long th­¬ng.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,76},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Hoa Vò M¹n Thiªn.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,60},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung MÆc Thï NhuyÔn Lý .")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,31},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian û Thiªn KiÕm.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,39},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma TÈy T­îng Ngäc KhÊu .")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,94},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu Kh¸ng Long Hé UyÓn.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,96},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þch Kh¸i Lôc Ngäc Tr­îng.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,91},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu Phi Long §Çu hoµn.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,101},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t Quû Cèc U Minh Th­¬ng.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,111},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ LiÖt DiÖm Qu¸n MiÖn.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,116},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c Th¸i Cùc KiÕm.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,119},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,126},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh Thiªn Niªn Hµn ThiÕt.")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6272},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« ThÇn Long Cöu KiÕm.")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6287},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan BÝch Hoa T×nh Ngäc Béi.")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6284},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan Thiªn Ngäc ChØ CÇm.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6290},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n Phong Vò KiÕm.")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6293},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n S­¬ng TuyÕt Hoµng Béi.")
end

--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP lo¹i 1", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP lo¹i 1\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

