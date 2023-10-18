IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\awardtemplet.lua");

--==================Script dev by MCTeam=============================

Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\tieungao\\huyvatpham.lua");
Include("\\script\\global\\tieungao\\dotim.lua");
Include("\\script\\global\\tieungao\\testgame.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")

function testevent()
	tbAwardList= 
	{
		{szName="Trai Xoai",tbProp={6,1,30371,1,0,0},nExpiredTime=20180305,nCount=500},
		{szName="Mam ngu qua",tbProp={6,1,30375,1,0,0},nExpiredTime=20180305,nCount=500},
		{szName="Banh chung dac biet",tbProp={6,1,30376,1,0,0},nExpiredTime=20180305,nCount=500},
	} 
	tbAwardTemplet:Give(tbAwardList, 1, {"TestEventTetND", "TestEventTetND"})
end

function NhanThanHanhPhu()
	AddItem(6,1,1266,1,0,0)
end

function main()	
	
	--dofile("script/global/g7vn/testg7vn.lua");

--do Say("Chøc n¨ng t¹m ®ãng") return end

local tbOpt = {}
tinsert(tbOpt,"NhËn thµnh hµnh phï ./NhanThanHanhPhu")
tinsert(tbOpt,"LÊy thñy tinh +  tinh hång b¶o th¹ch./thuytinhth")
tinsert(tbOpt,"NhËn cÊp + §¹i Thµnh  ./g7nhandiem")
tinsert(tbOpt,"NhËn trang bÞ ./g7nhantrangbi")
tinsert(tbOpt,"NhËn tiÒn ./g7nhantien")
tinsert(tbOpt,"NhËn vËt phÈm ./g7nhanvatpham")
tinsert(tbOpt,"NhËn Ngùa ./layngua")
tinsert(tbOpt,"Hç trî häc vâ c«ng 6x./gmhotroskill6x")
tinsert(tbOpt,"Hç trî häc vâ c«ng 9x./gmhotroskill9x")
tinsert(tbOpt,"NhËn bÝ kÝp 90 ./NhanBiKip90Test")
tinsert(tbOpt,"NhËn m¸u Ngò Hoa Ngäc Lé Hoµn ./g7testhotromau")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Chµo mõng b¹n ®Õn víi Game Tân Vâ L©m CTC. Server sÏ ®ua top test víi nhiÒu phÇn quµ hÊp dÉn vµo 10h 23-02-2019, +Fanpage: fb.com/vltruyenkycongthanhchien/ +Trang chñ: http://vltruyenky.net. M¸y chñ sÏ chÝnh thøc OPEN vµo lóc <color=red>10H ngµy 23-02-2019.<color>", getn(tbOpt), tbOpt)
end

function g7nhandiem()
local tbOpt = {}
tinsert(tbOpt,"§iÓm kinh nghiÖm ./gmcap150")
tinsert(tbOpt,"§iÓm Danh väng, Phóc duyªn  ./danhvongphucduyen")
tinsert(tbOpt,"TÈy ®iÓm ./clear_attibute_point")
tinsert(tbOpt,"L·nh ®¹o  ./lanhdao")
tinsert(tbOpt,"Cèng hiÕn  ./conghien")	
tinsert(tbOpt,"§iÒu kiÖn khai s¸ng bang héi ./gmlapbanghoi")
tinsert(tbOpt,"Kü n¨ng 120 ./gmkynang120")
tinsert(tbOpt,"§¹i thµnh bÝ kÝp 90 ./gmkynang90")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Hç trî Test Game:", getn(tbOpt), tbOpt)
end



function g7nhantrangbi()

if CalcFreeItemCellCount() < 20 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
	return 1;
end

