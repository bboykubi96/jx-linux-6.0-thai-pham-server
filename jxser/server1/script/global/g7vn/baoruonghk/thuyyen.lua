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
dofile("script/global/g7vn/baoruonghk/thuyyen.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4292,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,17)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,46},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Phông Nghi ®ao.")
end
if a==2 or a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,47},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng TuÖ T©m Khinh Sa Y.")
end
if a==4 or a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,48},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,49},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng B¨ng Tung CÈm uyÓn.")
end
if a==7 or a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,50},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Thóy Ngäc ChØ Hoµn")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,51},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao.")
end
if a==10 or a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,52},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hoµn Ch©u Vò Liªn.")
end
if a==12 or a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,53},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hång Linh Kim Ti ®¸i.")
end
if a==14 or a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,54},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hång L¨ng Ba.")
end
if a==16 or a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,55},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Khiªn TÕ ChØ hoµn.")
end
--ConsumeEquiproomItem(1, 6,1, 4292,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP Thuý Yªn", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP Thuý Yªn\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




