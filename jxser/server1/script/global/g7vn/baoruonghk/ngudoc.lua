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
dofile("script/global/g7vn/baoruonghk/ngudoc.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4290,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,29)
if a==1 or a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,56},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Kim Xµ Ph¸t ®¸i.")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,57},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung XÝch YÕt MËt trang.")
end
if a==5 or a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,58},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Thanh Ng« TriÒn yªu.")
end
if a==7 or a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,59},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Ng©n ThÒm Hé UyÓn.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,60},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung MÆc Thï NhuyÔn Lý.")
end
if a==10 or a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,61},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Tµ S¸t §éc NhËn.")
end
if a==12 or a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,62},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o U §éc ¸m Y.")
end
if a==14 or a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,63},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o §éc YÕt ChØ Hoµn.")
end
if a==16 or a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,64},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Hñ Cèt Hé uyÓn.")
end
if a==18 or a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,65},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Song Hoµn Xµ Hµi.")
end
if a==20 or a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,66},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc Ph¸ gi¸p ®Çu hoµn.")
end
if a==22 or a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,67},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc DiÖt L«i C¶nh Phï .")
end
if a==24 or a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,68},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc U ¶o ChØ Hoµn.")
end
if a==26 or a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,69},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc Xuyªn T©m §éc UyÓn.")
end
if a==28 or a==29 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,70},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa.")
end
--ConsumeEquiproomItem(1, 6,1, 4290,-1)
end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP Ngò §éc", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP Ngò §éc\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end



