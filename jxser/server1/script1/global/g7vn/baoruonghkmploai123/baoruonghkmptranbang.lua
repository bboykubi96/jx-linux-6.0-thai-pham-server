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
dofile("script/global/g7vn/baoruonghkloai123/baoruonghkmptranbang.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4538,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,26)
if a==1 then																						--nExpiredTime=60*24*7 (thêi h¹n gian 7)
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,686},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long Tö Kim B¸t Nh· Giíi.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,687},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma V« L­îng Kim Cang UyÓn.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,688},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng §¹t Ma T¨ng Hµi.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,689},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long TÊn Phong Ph¸t C¬.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,690},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian Thanh Phong NhuyÔn KÞch.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,691},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« YÓm Thu Thñy L­u Quang §¸i.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,692},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn TÞnh ¶nh L­u T« .")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,693},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,694},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,695},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh Hoan Song Hoµn Xµ KhÊu.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,696},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Phäc Trïng Cèt Ngäc Béi.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,697},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,698},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch Phong Hµn Thóc Yªu.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,699},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu Ngù Long Ngäc Béi.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,700},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t Cö Háa Liªu Thiªn Hoµn.")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,701},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng Dung Kim §o¹n NhËt Giíi.")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,702},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ LÖ Ma PhÖ T©m §¸i.")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,703},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c V« Ng· Thóc §¸i.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,704},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn.")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,705},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu.")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,706},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Linh Ngäc Èn L«i UyÓn.")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,707},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô Hoan Th¸i Uyªn Ch©n Vò Liªn.")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6277},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« Long Hoµn Thiªn Lý Ngäa.")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6283},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch B¹ch Hång Qu¸n.")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6289},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan Tiªu CÇm Hoa Thóc §¸i.")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6295},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n Di Cung HuyÒn Ngäc UyÓn.")
end

--ConsumeEquiproomItem(1, 6,1, 4373,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o r­¬ng TrÊn Bang Chi B¶o ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng TrÊn Bang Chi B¶o \n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