local tbOpt = {}
tinsert(tbOpt,"NhËn Trang bÞ Xanh ./laydoxanh")
--tinsert(tbOpt,"NhËn Trang bÞ TÝm ./nhando6dong")
--tinsert(tbOpt,"NhËn Trang bÞ Hoµng Kim M«n Ph¸i ./hoangkimmonphai")
--tinsert(tbOpt,"NhËn V« danh giíi chØ ./gmvodanhgioichi")
tinsert(tbOpt,"NhËn Trang bÞ HiÖp cèt ./gmhiepcot")
tinsert(tbOpt,"NhËn Trang bÞ Nhu t×nh ./gmnhutinh")
--tinsert(tbOpt,"NhËn Trang bÞ An Bang Hoµn Mü ./gmtbanbanghoanmy")
--tinsert(tbOpt,"NhËn nguyªn liÖu An Bang Hoµn Mü ./gmnguyenlieuabhm")
tinsert(tbOpt,"NhËn Trang bÞ An Bang ./gmtbanbang")
tinsert(tbOpt,"NhËn Trang bÞ §Þnh quèc ./gmtbdinhquoc")
--tinsert(tbOpt,"NhËn Trang bÞ §éng S¸t ./gmdongsat")
--tinsert(tbOpt,"NhËn Trang bÞ Hång ¶nh ./gmhonganh")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Hç trî Test Game:", getn(tbOpt), tbOpt)
end

function g7nhantien()

if CalcFreeItemCellCount() < 20 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 200 « trèng råi h·y nhËn.",0);
	return 1;
end

local tbOpt = {}
--tinsert(tbOpt,"NhËn hç trî 1000 xu ./gmnhan100xu")
tinsert(tbOpt,"NhËn hç trî 20k v¹n ./gmnhan50kvan")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Hç trî Test Game:", getn(tbOpt), tbOpt)
end

function g7nhanvatpham()

if CalcFreeItemCellCount() < 20 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
	return 1;
end

local tbOpt = {}
tinsert(tbOpt,"NhËn Than Hanh Phu ./NhanThanHanhPhu")
tinsert(tbOpt,"Phi tèc lÖnh bµi ./phitoclb")
--tinsert(tbOpt,"NhËn lÖnh bµi T©n Thñ ./gmlenhbaitanthu")
tinsert(tbOpt,"VËt phÈm hç trî bang héi ./gmhotrobanghoi")
tinsert(tbOpt,"NhËn 500 c¸i ngò hµnh kú th¹ch./gmnhannguhanhkythach")
tinsert(tbOpt,"NhËn Tiªn Th¶o Lé ®Æc biÖt ./tienthaolodacbiet")
--tinsert(tbOpt,"NhËn Trang søc, phi phong, Ên ./fifong")
--tinsert(tbOpt,"NhËn MÆt n¹ V­¬ng Gi¶ ./g7vnmatnavuonggia")
tinsert(tbOpt,"NhËn NhÊt Kû Cµn Kh«n Phï ./g7vnnhatkycankhon")
tinsert(tbOpt,"NhËn Nh¹c v­¬ng kiÕm ./gmnhacvuongkiem")
--tinsert(tbOpt,"NhËn Khiªu chiÕn lÖnh ./gmlaykhieuchienlenh")
--tinsert(tbOpt,"NhËn MËt ®å thÇn bÝ ./gmlaymatdothanbi")
--tinsert(tbOpt,"NhËn LÖnh bµi gäi boss ./lenhbaigoiboss")
--tinsert(tbOpt,"TÝn vËt m«n ph¸i ./g7tinvatmonphai")
tinsert(tbOpt,"Vâ L©m MËt TÞch, TÈy Tñy Kinh ./g7volammattichttk")
--tinsert(tbOpt,"Nguyªn LiÖu Ðp ®å HKMP ./g7NLEpHKMP")
--tinsert(tbOpt,"Nguyªn LiÖu Test B¾c §Èu TruyÒn C«ng ./testbacdautruyencong")
--tinsert(tbOpt,"T¨ng 500 triÖu kinh nghiÖm ./#g7tangdiemkn(500000000)")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Hç trî Test Game:", getn(tbOpt), tbOpt)
end

function phitoclb()
tbAwardTemplet:GiveAwardByList({{szName = "Giá ®ùng hoa", tbProp ={ 6, 1, 190, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Phi Tèc"))
tbAwardTemplet:GiveAwardByList({{szName = "Giá ®ùng hoa", tbProp ={ 6, 1, 157, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Phi Tèc"))
end

function thuytinhth()
	for i=1,6 do
		AddEventItem(353)
	end
	AddEventItem(238)
	AddEventItem(239)
	AddEventItem(240)

end