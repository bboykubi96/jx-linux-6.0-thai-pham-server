
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function MoRuongOk()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
local msg = format("<color=white>§¹ti hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më R­¬ng D· TÈu ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
		logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ [%s ]    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetItemName(nItemIndex)))

end
local s = random(1,81)

if s==1 then
										tbAwardTemplet:GiveAwardByList({{szName="Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={0,3},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;

if s==2 then
										tbAwardTemplet:GiveAwardByList({{szName="Méng Long §¹t Ma T¨ng hµi",tbProp={0,5},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;
if s==3 then
										tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;
if s==4 then
										tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma ¤ Kim NhuyÔn §iÒu",tbProp={0,8},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==5 then
										tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma PhËt T©m NhuyÔn KhÊu",tbProp={0,9},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==6 then
										tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Tö Kim Cµ Sa",tbProp={0,12},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==7 then
										tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==8 then
										tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Giíi LuËt Ph¸p giíi",tbProp={0,15},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==9 then
										tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={0,17},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==10 then
										tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==11 then
										tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",tbProp={0,19},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==12 then
										tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Thõa Long ChiÕn Ngoa",tbProp={0,20},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==13 then
										tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==14 then
										tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={0,23},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==15 then
										tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HáaV©n Kú L©n Thñ",tbProp={0,24},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==16 then
										tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==17 then
										tbAwardTemplet:GiveAwardByList({{szName="Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={0,27},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==18 then
										tbAwardTemplet:GiveAwardByList({{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==19 then
										tbAwardTemplet:GiveAwardByList({{szName="Ngù Long TuyÖt MÖnh ChØ hoµn",tbProp={0,30},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==20 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

if s==21 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==22 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Gian B¹ch Ngäc Bµn ChØ",tbProp={0,35},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==23 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Ma Ma Ni qu¸n",tbProp={0,36},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==24 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==25 then
										tbAwardTemplet:GiveAwardByList({{szName="V« Ma B¨ng Tinh ChØ Hoµn",tbProp={0,38},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

if s==26 then
										tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Ngäc N÷ Tè T©m qu¸n",tbProp={0,41},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==27 then
										tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Tõ Bi Ngäc Ban ChØ ",tbProp={0,43},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==28 then
										tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn PhËt Quang ChØ Hoµn",tbProp={0,45},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==29 then
										tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng TuÖ T©m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==30 then
										tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==31 then
										tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Thóy Ngäc ChØ Hoµn",tbProp={0,50},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==32 then
										tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={0,52},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==33 then
										tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,54},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==34 then
										tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Khiªn TÕ ChØ hoµn",tbProp={0,55},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==35 then
										tbAwardTemplet:GiveAwardByList({{szName="U Lung Thanh Ng« TriÒn yªu",tbProp={0,58},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==36 then
										tbAwardTemplet:GiveAwardByList({{szName="U Lung Ng©n ThÒm Hé UyÓn",tbProp={0,59},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==37 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o §éc YÕt ChØ Hoµn",tbProp={0,63},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==38 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Hñ Cèt Hé uyÓn",tbProp={0,64},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==39 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==40 then
										tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={0,66},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==41 then
										tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc U ¶o ChØ Hoµn",tbProp={0,68},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==42 then
										tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,70},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==43 then
										tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==44 then
										tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==45 then
										tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={0,77},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==46 then
										tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang S©m La Thóc §¸i",tbProp={0,78},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==47 then
										tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==48 then
										tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==49 then
										tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",tbProp={0,84},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==50 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",tbProp={0,88},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==51 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch KhÊu T©m tr¹c",tbProp={0,89},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==52 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,90},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==53 then
										tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==54 then
										tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==55 then
										tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ",tbProp={0,95},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==56 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={0,97},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==57 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,99},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==58 then
										tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Th¶o Gian Th¹ch giíi",tbProp={0,100},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==59 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==60 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Cö Háa Liªu Thiªn uyÓn",tbProp={0,104},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==61 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t V©n Long Thæ Ch©u giíi",tbProp={0,105},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==62 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Kim Gi¸p Kh«i",tbProp={0,106},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==63 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==64 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng HuyÕt Y Thó Tr¹cMa Hoµng HuyÕt Y Thó Tr¹c",tbProp={0,109},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==65 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng §¨ng §¹p NgoaMa Hoµng §¨ng §¹p Ngoa",tbProp={0,110},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==66 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==67 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ NghiÖp Háa U Minh Giíi",tbProp={0,113},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==68 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==69 then
										tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==70 then
										tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==71 then
										tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",tbProp={0,120},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==72 then
										tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Tam Thanh Phï",tbProp={0,122},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==73 then
										tbAwardTemplet:GiveAwardByList({{szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={0,123},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==74 then
										tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Thanh Tïng Ph¸p giíi",tbProp={0,125},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==75 then
										tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",tbProp={0,127},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==76 then
										tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thanh Phong Lò ®¸i",tbProp={0,128},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==77 then
										tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Phong B¹o chØ hoµn",tbProp={0,130},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==78 then
										tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==79 then
										tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Cöu Thiªn DÉn L«i giíi",tbProp={0,135},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==80 then
										tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Ki B¸n phï chó",tbProp={0,137},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==81 then
										tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Thóc T©m chØ hoµn",tbProp={0,138},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn ®­îc trang bÞ xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
end




function main(nItemIndex)
dofile("script/global/g7vn/baoruonghanche/baoruonghkmp.lua")


	if ConsumeEquiproomItem(1, 6,1, 4414,-1)>0 then
		MoRuongOk()
		local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white>më thµnh c«ng r­¬ng hoµng kim.<color=pink>");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng 4631",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	return 0;
	end
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
