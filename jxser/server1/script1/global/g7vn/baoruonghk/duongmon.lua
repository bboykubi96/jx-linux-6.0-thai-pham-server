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
dofile("script/global/g7vn/baoruonghk/duongmon.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4289,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,36)
if a==1 or a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,71},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn §¬n ChØ Phi §ao .")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,72},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn HuyÒn Y Thóc Gi¸p.")
end
if a==5 or a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,73},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn T©m TiÔn Yªu KhÊu.")
end
if a==7 or a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,74},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,75},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn NguyÖt ¶nh Ngoa.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,76},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Hoa Vò M¹n Thiªn.")
end
if a==11 or a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,77},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï .")
end
if a==13 or a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,78},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang S©m La Thóc §¸i.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,79},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c.")
end
if a==16 or a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,80},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn.")
end
if a==18 or a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,81},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Phi Tinh §o¹t Hån.")
end
if a==20 or a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,82},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang KimTiÒn Liªn Hoµn Gi¸p.")
end
if a==22 or a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,83},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Hån Gi¶o Yªu Thóc.")
end
if a==24 or a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,84},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi.")
end
if a==26 or a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,85},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Tinh VÉn Phi Lý .")
end
if a==28 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,86},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n.")
end
if a==29 or a==30 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,87},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn.")
end
if a==31 or a==32 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,88},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch TÝch LÞch L«i Háa Giíi.")
end
if a==33 or a==34 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,89},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch KhÊu T©m tr¹c.")
end
if a==35 or a==36 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,90},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa.")
end
--ConsumeEquiproomItem(1, 6,1, 4289,-1)
end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP §­êng M«n", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP §­êng M«n\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end



