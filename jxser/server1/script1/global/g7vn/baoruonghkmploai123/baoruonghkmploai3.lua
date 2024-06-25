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
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai3.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h¶? Chim Cót!!!!")
--		return 1;
--end
local a = random(1,83)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,4},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long PhËt Ph¸p HuyÒn Béi.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,9},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma PhËt T©m NhuyÔn KhÊu.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,12},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tø Kh«ng Tö Kim Cµ Sa.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,3},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long HuyÒn Ti Ph¸t ®¸i.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Méng Long §¹t Ma T¨ng hµi.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,7},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma HuyÒn Hoµng Cµ Sa.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,8},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phôc Ma ¤ Kim NhuyÔn §iÒu.")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,19},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,24},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> KÕ NghiÖp HáaV©n Kú L©n Thñ .")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,30},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long TuyÖt MÖnh ChØ hoµn .")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,17},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p .")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,20},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> H¸m Thiªn Thõa Long ChiÕn Ngoa .")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,22},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i .")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,25},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa .")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,27},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p .")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,28},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ngù Long Thiªn M«n Thóc Yªu hoµn .")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,80},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn .")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,84},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi .")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,74},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi .")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,88},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch TÝch LÞch L«i Háa Giíi .")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,77},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï  .")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,82},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Kim TiÒn Liªn Hoµn Gi¸p  .")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,83},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S©m Hoang Hån Gi¶o Yªu Thóc  .")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,73},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> B¨ng Hµn T©m TiÔn Yªu KhÊu .")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,89},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch KhÊu T©m tr¹c .")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,87},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn.")
end
if a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,90},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa.")
end
if a==28 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,59},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Ng©n ThÒm Hé UyÓn.")
end
if a==29 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,63},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o §éc YÕt ChØ Hoµn.")
end
if a==30 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,68},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc U ¶o ChØ Hoµn .")
end
if a==31 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,58},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> U Lung Thanh Ng« TriÒn yªu .")
end
if a==32 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,64},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Minh ¶o Hñ Cèt Hé uyÓn .")
end
if a==33 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,67},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc DiÖt L«i C¶nh Phï .")
end
if a==34 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,69},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Chó Ph­îc Xuyªn T©m §éc UyÓn .")
end
if a==35 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,70},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CChó Ph­îc B¨ng Háa Thùc Cèt Ngoa .")
end
if a==36 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,35},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian B¹ch Ngäc Bµn ChØ  .")
end
if a==37 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,38},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma B¨ng Tinh ChØ Hoµn .")
end
if a==38 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,35},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian B¹ch Ngäc Bµn ChØ  .")
end
if a==39 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,32},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Gian Thanh Phong Truy Y .")
end
if a==40 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,36},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Ma Ni qu¸n .")
end
if a==41 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,37},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« Ma Tö Kh©m Cµ Sa .")
end
if a==42 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,41},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Ngäc N÷ Tè T©m qu¸n .")
end
if a==43 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,42},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Thanh T©m H­íng ThiÖn Ch©u .")
end
if a==44 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,41},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> V« TrÇn Ngäc N÷ Tè T©m qu¸n .")
end
if a==45 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,50},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Thóy Ngäc ChØ Hoµn .")
end
if a==46 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,55},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Khiªn TÕ ChØ hoµn .")
end
if a==47 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,49},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng TuÖ T©m Khinh Sa Y .")
end
if a==48 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,48},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i .")
end
if a==49 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,53},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> BÝch H¶i Hoµn Ch©u Vò Liªn .")
end
if a==50 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,95},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu KiÕn Long Ban ChØ  .")
end
if a==51 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,92},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu Gi¸ng Long C¸i Y  .")
end
if a==52 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,100},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þch Kh¸i Th¶o Gian Th¹ch giíi  .")
end
if a==53 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,93},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §ång Cõu TiÒm Long Yªu §¸i .")
end
if a==54 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,97},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þch Kh¸i Cöu §¹i C¸i Y .")
end
if a==55 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,99},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §Þch Kh¸i CÈu TÝch B× Hé uyÓn .")
end
if a==56 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,105},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t V©n Long Thæ Ch©u giíi .")
end
if a==57 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,113},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ NghiÖp Háa U Minh Giíi .")
end
if a==58 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,109},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng HuyÕt Y Thó Tr¹c .")
end
if a==59 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,102},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p .")
end
if a==60 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,114},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi .")
end
if a==61 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,112},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma ThÞ LÖ Ma PhÖ T©m Liªn .")
end
if a==62 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,108},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng Khª Cèc Thóc yªu ®¸i .")
end
if a==63 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,110},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng §¨ng §¹p Ngoa .")
end
if a==64 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,107},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn .")
end
if a==65 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,123},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> CËp Phong HuyÒn Ti Tam §o¹n cÈm.")
end
if a==66 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,118},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c Né L«i Giíi.")
end
if a==67 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,117},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L¨ng Nh¹c V« Ng· ®¹o bµo .")
end
if a==68 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,132},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Thiªn §Þa Hé phï  .")
end
if a==69 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,133},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> L«i Khung Phong L«i Thanh CÈm ®¸i.")
end
if a==70 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,127},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo.")
end
if a==71 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,128},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> S­¬ng Tinh Thanh Phong Lò ®¸i.")
end
if a==72 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,136},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô ¶o B¾c Minh §¹o qu¸n.")
end
if a==73 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,137},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô ¶o Ki B¸n phï chó  .")
end
if a==74 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,139},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi .")
end
if a==75 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,140},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Vô ¶o Tung Phong TuyÕt ¶nh ngoa.")
end
if a==76 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6273},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« Tæng QuyÕt Vò Gi¸p.")
end
if a==77 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6276},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> §éc C« NhuyÔn Long Ph¸t Giíi.")
end
if a==78 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6279},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch Long NhiÔu Th©n Phï.")
end
if a==79 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6280},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch Ma V©n Kim Ti ®¸i.")
end
if a==80 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6282},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Ph¸ch Th¹ch ThÇn Quang ChØ Hoµn.")
end
if a==81 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6285},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan L¹c B×nh Sa Y.")
end
if a==82 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6286},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> D­¬ng Quan Tïy Khóc Giíi ChØ.")
end
if a==83 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6294},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red> Phï V©n ChÝch Tr× Th­îng giíi.")
end


--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ b¶o r­¬ng HKMP lo¹i 3", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP lo¹i 3\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

