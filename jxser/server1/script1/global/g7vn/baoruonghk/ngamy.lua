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
dofile("script/global/g7vn/baoruonghk/ngamy.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4291,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,25)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,31},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian û Thiªn KiÕm.")
end
if a==2 or a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,32},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian Thanh Phong Truy Y.")
end
if a==4 or a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,33},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian PhÊt V©n Ti ®¸i.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian CÇm VËn Hé UyÓn .")
end
if a==7 or a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,35},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian B¹ch Ngäc Bµn ChØ .")
end
if a==9 or a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,36},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Ma Ni qu¸n.")
end
if a==11 or a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,37},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Tö Kh©m Cµ Sa.")
end
if a==13 or a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,38},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma B¨ng Tinh ChØ Hoµn.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,39},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma TÈy T­îng Ngäc KhÊu .")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,40},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Hång Truy NhuyÔn Th¸p hµi.")
end
if a==17 or a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,41},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Ngäc N÷ Tè T©m qu¸n.")
end
if a==19 or a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,42},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Thanh T©m H­íng ThiÖn Ch©u.")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,43},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Tõ Bi Ngäc Ban ChØ .")
end
if a==22 or a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,44},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi.")
end
if a==24 or a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,45},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn PhËt Quang ChØ Hoµn.")
end
--ConsumeEquiproomItem(1, 6,1, 4291,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP Nga My", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP Nga My\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




