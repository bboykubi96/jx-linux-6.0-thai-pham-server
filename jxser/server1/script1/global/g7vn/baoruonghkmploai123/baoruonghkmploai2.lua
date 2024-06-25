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
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai2.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,62)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma Tö Kim C«n.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,1},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long ChÝnh Hång T¨ng M·o.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,14},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng NhuyÔn B× Hé UyÓn.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,2},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long Kim Ti ChÝnh Hång Cµ Sa.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma Phæ §é T¨ng hµi.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,15},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng Giíi LuËt Ph¸p giíi.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,13},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng Hé ph¸p Yªu ®¸i.")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,26},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long L­îng Ng©n B¶o ®ao.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,18},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> H¸m Thiªn Uy Vò Thóc yªu ®¸i.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,23},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> KÕ NghiÖp B¹ch Hæ V« Song khÊu.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,29},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long TÊn Phong Hé UyÓn.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,81},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Phi Tinh §o¹t Hån.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,71},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn §¬n ChØ Phi §ao.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,79},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,85},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Tinh VÉn Phi Lý .")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,72},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn HuyÒn Y Thóc Gi¸p .")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,75},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn NguyÖt ¶nh Ngoa .")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,86},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n .")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,78},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang S©m La Thóc §¸i .")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,56},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Kim Xµ Ph¸t ®¸i .")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,61},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Tµ S¸t §éc NhËn .")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,57},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung XÝch YÕt MËt trang .")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,62},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o U §éc ¸m Y .")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,65},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Song Hoµn Xµ Hµi .")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,66},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc Ph¸ gi¸p ®Çu hoµn .")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian CÇm VËn Hé UyÓn .")
end
if a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,40},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Hång Truy NhuyÔn Th¸p hµi .")
end
if a==28 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,44},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi .")
end
if a==29 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian CÇm VËn Hé UyÓn .")
end
if a==30 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,33},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian PhÊt V©n Ti ®¸i .")
end
if a==31 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian CÇm VËn Hé UyÓn .")
end
if a==32 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,45},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn PhËt Quang ChØ Hoµn .")
end
if a==33 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,46},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Phông Nghi ®ao .")
end
if a==34 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,51},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao .")
end
if a==35 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,49},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng B¨ng Tung CÈm uyÓn.")
end
if a==36 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,53},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hång Linh Kim Ti ®¸i .")
end
if a==37 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,54},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hång L¨ng Ba .")
end
if a==38 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,50},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Thóy Ngäc ChØ Hoµn .")
end
if a==39 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,55},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Khiªn TÕ ChØ hoµn .")
end
if a==40 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,98},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þch Kh¸i TriÒn M·ng yªu ®¸i.")
end
if a==41 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,104},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t Cö Háa Liªu Thiªn uyÓn .")
end
if a==42 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,103},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t XÝch Ký Táa Yªu KhÊu .")
end
if a==43 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,115},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ S¬n H¶i Phi Hång Lý  .")
end
if a==44 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,106},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng Kim Gi¸p Kh«i  .")
end
if a==45 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,121},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong Ch©n Vò KiÕm .")
end
if a==46 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,124},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong Thóy Ngäc HuyÒn Hoµng Béi.")
end
if a==47 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,120},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi.")
end
if a==48 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,125},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong Thanh Tïng Ph¸p giíi.")
end
if a==49 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,122},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong Tam Thanh Phï .")
end
if a==50 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,131},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Hµn Tung B¨ng B¹ch quan .")
end
if a==51 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,134},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Linh Ngäc UÈn L«i .")
end
if a==52 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,129},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ .")
end
if a==53 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,130},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh Phong B¹o chØ hoµn .")
end
if a==54 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,135},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Cöu Thiªn DÉn L«i giíi.")
end
if a==55 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,138},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô ¶o Thóc T©m chØ hoµn.")
end
if a==56 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6278},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch Thanh Long TriÒn Thñ.")
end
if a==57 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6274},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« B¹ch Hång Qu¸n §¸i.")
end
if a==58 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6275},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« Long HuyÒn Hé UyÓn.")
end
if a==59 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6281},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch NhÊt Thiªn Chi Béi.")
end
if a==60 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6288},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan HiÖp T×nh Hoµng giíi.")
end
if a==61 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6291},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n L­u Tinh Hé Th©n Phï .")
end
if a==62 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6292},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n PhÊt Thiªn T©m §¸i.")
end

--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP lo¹i 2", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP lo¹i 2\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

