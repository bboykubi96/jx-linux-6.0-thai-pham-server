Include("\\script\\gmscript.lua")
Include("\\script\\global\\topall.lua")
Include("\\script\\global\\tieungao\\testgame.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\lib\\awardtemplet.lua")


--Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")

--Include("\\script\\battles\\battleinfo.lua");
--IncludeLib("FILESYS")

GetNameADM  = ""

listtkgame={
{"","Code"}, {"","Code"},{"","Code"}, {"","Code"},{"","Code"}, {"","Code"},{"","Code"}, {"","Code"},
{"","Code"} --ID admin

}


function layquaHuyHoang()
	local tbAward= 
	{
		{szName = "QuaHH thap", tbProp={6,1,904,1,0,0},nCount=5, nExpiredTime=60*24*3 },
		{szName = "QuaHH cao", tbProp={6,1,905,1,0,0},nCount=5, nExpiredTime=60*24*3 },
		{szName = "QuaHH trung", tbProp={6,1,906,1,0,0},nCount=5, nExpiredTime=60*24*3 },
	}
	tbAwardTemplet:Give(tbAward, 1, {"layquaHuyHoang", "layquaHuyHoang"})
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
end

function PhanThuongTop1ThangXanh()
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbbachkim  =
{
	{szName = "An bang liªn ®Êu", tbProp = {0,394}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,395}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,396}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,397}, nCount = 1,nQuality = 1},
}
tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongTop1ThangXanhLog");

end

function NhanBiKip90Test()

	local tbSay = {}
		tinsert(tbSay,"ThiÕu l©m quyÒn ./#ChonBiKipOK(56)")
		tinsert(tbSay,"ThiÕu l©m c«n ./#ChonBiKipOK(57)")
		tinsert(tbSay,"ThiÕu l©m ®ao ./#ChonBiKipOK(58)")
		tinsert(tbSay,"Thiªn v­ong chuú ./#ChonBiKipOK(37)")
		tinsert(tbSay,"Thiªn v­ong th­ong ./#ChonBiKipOK(38)")
		tinsert(tbSay,"Thiªn v­ong ®ao ./#ChonBiKipOK(39)")
		tinsert(tbSay,"§uêng m«n phi ®ao ./#ChonBiKipOK(45)")
		tinsert(tbSay,"§uêng m«n ná ./#ChonBiKipOK(27)")
		tinsert(tbSay,"§uêng m«n phi tiªu ./#ChonBiKipOK(46)")
		tinsert(tbSay,"§uêng m«n bÉy ./#ChonBiKipOK(28)")
		tinsert(tbSay,"Ngò ®éc chuëng ./#ChonBiKipOK(47)")
		tinsert(tbSay,"Ngò ®éc ®ao ./#ChonBiKipOK(48)")
		tinsert(tbSay,"Ngò ®éc bïa ./#ChonBiKipOK(49)")
		tinsert(tbSay,"Trang 2 ./ChonBiKipT2")
		tinsert(tbSay,"§Ó sau ®i ./ketthuc")
	Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function ChonBiKipT2()
		local tbSay = {}
		tinsert(tbSay,"Trang 1 ./NhanBiKip90Test")
		tinsert(tbSay,"Nga my kiÕm ./#ChonBiKipOK(42)")
		tinsert(tbSay,"Nga mi chuëng ./#ChonBiKipOK(43)")
		tinsert(tbSay,"Nga mi buff ./#ChonBiKipOK(59)")
		tinsert(tbSay,"Thuý yªn ®ao ./#ChonBiKipOK(40)")
		tinsert(tbSay,"Thuý yªn song ®ao ./#ChonBiKipOK(41)")
		tinsert(tbSay,"C¸i bang rång ./#ChonBiKipOK(54)")
		tinsert(tbSay,"C¸i bang bæng ./#ChonBiKipOK(55)")
		tinsert(tbSay,"Thiªn nhÉn kÝch ./#ChonBiKipOK(35)")
		tinsert(tbSay,"Thiªn nhÉn bïa ./#ChonBiKipOK(53)")
		tinsert(tbSay,"Thiªn nhÉn ®ao ./#ChonBiKipOK(36)")
		tinsert(tbSay,"Trang 3 ./ChonBiKipT3")
		tinsert(tbSay,"§Ó sau ®i ./ketthuc")
		Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function ChonBiKipT3()
		local tbSay = {}
		tinsert(tbSay,"Trang 2 ./NhanBiKip90Test")
		tinsert(tbSay,"Vâ ®ang khÝ ./#ChonBiKipOK(33)")
		tinsert(tbSay,"Vâ ®ang kiÕm ./#ChonBiKipOK(34)")
		tinsert(tbSay,"C«n l«n ®ao ./#ChonBiKipOK(50)")
		tinsert(tbSay,"C«n l«n kiÕm ./#ChonBiKipOK(51)")
		tinsert(tbSay,"C«n l«n bïa ./#ChonBiKipOK(52)")
		tinsert(tbSay,"§Ó sau ®i ./ketthuc")
		Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function ChonBiKipOK(nId)
	if CalcFreeItemCellCount() < 1 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 1 « trèng råi h·y nhËn.",0);
		return
	end	
	local idbk = AddItem(6,1,nId,1,0,0) --bi kip 90
end

function g7NLEpHKMP()
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward= 
	{
		{szName = "TÈy tñy kinh", tbProp={6,1,22,1,0,0},nCount=1, },
		{szName = "Vâ l©m mËt tÞch", tbProp={6,1,26,1,0,0},nCount=1, },
		{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1,},
		{szName = "Kim tª",tbProp={4,979,1,1,0,0},nCount=1,},
		{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1,},
		{szName = "Tö thñy tinh",				tbProp={4,239,1,1,0,0},nCount=1,},
		{szName = "Lôc thñy tinh",			tbProp={4,240,1,1,0,0},nCount=1,},
		{szName = "Lam thñy tinh",			tbProp={4,238,1,1,0,0},nCount=1,},
		{szName = "CÈm Nang §å Phæ Vò KhÝ Hoµng Kim",		tbProp={6,1,4339,1,0,0},nCount=10,},
		{szName = "Ngò hµnh kú th¹ch", tbProp={6,1,2125,1,0,0},nCount=150, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"g7NLEpHKMP", "g7NLEpHKMP"})
	kdb()
end

function g7volammattichttk()
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward= 
	{
		{szName = "TÈy tñy kinh", tbProp={6,1,22,1,0,0},nCount=15, },
		{szName = "Vâ l©m mËt tÞch", tbProp={6,1,26,1,0,0},nCount=15, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"g7volammattichttk", "g7volammattichttk"})
end

function gmhotrobanghoi()
	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "Cèng HiÕn LÔ bao",tbProp={6,1,30214,1,0,0},nCount=1,},
		{szName = "Cèng HiÕn §¹i LÔ bao",tbProp={6,1,30215,1,0,0},nCount=1,},
		{szName = "KiÕn ThiÕt LÔ Bao",tbProp={6,1,30216,1,0,0},nCount=1,},
		{szName = "KiÕn ThiÕt §¹i LÔ Bao",tbProp={6,1,30217,1,0,0},nCount=1,},
		{szName = "ChiÕn BÞ LÔ Bao",tbProp={6,1,30218,1,0,0},nCount=1,},
		{szName = "ChiÕn BÞ §¹i LÔ Bao",tbProp={6,1,30219,1,0,0},nCount=1,},
	}
	tbAwardTemplet:Give(tbAward, 1, {"TestHTBang", "TestHTBang"})
end

function gmtestnv150()
	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "TÈy tñy kinh", tbProp={6,1,22,1,0,0},nCount=20, },
		{szName = "Vâ l©m mËt tÞch", tbProp={6,1,26,1,0,0},nCount=20, },
		{szName = "ThÊt tinh th¹ch", tbProp={6,1,4334,1,0,0},nCount=150, },
		{szName = "§¹i thµnh BK 90", tbProp={6,1,2424,1,0,0},nCount=1, },
		{szName = "§¹i thµnh BK 120", tbProp={6,1,2425,1,0,0},nCount=1, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"TestNV150", "TestNV150"})
end

function gmnhannguhanhkythach()
	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "Ngò hµnh kú th¹ch", tbProp={6,1,2125,1,0,0},nCount=500, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"Test5hanhkythach", "Test5hanhkythach"})
end

function gmnguyenlieuabhm()
	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=5, },
		{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=5, },
		{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=5, },
		{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=5, },
		{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=5, },
		{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=5, },
		{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=5, },
		{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=5, },
		{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1, },
		{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1,},
	}
	tbAwardTemplet:Give(tbAward, 1, {"TestABHM", "TestABHM"})
end

function LayToaDoHienTai()
nX32, nY32, nMapIndex =  GetPos()
nW, nX, nY =GetWorldPos()

Msg2Player("GetPos: nX32="..nX32..", nY32 = "..nY32..", nMapIndex="..nMapIndex)
Msg2Player("GetWorldPos: nX="..nX..", nY = "..nY..", nW="..nW)
end

function testbachkim()
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbbachkim  =
{
	{szName = "HuyÒn tinh cÊp 8", tbProp = {6, 1, 147, 8,0,0}, nCount = 1},
	{szName = "M¶nh bæ thiªn th¹ch Trung", tbProp = {6, 1, 1309, 1,0,0}, nCount = 1},
	{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp = {6, 1, 398, 1,0,0}, nCount = 1},
	{szName = "L«i tr¹ch chïy", tbProp = {6, 1, 1473, 1,0,0}, nCount = 1},
	{szName = "B¹ch kim lÖnh bµi", tbProp = {6, 1, 4323, 1,0,0}, nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbbachkim, "LayNLTesstBachKim");

end

function PhanThuongBangChiemTD_DauTien()

if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--[1]	={szName = "Phi Tèc hoµn", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
	{szName = "M· bµi ngùa Phiªn Vò", tbProp = {6, 1, 2334, 1,0,0}, nCount = 1},
	{szName = "M· bµi ngùa B«n Tiªu", tbProp = {6, 1, 2333, 1,0,0}, nCount = 3},
	{szName = "An bang liªn ®Êu", tbProp = {0,394}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,395}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,396}, nCount = 1,nQuality = 1},
	{szName = "An bang liªn ®Êu", tbProp = {0,397}, nCount = 1,nQuality = 1},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "PhÇn th­ëng bang héi ®Çu tiªn chiÕm thµnh T­¬ng D­¬ng");
Earn(100000000)
Msg2Player("B¹n ®· nhËn ®­îc 10.000 v¹n l­îng")
	
end

function ShowBangXepHangTG()

local ncount = 10
strthongbao = "B¶ng xÕp h¹ng Top "..ncount.." gåm: <enter>";
Msg2SubWorld(strthongbao)
for i = 1, ncount do
local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10287, i);
	if nrank ~= 0 then
		Msg2SubWorld("NV: <color=green>"..szname.."<color> h¹ng: " ..i.." cÊp: "..nrank.."")
	end
end
end

function testbacdautruyencong()
AddItem(6, 1, 1672, 1, 0, 0) -- bac dau truyen cong
AddItem(6, 1, 1673, 1, 0, 0) -- that tinh thao
AddItem(6, 1, 1674, 1, 0, 0) -- bach nien that tinh thao
AddItem(6, 1, 1675, 1, 0, 0) -- thien nien that tinh thao
end

function g7testhotromau()

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 1;
	end
	
	local tbItem = {szName="Ngò Hoa Ngäc Lé Hoµn", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
	tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn thuëng t©n thñ");
	
end

function g7tangdiemkn(diemkn)
tl_addPlayerExp(diemkn)
end

function g7denbu8TTL()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y më.",0);
		return 1;
	end

local task = GetTask(idtaskdenbulan1NMQ)
if task >= 2 then
	Say("§¹i hiÖp ®· nhËn råi")
	return
end

local tbbachkim  =
	{
		{szName = "Tiªn Th¶o Lé §Æc BiÖt Khãa VV", tbProp = {6, 1, 1181, 1,0,0}, nCount = 8,nBindState = -2},
	}
tbAwardTemplet:GiveAwardByList(tbbachkim, "NhanHoTroDenBu7TTL26t12");

SetTask(idtaskdenbulan1NMQ,task+1)
end

function matnagm()
--AddItem(0,11,2,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,366,0,10,10,10,10,10,10,10,gio,day,month,nam)
--AddItem(0,11,0,367,0,10,10,10,10,10,10,10,gio,day,month,nam)
--AddItem(0,11,0,368,0,10,10,10,10,10,10,10,gio,day,month,nam)

AddItem(6,1,1008,0,0,0)--hat thong luyen skill

end

function g7satthugian()
AddItem(6,1,400,90,0,0,0) --sat thu gian
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 
AddItem(4,489,0,1,1,0,0) -- lenh bai pld
AddItem(6,1,2745,1,0,0) -- lenh bai thuy tac
--for i=1,200 do
--AddItem(6,1,196,1,0,0) --mat do than bi
--end
end

function g7gmanthan()
AddItem(0,11,18,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddSkillState(458,60,1,60*60*18)
AddSkillState(459,60,1,60*60*18)
AddSkillState(546,60,1,60*60*18)
AddSkillState(313,60,1,60*60*18)
AddSkillState(314,60,1,60*60*18)
AddSkillState(315,60,1,60*60*18)
AddSkillState(316,60,1,60*60*18)
AddSkillState(539,60,1,60*60*18)
AddSkillState(540,60,1,60*60*18)
AddSkillState(732,60,1,60*60*18)
AddSkillState(733,60,1,60*60*18)

for i=511,533 do
AddSkillState(i,60,1,600*600*18)
end
end

function g7gmhienhinh()
SetCurCamp(6)
SetCamp(6)
AddSkillState(733,60,1,1*18)
end

function g7khoitaogm()
SetCurCamp(0)
SetCamp(0)
--AddItem(0,11,18,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
local nItemIdx = AddItem(6, 1, 1266, 1, 0, 0)
SetItemBindState(nItemIdx, -2);
nItemIdx = AddItem(0,11,367,1,0,0,0)
SetItemBindState(nItemIdx, -2);
AddSkillState(458,60,1,60*60*18)
AddSkillState(459,60,1,60*60*18)
AddSkillState(546,60,1,60*60*18)
AddSkillState(313,60,1,60*60*18)
AddSkillState(314,60,1,60*60*18)
AddSkillState(315,60,1,60*60*18)
AddSkillState(316,60,1,60*60*18)
AddSkillState(539,60,1,60*60*18)
AddSkillState(540,60,1,60*60*18)
AddSkillState(732,60,1,60*60*18)
AddSkillState(733,60,1,60*60*18)

for i=511,533 do
AddSkillState(i,60,1,600*600*18)
end
end

function gmhiepcot()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
AddGoldItem(0,189)
end

function gmnhutinh()
AddGoldItem(0,190)
AddGoldItem(0,191)
AddGoldItem(0,192)
AddGoldItem(0,193)
end

function g7bikiphoacongdaiphap()
for i=1,10 do
AddItem(6,1,4276,0,0,0,0) --hoa cong dai phap
end
AddItem(6,1,4277,0,0,0,0) --than moc vuong dinh
end

function g7vnnhatkycankhon()
AddItem(6,1,2126,1,0,0,0)--nhat ky can khon phu
end

function g7vnmatnavuonggia()
inVatPham = AddItem(0,11,561,1,0,0)--mat na vuong gia
end

function g7tinvatmonphai()
AddItem(6,1,1670,0,0,0,0)
AddItem(6,1,1671,0,0,0,0)
end

function gmthiensontuyetlien()
inVatPham = AddItem(6,1,1431,1,0,0,0)
SetItemBindState(inVatPham,-2)
end

function gmkiemtrataptrung(nSubWorldID)
if (nSubWorldID > 70000) then
	return 0;
end

for i = 1, getn(tbBATTLEMAP) do 
if ( nSubWorldID == tbBATTLEMAP[i] ) then
	return 0;
end
end

if checkYDBZMaps(nSubWorldID) == 1 then
	return 0
end

if (nSubWorldID >= 375 and nSubWorldID <= 386) then
	return 0
end
	
if (nSubWorldID >= 416 and nSubWorldID <= 511) then
	return 0
end
	
if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
	return 0
end;

--if (FORBITMAP_LIST[nSubWorldID] == 1 or FORBIT_TEMPLATEMAP_LIST[nMapTemplateID] == 1) then
	--return 0
--end

if (checkHFMaps(nSubWorldID) == 1) then
	return 0
end;

if (checkBWMaps(nSubWorldID) == 1) then
	return 0
end;
	
if checkActMaps(nSubWorldID) == 1 then
	return 0
end
	
if (checkZQMaps(nSubWorldID) == 1) then
	return 0
end;
	
if (checkNEWPRACTICEMaps(nSubWorldID) == 1) then
	return 0
end;

--if(GetFightState() == 0) then --dang trong trang thai luyen cong
	--return 0
--end

return 1;
end;


function gmtaptrungcongbk()
local PlayerIndexOld = PlayerIndex
for i=1, GetPlayerCount() do
	if i ~= PlayerIndexOld then
		PlayerIndex = i
		local nW, nX, nY =GetWorldPos()
		--if gmkiemtrataptrung(nW) == 1 then
			NewWorld(37, 1584, 3240)
			SetFightState(1);
		--end
	end
end

PlayerIndex = PlayerIndexOld

end

local g7vnTHHD = 
{
	
}

function kiemtrabangchu()
labangchu = GetTongMaster()
if(GetName() == labangchu) then
	return 1
end
return 0
end

function g7vnTrieuHoi()
local PlayerIndexOld = PlayerIndex
--nX32, nY32, nMapIndex =  GetPos()
nW, nX, nY =GetWorldPos()
trangthai = GetFightState()
nTongName, nTongID = GetTongName()

for i=1, GetPlayerCount() do
	PlayerIndex = i
	local nTongName_i, nTongID_i = GetTongName()
	nW1, nX1, nY1 =GetWorldPos()
	--NewWorld(11, 3143, 5065)
	if(gmkiemtrataptrung(nW1) == 1 and nTongID ~=0 and nTongID_i == nTongID and PlayerIndexOld ~= PlayerIndex) then
		local tbSay = {}
		tinsert(tbSay,"S½n sµng ®i ./#TaSanSangDi(nW, nX, nY,trangthai)")
		tinsert(tbSay,"Cã viÖc kh¸c råi ./KhongDi")
		Say("Bang chñ ®ang cã lÖnh triÖu håi toµn bé Huynh §Ö trong bang, ng­¬i cã muèn ®i?", getn(tbSay), tbSay)
	end
end

PlayerIndex = PlayerIndexOld
end;

function TaSanSangDi(nW, nX, nY,trangthai)
		NewWorld(nW, nX, nY)
		SetFightState(trangthai);
end;

COIN=10

function gmdophohoangkim()
local tbSay = {}
	tinsert(tbSay,"Manh hoang kim ./#gmmanhhoangkim()")
	tinsert(tbSay,"ThiÕu l©m ./#gmdophohoangkimmonphai(239)")
	tinsert(tbSay,"Thiªn v­¬ng ./#gmdophohoangkimmonphai(254)")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("§å phæ hoµng kim", getn(tbSay), tbSay)
end;

function gmlenhbaitanthu()
local open_tkgame = dk_taikhoangm()
if (open_tkgame == 1) then
		Talk(2,"NhapPassNe","Chóc Mõng §¹i HiÖp <color=green>"..GetName().."<color> ®· ®­îc <bclr=blue>Admin <bclr>\n ®­a vµo danh s¸ch GM hç trî game.","<color=yellow>Oh Yeah..!")
		return 
else
tbAwardTemplet:GiveAwardByList({{szName="LÖnh Bµi T©n Thñ",tbProp={6,1,4261,1,},nCount=1, nBindState=-2},}, "test", 1);

end
end





function NhapPassNe()
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 1;
end
AskClientForString("CheckPassAD", "", 1, 50, "Pass B¶o MËt");
end


function CheckPassAD(strings)	
	if strings=="phimsexnhatban" then
tbAwardTemplet:GiveAwardByList({{szName="LÖnh Bµi ADMIN",tbProp={6,1,4357,1,1},nCount=1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="LÖnh Bµi ADMIN",tbProp={6,1,4358,1,1},nCount=1, nBindState=-2},}, "test", 1);
end
end

function dk_taikhoangm()
	for i=1,getn(listtkgame) do
		if GetAccount() == listtkgame[i][1] then
			if listtkgame[i][2] == "Code" then
			return 1
			end
		end
	end
return 2
end

function gmnhanphongvanlenhbai()
local tichdiem = GetTask(1403)
if tichdiem >= 1 then
	Say("§· nhËn Phong V©n LÖnh Bµi råi")
else
	inVatPham = AddItem(6,1,4340,0,0,0,0)--phong van lenh bai
	SetItemBindState(inVatPham,-2)
	tichdiem = 1 --da nhan phong van lenh bai
	SetTask(1403,tichdiem)
end
end;

function gmmanhhoangkim()
AddItem(4, 801, 1, 1, 0, 0)
AddItem(4, 802, 1, 1, 0, 0)
AddItem(4, 803, 1, 1, 0, 0)
AddItem(4, 804, 1, 1, 0, 0)
AddItem(4, 805, 1, 1, 0, 0)
AddItem(4, 806, 1, 1, 0, 0)
end;

function gmdophohoangkimmonphai(batdau)
for i=batdau,batdau+10 do
	AddItem(6,1,i,1,0,0,0)
end
end;

function gmbaoruongkimo()
AddItem(6,1,2349,1,0,0,0)
end;

function gmtbthienhoang()
	for i = 168, 176 do	--1 bo thien hoang
		inVatPham = AddGoldItem(0, i);
		--SetItemBindState(inVatPham,-2)
	end
end;


function ditaysondao()
NewWorld(342,1178,2412) 
SetFightState(1); 
end

function lenhbaigoiboss()
for i =1,10 do
	AddItem(6,1,1022,0,0,0)
end
end;

function gmcsinh()

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 1) then
		return
		Say("B©y giê ta mÖt råi cã chuyÖn g× ®Ó ngµy mai nãi!")
	end

	if GetLevel() < 190 then
		Talk(1, "", "CÊp 190 trë lªn míi ca thÓ chuyÓn sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph¶i ca ®ñ 10k v¹n míi ca thÓ chuyÓn sinh.")
		return
	end
	Pay(100000000)
	ST_DoTransLife()

end

function xemxephang()
local ten_ban = GetName();
local top_ban = 0;
for i=1, 1000 do 
      szName, nValue= Ladder_GetLadderInfo(10287,i); 
      if(ten_ban==szName) then
           top_ban = i;
      end 
end
Say("Hang Cua Ban Trong Game Hien Tai La : "..top_ban,1,"Cam On/no")  
end;

function gmbntk()
AddItem(6,1,12,0,0,0,0)
end

function gmkynang120()
AddItem(6,1,1125,0,0,0,0)
AddItem(6,1,2425,0,0,0,0)
end;

function gmkynang90()
AddItem(6,1,2424,0,0,0,0)
end;

function gmkynang150()
AddItem(6,1,30171,0,0,0,0)
AddItem(6,1,30446,0,0,0,0)
end;

function gmthongbaotoanserver()
--AskClientForNumber("enter_str_num", 0, GetProp(),"Xin/mêi ®­a vµo lùc l­îng trÞ sè : "); 
AskClientForString("hienthithongbao", "", 1, 500, "Xin nhËp vµo c©u th«ng b¸o");
end;

function hienthithongbao(gmmessage)
Msg2SubWorld(gmmessage);
end;

function enter_str_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
Msg2SubWorld(n_key);
end ;

function tienthaolodacbiet()
-- Tien thao lo --thong so xem trong file \jxser\gateway\itemexchange_setting\item\004\magicscript.txt
--AddItem(6,1,71,0,0,0,0) 
-- Tien thao lo dac biet
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)
AddItem(6,1,1181,0,0,0,0)

end;



function gmdongsat()
AddGoldItem(0, 420);
AddGoldItem(0, 421);
AddGoldItem(0, 422);
AddGoldItem(0, 423);
end;

function gmhonganh()
AddGoldItem(0, 204);
AddGoldItem(0, 205);
AddGoldItem(0, 206);
AddGoldItem(0, 207);
end;

function gmkimnguyenbao()
AddEventItem(343)
AddEventItem(343)
AddEventItem(343)
AddEventItem(343)
AddEventItem(30448)
end;

function gmkynangrieng()
AddMagic(732, 1)--Ë²ÒÆ
AddMagic(733, 1)--ÒþÉí
end;

function gmnhacvuongkiem()
AddEventItem(195)
end;

function gmlayngua()
AddItem(0,10,5,10,0,0,0)
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)--Phiªn vò

--AddItem(0,10,9,10,0,0,0)
--AddItem(0,10,10,10,0,0,0)
end;

function gmtbanbanghoanmy()
AddGoldItem(0, 210);
AddGoldItem(0, 211);
AddGoldItem(0, 212);
AddGoldItem(0, 213);
end;
function gmtbanbangcucpham()
AddGoldItem(0, 408);
AddGoldItem(0, 409);
AddGoldItem(0, 410);
AddGoldItem(0, 411);
end;
function gmtbdinhquoccucpham()
AddGoldItem(0, 403);
AddGoldItem(0, 404);
AddGoldItem(0, 405);
AddGoldItem(0, 406);
AddGoldItem(0, 407);
end;

function gmtbanbang()
--AddGoldItem(0, 164);
--AddGoldItem(0, 165);
--AddGoldItem(0, 166);
--AddGoldItem(0, 167);

AddItem(6,1,4257,0,0,0,0)
AddItem(6,1,4258,0,0,0,0)
AddItem(6,1,4259,0,0,0,0)
AddItem(6,1,4260,0,0,0,0)

end;
function gmtbdinhquoc()
AddGoldItem(0, 163);
AddGoldItem(0, 162);
AddGoldItem(0, 161);
AddGoldItem(0, 160);
AddGoldItem(0, 159);
end;

function Quit() end

function gmlencapg7(g7cap)

local nTransLife = ST_GetTransLifeCount()	
if (nTransLife >= 1) then
	Say("Nh©n vËt ®· trïng sinh kh«ng thÓ thùc hiÖn")
	return
end

local nCurLevel = GetLevel()
if nCurLevel >= g7cap then
Say("§¹i hiÖp ®· v­ît cÊp ..g7cap.. råi!", 0)
return
end

local nAddLevel = g7cap - nCurLevel
ST_LevelUp(nAddLevel)

end;

function gmlen1cap()
ST_LevelUp(1)
end;

function gmlen5cap()
local nCurLevel = GetLevel()
if nCurLevel > 155 then
Say("Kh«ng thÓ th¨ng cÊp ®uîc n­÷a!", 0)
return
end
ST_LevelUp(5)
end;

function gmlen10cap()
local nCurLevel = GetLevel()
if nCurLevel > 150 then
Say("Kh«ng thÓ th¨ng cÊp ®uîc n­÷a!", 0)
return
end
ST_LevelUp(10)
end;

function gmlen20cap()
ST_LevelUp(20)
end;

function gmlennhapcap()
AskClientForNumber("gmlennhapcapOK", 0, 200,"Xin/mêi ®­a vµo lùc l­îng trÞ sè : "); 
end;

function gmlennhapcapOK(ncap)
local nCurLevel = GetLevel()
local nAddLevel = ncap - nCurLevel
ST_LevelUp(nAddLevel)
end

function gmcap150()
local nCurLevel = GetLevel()
	if nCurLevel >= 200 then
		Talk(1, "", "Ng­¬i ®· ®¹t cÊp 200 råi.")
		return
	end
	--local nAddLevel = 200 - nCurLevel
	ST_LevelUp(10)
	--tl_addPlayerExp(2000000000);
end

function gmthongbaobaotri()
local mythongbao = "Server sÏ b¶o tr× trong vßng 5 phót n÷a. Thêi gian b¶o tr× dù kiÕn 30 phót." 
Msg2SubWorld(mythongbao);
--AddGlobalCountNews(mythongbao);
end

function hotrotien()
--AddItem(6,1,1083,0,0,0,0)--hoi thanh phu
--AddItem(6,1,2432,0,0,0,0)--lenh bai vi son dao
--AddItem(6,1,438,0,0,0,0)--tho dia phu vo han
--AddItem(6,1,985,0,0,0,0)--can khon dai na di phu
--AddItem(6,1,1266,0,0,0,0)--than hanh phu
--AddItem(6,1,1296,0,0,0,0)--ky nang 120
local nvnhantien = 722 -- id task nhan tien tan thu
local gdtasknhantien = GetTask(nvnhantien);
if gdtasknhantien > 0 then
Say("§¹i hiÖp ®· nhËn tiÒn råi", 0)
return
end
SetTask(nvnhantien,1)
Earn(500000)

end


function nhantiendong()
local nvnhantien = 723 -- id task nhan xu tan thu
local gdtasknhantien = GetTask(nvnhantien);
if gdtasknhantien > 0 then
Say("§¹i hiÖp ®· nhËn xu råi", 0)
return
end
SetTask(nvnhantien,1)
AddStackItem(50,4,417,1,1,0,0,0)	-- nhan 50 tien dong
end

function gmnhan100xu()
for i=1,10 do
AddStackItem(100,4,417,1,1,0,0,0)
end
end

function gmnhan50kvan()
Earn(200000000)
end

function gmnhansoluongvan()
AskClientForNumber("gmnhansoluongvanOK", 0, 9000000000,"Xin/mêi ®­a vµo lùc l­îng trÞ sè : "); 
end

function gmnhansoluongvanOK(ntien)
Earn(ntien)
end


function doimau()

	if check_faction() == 1 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
	end

	if GetCash() < 50000 then
				Say("§¹i hiÖp kh«ng mang ®ñ 50000 l­îng")
				return 1
	end

	local tbOpt =
	{
		{"ChÝnh ph¸i", mauvang},
		{"Tµ ph¸i", mautim},
		{"Trung lËp", mauxanh},
		{"S¸t Thñ", maudo},
		{"Trë l¹i", dialog_main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("§æi mµu PK ChÝnh Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("§æi mµu PK Tµ Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("§æi mµu PK Trung LËp thµnh c«ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("§æi mµu PK S¸t Thñ thµnh c«ng.")	
		Pay(50000)
end


function level_up_to80()
	local nCurLevel = GetLevel()
	if nCurLevel >= 80 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "B¹n ®· ®¹t cÊp 80 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh truíc ®i råi trë l¹i th¨ng cÊp.")
		end
		return
	end

	local nAddLevel = 80 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function nhanmauhotro()
	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 1;
	end
	if GetLevel()<nhanmauhotrolv then
		local tbItem = {szName="Ngò Hoa Ngäc Lé Hoµn", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn thuëng t©n thñ");
	end
	Say("B¹n sÏ nhËn hæ trî nµy ®Õn cÊp "..nhanmauhotrolv.."")
end
function vongsanghotro()
	if GetLevel()<nhankynanghotrolv then
		AddSkillState(512,20,1,60*60*18)
		AddSkillState(527,5,1,60*60*18)
		AddSkillState(313,5,1,60*60*18)
		AddSkillState(314,12,1,60*60*18)
		AddSkillState(546,1,1,60*60*18)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn thuëng t©n thñ");
	end
	Say("B¹n sÏ nhËn hæ trî nµy ®Õn cÊp "..nhankynanghotrolv.."")
end

function Quit() end

tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[8] = {318,319,321},
		[9] = {709},
		[10] = {1055,1056,1057},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[8] = {322,323,325},
		[9] = {708},
		[10] = {1058,1059,1060},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[8] = {302,339,342,351},
		[9] = {710},
		[10] = {1069,1070,1071,1110},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[8] = {353,355,390},
		[9] = {711},
		[10] = {1066,1067},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[8] = {328,332,380},
		[9] = {712},
		[10] = {1061,1062,1114},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[8] = {336,337},
		[9] = {713},
		[10] = {1063,1065},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[8] = {357,359},
		[9] = {714},
		[10] = {1073,1074},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[8] = {361,362,391},
		[9] = {715},
		[10] = {1075,1076},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[8] = {365,368},
		[9] = {716},
		[10] = {1078,1079},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[8] = {372,375,394},
		[9] = {717},
		[10] = {1080,1081},
	},
}


function gmhotroskill()
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
		Talk(1, "", "§¹i hiÖp ch­a gia nhËp m«n ph¸i");
		return
	end
	for i=1, 7 do --ho tro den 9x
	--for i=1, 11 do --ho tro den 15x
		if tbAllSkill[szFaction][i] ~= nil then
			for j=1, getn(tbAllSkill[szFaction][i]) do
				--if HaveMagic(tbAllSkill[szFaction][i][j]) ~= -1 then
					--DelMagic(tbAllSkill[szFaction][i][j])
				--end
				--UpdateSkill()
				if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
						if (i == 10 or i == 9 or i== 8) then
						AddMagic(tbAllSkill[szFaction][i][j],1)--ho tro den cap 20
						else
						AddMagic(tbAllSkill[szFaction][i][j])
						end
				end
			end
		end
	end
	Talk(1, "", "Xin chóc mõng b¹n ®· nhËn ®­îc hæ trî kü n¨ng tõ BQT");
end

--==========================================================================================

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Chµo mong b¹n ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,4,"NhËn ®iÒu kiÖn t¹o bang héi/dmcreatetong","NhËn ®iÒu khiÖn gia nhËp bang héi/dmjointong","T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
else
	Say(tszTitle,0)
end	
end

function dmcreatetong()	
if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(100000)
		AddLeadExp(1000000)
		AddLeadExp(1000000)

		AddLeadExp(1000000)

		AddEventItem(195)
		Earn(1000000)
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
Msg2Player("<color=yellow>§¹i hiÖp ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi!<color>")
else
end
end

function dmjointong()
if  GetCamp() ~= 4 then

		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end

		SetCamp(4)
		SetCurCamp(4)
Msg2Player("<color=yellow>Gia nhËp Bang héi thµnh c«ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("KiÕm hiÖp ch­ëng m«n nh©n:Khai s¸ng bang héi, më réng b¸ nghiÖp." ,2,"B¾t ®Çu dùng bang/Direct_CreateTong","§îi ta mét chót/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng­êi ch¬i: KiÕm hiÖp ch­ëng m«n nh©n, xin hái ta ph¶i lµm nh­ thÕ nµo míi ca thÓ khai t«ng lËp ph¸i trë thµnh Bang chñ ®©y?", "KiÕm hiÖp ch­ëng m«n nh©n: §Çu tiªn ng­¬i ph¶i cã ®ñ n¨ng lùc l·nh ®¹o, cã 16 ng­êi cïng chÝ h­íng cïng ng­¬i lËp bang, tr¶i qua 3 ngµy Kh¶o NghiÖm Kú ", "Ch­ëng m«n nh©n:  NÕu trong 3 ngµy ca ng­êi rêi bang th× néi trong 3 ngµy ®a ng­êi ph¶i t×m ng­êi kh¸c thay thÕ.", "Ch­ëng m«n nh©n:  Ng­¬i ph¶i ca ®ñ tµi l·nh ®¹o vµ tin vËt ®a lµ Nh¹c V­¬ng KiÕm", "Ng­êi ch¬i: Nh¹c V­¬ng KiÕm ? Ng­êi nai lµ thanh kiªm nµy µ ? ", "Kiªm hiÖp ch­ëng m«n nh©n : Th× ra lµ ng­¬i ®· cã nã... Kh«ng tÖ, qu¶ nhiªn tuæi trÎ tµi cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: Nªu nh­ muèn thµnh lËp bang héi, ng­¬i v× na bá ra 1 l­îng lín thêi gian, søc lùc cïng t©m huyÕt, kh«ng thÓ nöa ®­êng hñy bá." )
		else
			Talk(6,"", "Kiªm hiÖp ch­ëng m«n nh©n:  Ng­¬i muèn hái ®iªu kiÖn lËp bang µ? §Ó ta nai cho ng­¬i râ.", "Kiªm hiÖp ch­ëng m«n nh©n: ®Çu tiªn ph¶i xuÊt ; tiªp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi nµo kh¸c ; ng­¬i nhÊt ®inh ph¶i danh väng giang hå ; cuèi cïng lµ tµi l·nh ®¹o ph¶i h¬n 30 cÊp.", "Kiªm hiÖp ch­ëng m«n nh©n: Sau ®a ®i chiªn tr­êng t×m mét thanh Nh¹c V­¬ng Kiªm lµm bang chñ tin vËt lµ ®­îc råi.")
		end
	end
end

function create_pay()
	Say("Kiªm hiÖp ch­ëng m«n nh©n: Ng­¬i cÇn lÖ phi lµ 100 v¹n l­îng b¹c." ,2,"Kh«ng thµnh vÊn ®Ò, ta ca ®em 100v l­îng ®©y! /create_pay_yes","H©y dµ, ta kh«ng ®em ®ñ tiÒn råi. /create_pay_no")
end
function create_pay_yes()

	if (GetCash() >= 1000000) then
		Pay(1000000)
		DelItem(195)
		SetTask(99,1)
		Direct_CreateTong()		
	else
		Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: ViÖc duy tr× bang héi rÊt tèn tiÒn, ng­êi ph¶i cè g¾ng cïng mäi ng­êi hîp lùc ®Ó bang ®­îc giµu m¹nh. ")	end
end


function Direct_CreateTong()
	CreateTong(1)
end

--==========================================================================================

--====================Nhan diem==============================
function gmnhandiem()
	local tbOpt = {}
	--tinsert(tbOpt,"T¨ng kinh nghiÖm  ./kn")
	tinsert(tbOpt,"TÈy ®iÓm ./clear_attibute_point")
	tinsert(tbOpt,"Danh väng, Phóc duyªn  ./danhvongphucduyen")
	tinsert(tbOpt,"L·nh ®¹o  ./lanhdao")
	tinsert(tbOpt,"TiÒm n¨ng  ./gmdiemtiemnang")
	tinsert(tbOpt,"Kü n¨ng  ./gmdiemkynang")
	tinsert(tbOpt,"Cèng hiÕn  ./conghien")	
	tinsert(tbOpt,"Trë vÒ  ./main")
	tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ", getn(tbOpt), tbOpt)
end;

function gmdiemkynang()
	AddMagicPoint(100)
	Say("<npc>B¹n nhËn ®­îc 100 ®iÓm kü n¨ng")
	KickOutSelf()
end;

function gmdiemtiemnang()
	AddProp(1000000000)
	Say("<npc>B¹n nhËn ®­îc 100000 ®iÓm tiÒm n¨ng")
end;


function danhvongphucduyen()
	AddRepute(999);
	FuYuan_Start();
	FuYuan_Add(999);
	SetTask(747,999)
	Say("B¹n nhËn ®­îc 999 ®iÓm")
end

function conghien()
AddContribution(100000)
end
	
function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function kn()
for i=1,80 do
AddOwnExp(1000000000)
end
end


function clear_attibute_point()

	local tbOpt = {}
	tinsert(tbOpt,"TÈy ®iÓm kü n¨ng ./clear_skill")
	tinsert(tbOpt,"TÈy ®iÓm tiÒm n¨ng ./clear_prop")
	tinsert(tbOpt,"Trë vÒ  ./main")
	tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
	Say("§¹i hiÖp cã muèn tÈy ®iÓm?", getn(tbOpt), tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", clear_attibute_point},
	}
	CreateNewSayEx("<npc>§¹i hiÖp cã muèn tÈy ®iÓm?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)
	local j = HaveMagic(400)	
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x		
	if (rollback_point + GetMagicPoint() < 0) then	
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end	
	if (j ~= -1) then AddMagic(400, j) end
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", clear_attibute_point},
	}
	CreateNewSayEx("<npc>§¹i hiÖp cã muèn tÈy ®iÓm?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}		
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end


--====================Nhan diem==============================

--======================Lay ngua=====================================

function layngua()
	local tbOpt =
	{
		{"Ngùa nhãm 1", vip1},
		--{"Ngùa nhãm 2", vip2},
		--{"Ngùa nhãm 3", vip3},
		--{"Ngùa nhãm 4", vip4},
		--{"Ngùa VIP", gmnguabadao},
		{"Trë l¹i", main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i hiÖp cÇn g×?", tbOpt)
end

function gmnguabadao()
AddGoldItem(0, 4480)
AddGoldItem(0, 4366)
for i=5093,5097 do
	AddGoldItem(0, i)
end
	Msg2Player("NhËn ®uîc ngùa")
end

function vip1()
--AddItem(6,1,2333,1,1,0,0)
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
--AddItem(0,10,9,10,0,0,0)
--AddItem(0,10,10,10,0,0,0)
Msg2Player("NhËn ®uîc ngùa")
end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)
	Msg2Player("NhËn ®uîc ngùa")
end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)
		Msg2Player("NhËn ®uîc ngùa")
end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
		Msg2Player("NhËn ®uîc ngùa")
end
--===============================================

--===========================Phi phong===============
function fifong()
	local tbOpt =
	{
		{"Phi phong", gmphiphong},
		{"Ên", gman},
		{"Trang søc", gmtrangsuc},
		--{"Vò liÖt", vuliet},
		--{"Huynh ®Ö", huynhde},
		--{"Cè s¬n", coson},
		--{"D­¬ng thÇn", duongthan},
		--{"VËt PhÈm Kh¸c", huytinh},
		{"Trë l¹i", main},
{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän item", tbOpt)
end

function gmphiphong()
for i=3465,3490 do
AddGoldItem(0, i)
end
end

function gman()
for i=3205,3234 do
AddGoldItem(0, i)
end
end

function gmtrangsuc()
for i=3542,3554 do
AddGoldItem(0, i)
end
for i=3491,3506 do
AddGoldItem(0, i)
end
end
--===========================Phi phong====================

--====================Hoang kim mon phai====================
function hoangkimmonphai()
	local tbOpt =
	{
		{"ThiÕu l©m", gmhkthieulam},
		{"Thiªn v­¬ng", gmhkthienvuong},
		{"§­êng m«n", gmhkduongmon},
		{"Ngò ®éc", gmhk5doc},
		{"Nga mi", gmhkngami},
		{"Thuý yªn", gmhkthuyyen},
		{"C¸i bang", gmhkcaibang},
		{"Thiªn nhÉn", gmhkthiennhan},
		{"Vâ ®ang", gmhkvodang},
		{"C«n l«n", gmhkconluan},
		{"Trë l¹i", main},
		{"Tho¸t"},
	}
	CreateNewSayEx("Chän m«n ph¸i?", tbOpt)

end
function gmhkthieulam()
AddGoldItem(0, 3)
AddGoldItem(0, 11)
AddGoldItem(0, 6)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Thieu lam vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkthienvuong()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Thien vuong vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkngami()
AddGoldItem(0, 31)
AddGoldItem(0, 39)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Nga my vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkthuyyen()
AddGoldItem(0, 46)
AddGoldItem(0, 51)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Thuy yen vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhk5doc()
AddGoldItem(0, 58)
AddGoldItem(0, 61)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Ngu doc vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkduongmon()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Duong mon vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkcaibang()
AddGoldItem(0, 96)
AddGoldItem(0, 94)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Cai Bang vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkthiennhan()
AddGoldItem(0, 101)
AddGoldItem(0, 110)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Thien nhan vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkvodang()
AddGoldItem(0,121)
AddGoldItem(0,116)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Vo dang vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end
function gmhkconluan()
AddGoldItem(0, 126)
AddGoldItem(0, 127)
AddGoldItem(0, 131)
AddGoldItem(0, 140)
WriteLog("LogG7VN; " .. GetName() .. " ; ".. GetAccount() .."; da lay trang bi HKMP Con luan vao luc; " ..GetLocalDate("%Y-%m-%d %X") .. "")
end

--========================Kim O======================================

function gmtbkimo()
local tab_Content = {
"KÕt thóc ®èi tho¹i/no",
"ThiÕu L©m QuÒn ./#gmsetkimo(1)",
"ThiÕu L©m Bæng ./#gmsetkimo(2)",
"ThiÕu L©m §ao ./#gmsetkimo(3)",
"Thiªn Vu¬ng Chuú ./#gmsetkimo(4)",
"Thiªn Vu¬ng Thu¬ng ./#gmsetkimo(5)",
"Thiªn Vu¬ng §ao ./#gmsetkimo(6)",
"Nga My KiÕm ./#gmsetkimo(7)",
"Nga My Chuëng ./#gmsetkimo(8)",
"Thuý Yªn §ao ./#gmsetkimo(9)",
"Thuý Yªn Song §ao ./#gmsetkimo(10)",
"Ngò §éc Chuëng ./#gmsetkimo(11)",
"Ngò §éc §ao ./#gmsetkimo(12)",
"§­êng M«n Phi §ao ./#gmsetkimo(13)",
"§­êng M«n Ná ./#gmsetkimo(14)",
"Trang sau/gmtbkimotrang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmtbkimotrang2()
local tab_Content = {
"KÕt thóc ®èi tho¹i ./no",
"Quay l¹i ./gmtbkimo",
"§uêng M«n Phi Tiªu/#gmsetkimo(15)",
"C¸i Bang Rång/#gmsetkimo(16)",
"C¸i Bnag Bæng/#gmsetkimo(17)",
"Thiªn NhÉn KÝch/#gmsetkimo(18)",
"Thiªn NhÉn §ao/#gmsetkimo(19)",
"Vâ §ang QuyÒn/#gmsetkimo(20)",
"Vâ §ang KiÕm/#gmsetkimo(21)",
"C«n L«n §ao/#gmsetkimo(22)",
"C«n L«n KiÕm/#gmsetkimo(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmsetkimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end

--===================================================================

--========================Xich lan======================================

function gmtbxichlan()
local tab_Content = {
"KÕt thóc ®èi tho¹i/no",
"ThiÕu L©m QuÒn ./#gmsetxichlan(1)",
"ThiÕu L©m Bæng ./#gmsetxichlan(2)",
"ThiÕu L©m §ao ./#gmsetxichlan(3)",
"Thiªn Vu¬ng Chuú ./#gmsetxichlan(4)",
"Thiªn Vu¬ng Thu¬ng ./#gmsetxichlan(5)",
"Thiªn Vu¬ng §ao ./#gmsetxichlan(6)",
"Nga My KiÕm ./#gmsetxichlan(7)",
"Nga My Chuëng ./#gmsetxichlan(8)",
"Thuý Yªn §ao ./#gmsetxichlan(9)",
"Thuý Yªn Song §ao ./#gmsetxichlan(10)",
"Ngò §éc Chuëng ./#gmsetxichlan(11)",
"Ngò §éc §ao ./#gmsetxichlan(12)",
"§­êng M«n Phi §ao ./#gmsetxichlan(13)",
"§­êng M«n Ná ./#gmsetxichlan(14)",
"Trang sau/gmtbxichlantrang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmtbxichlantrang2()
local tab_Content = {
"KÕt thóc ®èi tho¹i ./no",
"Quay l¹i ./gmtbxichlan",
"§uêng M«n Phi Tiªu/#gmsetxichlan(15)",
"C¸i Bang Rång/#gmsetxichlan(16)",
"C¸i Bnag Bæng/#gmsetxichlan(17)",
"Thiªn NhÉn KÝch/#gmsetxichlan(18)",
"Thiªn NhÉn §ao/#gmsetxichlan(19)",
"Vâ §ang QuyÒn/#gmsetxichlan(20)",
"Vâ §ang KiÕm/#gmsetxichlan(21)",
"C«n L«n §ao/#gmsetxichlan(22)",
"C«n L«n KiÕm/#gmsetxichlan(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmsetxichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end

--===================================================================

--========================Minh phuong======================================

function gmtbminhphuong()
local tab_Content = {
"KÕt thóc ®èi tho¹i/no",
"ThiÕu L©m QuÒn ./#gmsetminhphuong(1)",
"ThiÕu L©m Bæng ./#gmsetminhphuong(2)",
"ThiÕu L©m §ao ./#gmsetminhphuong(3)",
"Thiªn Vu¬ng Chuú ./#gmsetminhphuong(4)",
"Thiªn Vu¬ng Thu¬ng ./#gmsetminhphuong(5)",
"Thiªn Vu¬ng §ao ./#gmsetminhphuong(6)",
"Nga My KiÕm ./#gmsetminhphuong(7)",
"Nga My Chuëng ./#gmsetminhphuong(8)",
"Thuý Yªn §ao ./#gmsetminhphuong(9)",
"Thuý Yªn Song §ao ./#gmsetminhphuong(10)",
"Ngò §éc Chuëng ./#gmsetminhphuong(11)",
"Ngò §éc §ao ./#gmsetminhphuong(12)",
"§­êng M«n Phi §ao ./#gmsetminhphuong(13)",
"§­êng M«n Ná ./#gmsetminhphuong(14)",
"Trang sau/gmtbminhphuongtrang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmtbminhphuongtrang2()
local tab_Content = {
"KÕt thóc ®èi tho¹i ./no",
"Quay l¹i ./gmtbminhphuong",
"§uêng M«n Phi Tiªu/#gmsetminhphuong(15)",
"C¸i Bang Rång/#gmsetminhphuong(16)",
"C¸i Bnag Bæng/#gmsetminhphuong(17)",
"Thiªn NhÉn KÝch/#gmsetminhphuong(18)",
"Thiªn NhÉn §ao/#gmsetminhphuong(19)",
"Vâ §ang QuyÒn/#gmsetminhphuong(20)",
"Vâ §ang KiÕm/#gmsetminhphuong(21)",
"C«n L«n §ao/#gmsetminhphuong(22)",
"C«n L«n KiÕm/#gmsetminhphuong(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmsetminhphuong(nId)
for i = 2743, 2752 do
AddGoldItem(0,10*nId+i-10)
end
end

--===================================================================

--========================Bach ho======================================

function gmtbbachho()
local tab_Content = {
"KÕt thóc ®èi tho¹i/no",
"ThiÕu L©m QuÒn ./#gmsetbachho(1)",
"ThiÕu L©m Bæng ./#gmsetbachho(2)",
"ThiÕu L©m §ao ./#gmsetbachho(3)",
"Thiªn Vu¬ng Chuú ./#gmsetbachho(4)",
"Thiªn Vu¬ng Thu¬ng ./#gmsetbachho(5)",
"Thiªn Vu¬ng §ao ./#gmsetbachho(6)",
"Nga My KiÕm ./#gmsetbachho(7)",
"Nga My Chuëng ./#gmsetbachho(8)",
"Thuý Yªn §ao ./#gmsetbachho(9)",
"Thuý Yªn Song §ao ./#gmsetbachho(10)",
"Ngò §éc Chuëng ./#gmsetbachho(11)",
"Ngò §éc §ao ./#gmsetbachho(12)",
"§­êng M«n Phi §ao ./#gmsetbachho(13)",
"§­êng M«n Ná ./#gmsetbachho(14)",
"Trang sau/gmtbbachhotrang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmtbbachhotrang2()
local tab_Content = {
"KÕt thóc ®èi tho¹i ./no",
"Quay l¹i ./gmtbbachho",
"§uêng M«n Phi Tiªu/#gmsetbachho(15)",
"C¸i Bang Rång/#gmsetbachho(16)",
"C¸i Bnag Bæng/#gmsetbachho(17)",
"Thiªn NhÉn KÝch/#gmsetbachho(18)",
"Thiªn NhÉn §ao/#gmsetbachho(19)",
"Vâ §ang QuyÒn/#gmsetbachho(20)",
"Vâ §ang KiÕm/#gmsetbachho(21)",
"C«n L«n §ao/#gmsetbachho(22)",
"C«n L«n KiÕm/#gmsetbachho(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmsetbachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end

--===================================================================


--=========================Tu mang=================================

function gmtumang()
local tab_Content = {
"KÕt thóc ®èi tho¹i ./no",
"ThiÕu L©m QuyÒn/#gmsetumang(1)",
"ThiÕu L©m Bæng/#gmsetumang(2)",
"ThiÕu L©m §ao/#gmsetumang(3)",
"Thiªn V­ong Chuú/#gmsetumang(4)",
"Thiªn V­ong Thu¬ng/#gmsetumang(5)",
"Thiªn V­ong §ao/#gmsetumang(6)",
"Nga My KiÕm/#gmsetumang(7)",
"Nga My Chuëng/#gmsetumang(8)",
"Thuý Yªn §ao/#gmsetumang(9)",
"Thuý Yªn Song §ao/#gmsetumang(10)",
"Ngò §äc Chuëng/#gmsetumang(11)",
"Ngò §éc §ao/#gmsetumang(12)",
"§uêng M«n Phi §ao/#gmsetumang(13)",
"§uêng M«n Ná/#gmsetumang(14)",
"Trang sau/gmtumang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmtumang2()
local tab_Content = {
"Roi Khoi/no",
"§uêng M«n Phi Tiªu/#gmsetumang(15)",
"C¸i Bang Rång/#gmsetumang(16)",
"C¸i Bang Bæng/#gmsetumang(17)",
"Thiªn NhÉn KÝch/#gmsetumang(18)",
"Thiªn NhÉn §ao/#gmsetumang(19)",
"Vâ §ang QuyÒn/#gmsetumang(20)",
"Vâ §ang KiÕm/#gmsetumang(21)",
"C«n L«n §ao/#gmsetumang(22)",
"C«n L«n KiÕm/#gmsetumang(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function gmsetumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end


--=========================Tu mang=================================

--=================Vao phai hoc skill 150==========================

local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "ThiÕu L©m QuyÒn",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph­îng ch©u liªn", " Minh Ph­îng t¨ng m·o", " Minh Ph­îng th­îng giíi", " Minh Ph­îng hé uyÓn", " Minh Ph­îng yªu ®¸i",
					" Minh Ph­îng cµ sa ", " Minh Ph­îng triÒn thñ ", " Minh Ph­îng t¨ng hµi ", " Minh Ph­îng yªu trôy ", " Minh Ph­îng h¹ giíi ",
				},
			},
			{
				szFaction = "ThiÕu L©m C«n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng c«n", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi", 
				},
			},
			{
				szFaction = "ThiÕu L©m §ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng ®ao", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thiªn V­¬ng Chïy",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph­îng ®Þnh quang liªn", "Minh Ph­îng ®Þnh quang kh«i", "Minh Ph­îng ®Þnh quang th­îng giíi", "Minh Ph­îng ®Þnh quang thóc o¶n", "Minh Ph­îng ®Þnh quang yªu ®¸i",
					"Minh Ph­îng ®Þnh quang kh¶i", "Minh Ph­îng ®Þnh quang chïy", "Minh Ph­îng ®Þnh quang ngoa", "Minh Ph­îng ®Þnh quang béi", "Minh Ph­îng ®Þnh quang h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng Th­¬ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph­îng ngù phong liªn", "Minh Ph­îng ngù phong kh«i", "Minh Ph­îng ngù phong th­îng giíi", "Minh Ph­îng ngù phong thóc o¶n", "Minh Ph­îng ngù phong yªu ®¸i",
					"Minh Ph­îng ngù phong kh¶i", "Minh Ph­îng ngù phong th­¬ng", "Minh Ph­îng ngù phong ngoa", "Minh Ph­îng ngù phong béi", "Minh Ph­îng ngù phong h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng §ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph­îng biÓu phong liªn", "Minh Ph­îng biÓu phong kh«i", "Minh Ph­îng biÓu phong th­îng giíi", "Minh Ph­îng biÓu phong thóc o¶n", "Minh Ph­îng biÓu phong yªu ®¸i",
					"Minh Ph­îng biÓu phong kh¶i", "Minh Ph­îng biÓu phong ®ao", "Minh Ph­îng biÓu phong ngoa", "Minh Ph­îng biÓu phong béi", "Minh Ph­îng biÓu phong h¹ giíi",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi §ao §­êng M«n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph­îng nÆc ¶nh h¹ng liªn", "Minh Ph­îng nÆc ¶nh qu¸n", "Minh Ph­îng nÆc ¶nh th­îng giíi", "Minh Ph­îng nÆc ¶nh hé uyÓn", "Minh Ph­îng nÆc ¶nh triÒn yªu",
					"Minh Ph­îng nÆc ¶nh gi¸p", "Minh Ph­îng nÆc ¶nh phi ®ao", "Minh Ph­îng nÆc ¶nh ngoa", "Minh Ph­îng nÆc ¶nh yªu trôy", "Minh Ph­îng nÆc ¶nh h¹ giíi",
				},
			},
			{
				szFaction = "Ná §­êng M«n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph­îng cùc quang h¹ng liªn", "Minh Ph­îng cùc quang qu¸n", "Minh Ph­îng cùc quang th­îng giíi", "Minh Ph­îng cùc quang hé uyÓn", "Minh Ph­îng cùc quang triÒn yªu",
					"Minh Ph­îng cùc quang gi¸p", "Minh Ph­îng cùc quang ná ", "Minh Ph­îng cùc quang ngoa ", "Minh Ph­îng cùc quang yªu trôy ", "Minh Ph­îng cùc quang h¹ giíi ",
				},
			},
			{
				szFaction = "Phi Tiªu §­êng M«n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph­îng th­íc kim h¹ng liªn ", " Minh Ph­îng th­íc kim qu¸n ", " Minh Ph­îng th­íc kim th­îng giíi ", " Minh Ph­îng th­íc kim hé uyÓn ", " Minh Ph­îng th­íc kim triÒn yªu ",
					" Minh Ph­îng th­íc kim gi¸p ", " Minh Ph­îng th­íc kim phi tiªu ", " Minh Ph­îng th­íc kim ngoa ", " Minh Ph­îng th­íc kim yªu trôy ", " Minh Ph­îng th­íc kim h¹ giíi ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ngò §éc Ch­ëng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph­îng ®éc sa h¹ng liªn ", " H¹ch Hæ ®éc sa ph¸t ®¸i ", " Minh Ph­îng ®éc sa th­îng giíi ", " Minh Ph­îng ®éc sa hé uyÓn ", " Minh Ph­îng ®éc sa yªu ®¸i ",
					" Minh Ph­îng ®éc sa bÝ trang ", " Minh Ph­îng ®éc sa triÒn thñ ", " Minh Ph­îng ®éc sa ngoa ", " Minh Ph­îng ®éc sa yªu trôy ", " Minh Ph­îng ®éc sa h¹ giíi ",
				},
			},
			{
				szFaction = "Ngò §éc §ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph­îng u linh h¹ng liªn ", " H¹ch Hæ u linh ph¸t ®¸i ", " Minh Ph­îng u linh th­îng giíi ", " Minh Ph­îng u linh hé uyÓn ", " Minh Ph­îng u linh yªu ®¸i ",
					" Minh Ph­îng u linh bÝ trang ", " Minh Ph­îng u linh ®ao ", " Minh Ph­îng u linh ngoa ", " Minh Ph­îng u linh yªu trôy ", " Minh Ph­îng u linh h¹ giíi ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip =
		{
			{
				szFaction = "Nga Mi KiÕm",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph­îng l­u v©n ch©u liªn", "Minh Ph­îng l­u v©n ph¸t ®¸i", "Minh Ph­îng l­u v©n th­îng giíi", "Minh Ph­îng l­u v©n hé uyÓn", "Minh Ph­îng l­u v©n yªu ®¸i ",
					"Minh Ph­îng l­u v©n sam", "Minh Ph­îng l­u v©n kiÕm", "Minh Ph­îng l­u v©n ngoa", "Minh Ph­îng l­u v©n béi ", "Minh Ph­îng l­u v©n h¹ giíi ",
				},
			},
			{
				szFaction = "Nga Mi Ch­ëng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph­îng hµn ngäc ch©u liªn ", "Minh Ph­îng hµn ngäc ph¸t ®¸i", "Minh Ph­îng hµn ngäc th­îng giíi", "Minh Ph­îng hµn ngäc hé uyÓn", "Minh Ph­îng hµn ngäc yªu ®¸i",
					"Minh Ph­îng hµn ngäc sam", "Minh Ph­îng hµn ngäc triÒn thñ ", "Minh Ph­îng hµn ngäc ngoa ", "Minh Ph­îng hµn ngäc béi ", "Minh Ph­îng hµn ngäc h¹ giíi ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Thóy Yªn §ao (Ngo¹i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph­îng hång nhan ch©u liªn ", "Minh Ph­îng hång nhan ph¸t ®¸i", "Minh Ph­îng hång nhan th­îng giíi", "Minh Ph­îng hång nhan hé uyÓn", "Minh Ph­îng hång nhan yªu ®¸i",
					"Minh Ph­îng hång nhan sam", "Minh Ph­îng hång nhan ®ao ", "Minh Ph­îng hång nhan ngoa ", "Minh Ph­îng hång nhan béi ", "Minh Ph­îng hång nhan h¹ giíi ",
				},
			},
			{
				szFaction = "Thóy Yªn Song §ao (Néi)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph­îng ¶o th¸i ch©u liªn ", "Minh Ph­îng ¶o th¸i ph¸t ®¸i", "Minh Ph­îng ¶o th¸i th­îng giíi", "Minh Ph­îng ¶o th¸i hé uyÓn", "Minh Ph­îng ¶o th¸i yªu ®¸i",
					"Minh Ph­îng ¶o th¸i sam", "Minh Ph­îng ¶o th¸i ®ao ", "Minh Ph­îng ¶o th¸i ngoa ", "Minh Ph­îng ¶o th¸i béi ", "Minh Ph­îng ¶o th¸i h¹ giíi ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C¸i Bang Ch­ëng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph­îng hé ph¸p h¹ng liªn", " Minh Ph­îng hé ph¸p ®Çu hoµn", " Minh Ph­îng hé ph¸p th­îng giíi ", " Minh Ph­îng hé ph¸p hé uyÓn ", " Minh Ph­îng hé ph¸p thóc yªu",
					" Minh Ph­îng hé ph¸p c¸i y", " Minh Ph­îng hé ph¸p triÒn thñ ", " Minh Ph­îng hé ph¸p ngoa ", "Minh Ph­îng hé ph¸p béi ", " Minh Ph­îng hé ph¸p h¹ giíi ",
				},
			},
			{
				szFaction = "C¸i Bang Bæng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph­îng trõng giíi h¹ng liªn", "Minh Ph­îng trõng giíi ®Çu hoµn", "Minh Ph­îng trõng giíi th­îng giíi ", "Minh Ph­îng trõng giíi hé uyÓn", "Minh Ph­îng trõng giíi thóc yªu",
					"Minh Ph­îng trõng giíi c¸i y", "Minh Ph­îng trõng giíi tr­îng", "Minh Ph­îng trõng giíi ngoa", "Minh Ph­îng trõng giíi béi", "Minh Ph­îng trõng giíi h¹ giíi ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "ChiÕn NhÉn",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph­îng xÝch minh h¹ng liªn", "H¹ch Hæ xÝch minh kh«i", "Minh Ph­îng xÝch minh th­îng giíi", "Minh Ph­îng xÝch minh hé o¶n", "Minh Ph­îng xÝch minh yªu ®¸i",
					"Minh Ph­îng xÝch minh gi¸p", "Minh Ph­îng xÝch minh th­¬ng", "Minh Ph­îng xÝch minh ngoa", "Minh Ph­îng xÝch minh béi", "Minh Ph­îng xÝch minh h¹ giíi",
				},
			},
			{
				szFaction = "Ma NhÉn",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph­îng s¸t viªm h¹ng liªn", "H¹ch Hæ s¸t viªm kh«i", "Minh Ph­îng s¸t viªm th­îng giíi", "Minh Ph­îng s¸t viªm hé o¶n", "Minh Ph­îng s¸t viªm yªu ®¸i",
					"Minh Ph­îng s¸t viªm gi¸p", "Minh Ph­îng s¸t viªm ®ao", "Minh Ph­îng s¸t viªm ngoa", "Minh Ph­îng s¸t viªm béi", "Minh Ph­îng s¸t viªm h¹ giíi",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "Vâ §ang KhÝ",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph­îng tiªn ©m phï ", " Minh Ph­îng tiªn ©m qu¸n", " Minh Ph­îng tiªn ©m th­îng giíi ", " Minh Ph­îng tiªn ©m tô ", " Minh Ph­îng tiªn ©m ph¸p ®¸i ",
					" Minh Ph­îng tiªn ©m ®¹o bµo ", " Minh Ph­îng tiªn ©m kiÕm ", " Minh Ph­îng tiªn ©m ngoa ", " Minh Ph­îng tiªn ©m béi ", " Minh Ph­îng tiªn ©m h¹ giíi ",
				},
			},
			{
				szFaction = "Vâ §ang KiÕm",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph­îng ®¹o minh phï ", " Minh Ph­îng ®¹o minh qu¸n ", " Minh Ph­îng ®¹o minh th­îng giíi ", " Minh Ph­îng ®¹o minh tô ", " Minh Ph­îng ®¹o minh ph¸p ®¸i ",
					" Minh Ph­îng ®¹o minh ®¹o bµo ", " Minh Ph­îng ®¹o minh kiÕm ", " Minh Ph­îng ®¹o minh ngoa ", " Minh Ph­îng ®¹o minh béi ", " Minh Ph­îng ®¹o minh h¹ giíi ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C«n L«n §ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph­îng thiªn canh h¹ng liªn ", "Minh Ph­îng thiªn canh ®¹o qu¸n", "Minh Ph­îng thiªn canh th­îng giíi", "Minh Ph­îng thiªn canh hé uyÓn", "Minh Ph­îng thiªn canh ph¸p ®¸i",
					"Minh Ph­îng thiªn canh ®¹o bµo", "Minh Ph­îng thiªn canh ®ao", "Minh Ph­îng thiªn canh ngoa", "Minh Ph­îng thiªn canh béi", "Minh Ph­îng thiªn canh h¹ giíi",
				},
			},
			{
				szFaction = "C«n L«n KiÕm",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph­îng ng¹o s­¬ng h¹ng liªn ", "Minh Ph­îng ng¹o s­¬ng ®¹o qu¸n", "Minh Ph­îng ng¹o s­¬ng th­îng giíi", "Minh Ph­îng ng¹o s­¬ng hé uyÓn", "Minh Ph­îng ng¹o s­¬ng ph¸p ®¸i",
					"Minh Ph­îng ng¹o s­¬ng ®¹o bµo", "Minh Ph­îng ng¹o s­¬ng kiÕm ", "Minh Ph­îng ng¹o s­¬ng ngoa ", "Minh Ph­îng ng¹o s­¬ng béi", "Minh Ph­îng ng¹o s­¬ng h¹ giíi",
				},
			},
		},
	},
}

local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6},
	[4] = {7, 8},
	[5] = {9, 10},
}

function gmvaophaihoc150()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vª", dialog_main})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vª.", choose_faction},
		{"Kªt thóc ®èi tho¹i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--90£¬120£¬150¼¶¼¼ÄÜ
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1)--?»¼¶Çá¹¦
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end


function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end
-----=======code dot 2 ============----------------



----=========code ho tro them=================

function nhapgifcodethem()
AskClientForString("hotrothem", "", 1, 20, "Xin nhËp vµo m· code");
end

function hotrothem(macode)
	

	if macode ~= "ABFG1000M6" 
	and macode ~= "0WF17000M6"
	and macode ~= "J7200WJVA"
	and macode ~= "J8AA4008I1"
	and macode ~= "J8000EB7LK"
	then
		Say("M· code nhËp kh«ng ®óng !!!")
		return 1
	end

	local tasktanthu = 3910 -- id task ho tro them
		local gt_tasktanthu = GetTask(tasktanthu);
		if gt_tasktanthu > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn hç trî t©n thñ 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tbAwardTanThu = 
	{	

		--{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},

		{szName = "Tiªn Th¶o Lé", tbProp={6,1,71,0,0,0,0}, nCount=5,nExpiredTime=60*24*3,nBindState=-2},
		--{szName = "B¸ch qu¶ lé", tbProp={0,10,2,7,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "ThiÕt La H¸n", tbProp={6,1,23,1,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Thiªn s¬n b¶o lé", tbProp={6,1,72,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "B¸ch qu¶ lé", tbProp={6,1,73,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "Manh ban do SHXT 1000", tbProp={6,1,2514,1,0,0,0}, nCount=1,nExpiredTime=60*24*3,nBindState=-2},
		--{szName = "Lenh Bai Tan Thu", tbProp={6,1,4261,0,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Ngò Hoa LÔ Bao T©n Thñ", tbProp={6,1,4335,1,0,0,0}, nCount=1,nBindState = -2},
		--{szName = "Lenh bai hoan thanh da tau", tbProp={6,1,4336,1,0,0,0}, nCount=2,nBindState = -2,nExpiredTime=60*24*3},
		--{szName = "Than hanh phu", tbProp={6,1,1266,1,0,0,0}, nCount=1,nBindState = -2,nExpiredTime=60*24*3},
		--{szName = "Hoi thanh phu 100 lan", tbProp={6,1,1082,0,0,0,0}, nCount=1,nExpiredTime=60*24*3,nBindState=-2},
	}
	tbAwardTemplet:GiveAwardByList(tbAwardTanThu, "Phan thuong GIFTCODE 2018");

	

	SetTask(tasktanthu,1)

	Say("Xin chóc mõng ®· nhËn ®uîc hç trî t©n thñ")
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> NhËp Code <color=yellow>Like, Share FB<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199)")

end


--==========================hotrotanthu======================================

function nhapgifcodetanthu()
AskClientForString("hotrotanthucap10", "", 1, 20, "Xin nhËp vµo m· code");
end



function hotrotanthucap10(macode)
	

	if macode ~= "AMDCVW02GM" 
	and macode ~= "AMQM1202JK"
	
	then
		Say("M· code nhËp kh«ng ®óng !!!")
		return 1
	end

	local tasktanthu = 3910 -- id task ho tro tan thu
		local gt_tasktanthu = GetTask(tasktanthu);
		if gt_tasktanthu > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn hç trî t©n thñ 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tbAwardTanThu = 
	{	

		{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		{szName = "Tiªn Th¶o Lé 8h", tbProp={6,1,1181,0,0,0,0}, nCount=10,nBindState=-2},

		{szName = "LÖnh bµi t©n thñ", tbProp={6,1,4261,0,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "LÖnh bµi hoµn thµnh d· tÈu", tbProp={6,1,4336,1,0,0,0}, nCount=5,nBindState=-2},
		--{szName = "ThiÕt La H¸n", tbProp={6,1,23,1,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Thiªn s¬n b¶o lé", tbProp={6,1,72,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "B¸ch qu¶ lé", tbProp={6,1,73,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		
	}
	tbAwardTemplet:GiveAwardByList(tbAwardTanThu, "Phan thuong GIFTCODE 2018");

	

	local nCurLevel = GetLevel()
	if nCurLevel < 50 then
		local nAddLevel = 50 - nCurLevel
		ST_LevelUp(nAddLevel)
	end

	SetTask(tasktanthu,1)

	Say("Xin chóc mõng ®· nhËn ®uîc hç trî t©n thñ")
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> NhËp Code <color=yellow>Like, Share FB<color> t¹i npc Hç Trî T©n Thñ (Ba L¨ng HuyÖn 203/199)")

end

function hotro_khoa_tgian(idex)
ITEM_SetExpiredTime(idex, 10080*1);--10080 1 tuan * 1
SyncItem(idex);
--SetItemBindState(itemindex,-2) -- Khoa bao hiem vinh vien
end


--===========================gmnhanthuongdatmoc=================================
function gmnhanthuongdatmoc()
local tbSay = {}
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 30 ./ptmoc30")
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 40 ./ptmoc40")
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 50 ./ptmoc50")
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 60 ./ptmoc60")
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 90 ./ptmoc90")
	tinsert(tbSay,"PhÇn thuëng ®¹t cÊp 119 ./ptmoc119")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ ®¹t mèc cÊp ®é 30, ®Õn 120:" , getn(tbSay), tbSay)
end

function ptmoc30()

	if(GetLevel()<30) then
		Say("§i luyÖn c«ng ®Õn cÊp 30 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 790 -- id task thuong 30
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 30 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()

	--Earn(5000)--5000 luong vang

	inVatPham = AddGoldItem(0, 177);--Giay kim phong 40
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 178);--Ao kim phong 40
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 180);--Nhan thuy kim phong cap 40
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 183);--Ngoc boi kim phong 40
	SetItemBindState(inVatPham,-2)

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 30")
end

function tamtienthaolobinhthuong()
	for i=1,4 do
	inVatPham = AddItem(6,1,71,0,0,0,0)--4 tien thao lo binh thuong
	SetItemBindState(inVatPham,-2)
	end
end;

function ptmoc40()

	if(GetLevel()<40) then
		Say("§i luyÖn c«ng ®Õn cÊp 40 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 791 -- id task thuong 40
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 40 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()

	--Earn(5000)--5000 luong vang

	inVatPham = AddGoldItem(0, 182);--Bao tay kim phong 50
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 181);--Dai lung kim phong 50
	SetItemBindState(inVatPham,-2)

	--inVatPham = AddItem(6,1,26,0,0,0,0)--vo lam mat tich
	--SetItemBindState(inVatPham,-2)

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 40")
end

function ptmoc50()

	if(GetLevel()<50) then
		Say("§i luyÖn c«ng ®Õn cÊp 50 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 792 -- id task thuong 50
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 50 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()

	Earn(10000)--1 van

	inVatPham = AddGoldItem(0, 185);--Nhan moc phong cap 60
	SetItemBindState(inVatPham,-2)

	--inVatPham = AddItem(0,10,6,10,0,0,0)--Ngua bon tieu
	--hotro_khoa_tgian(inVatPham)
	--SetItemBindState(inVatPham,-2)

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 110")
end

function ptmoc60()

	if(GetLevel()<60) then
		Say("§i luyÖn c«ng ®Õn cÊp 60 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 793 -- id task thuong 60
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 60 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()
	
	--inVatPham = AddItem(6,1,26,0,0,0,0)--vo lam mat tich
	--SetItemBindState(inVatPham,-2)

	inVatPham = AddEventItem(239)--tu thuy tinh
	SetItemBindState(inVatPham,-2)
	inVatPham = AddEventItem(239)--tu thuy tinh
	SetItemBindState(inVatPham,-2)

	Earn(100000)--10 van

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 60")
end

function ptmoc90()

	if(GetLevel()<90) then
		Say("§i luyÖn c«ng ®Õn cÊp 90 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 794 -- id task thuong 90
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 90 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()

	inVatPham = AddItem(6,1,26,0,0,0,0)--vo lam mat tich
	SetItemBindState(inVatPham,-2)

	inVatPham = AddItem(6,1,22,0,0,0,0)--tay tuy kinh
	SetItemBindState(inVatPham,-2)
	
	--local ItemIndex = AddItem(6,1,2334,0,0,0,0) -- ma bai ngua phieu vu
	--ITEM_SetExpiredTime(ItemIndex, 10080);
	--SyncItem(ItemIndex);
	--SetItemBindState(ItemIndex,-2)

	inVatPham = AddEventItem(353)--tinh hong bao thach
	SetItemBindState(inVatPham,-2)

	Earn(200000)--20 van

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 90")
end

function ptmoc119()

	if(GetLevel()<119) then
		Say("§i luyÖn c«ng ®Õn cÊp 119 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 795 -- id task thuong 119
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 119 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()

	--inVatPham = AddGoldItem(0, 420);--trang bi dong sat
	--hotro_khoa_tgian(inVatPham)
	--SetItemBindState(inVatPham,-2)
	--inVatPham = AddGoldItem(0, 421);
	--hotro_khoa_tgian(inVatPham)
	--SetItemBindState(inVatPham,-2)
	--inVatPham = AddGoldItem(0, 422);
	--hotro_khoa_tgian(inVatPham)
	--SetItemBindState(inVatPham,-2)
	--inVatPham = AddGoldItem(0, 423);
	--hotro_khoa_tgian(inVatPham)
	--SetItemBindState(inVatPham,-2)
	
	--inVatPham = AddItem(0,10,7,1,0,0)--Ngua bon tieu
	inVatPham = AddItem(0,10,8,1,5,0)--Ngua phi van
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)

	Earn(500000)--50 van

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 119")
end

function ptmoc150chon()

	if(GetLevel()<150) then
		Say("§i luyÖn c«ng ®Õn cÊp 150 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 796 -- id task thuong 150
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 150 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	tamtienthaolobinhthuong()
	
	Earn(1000000)--100 van

	inVatPham = AddGoldItem(0, 204);--Trang bi hong anh
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 205);
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 206);
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddGoldItem(0, 207);
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)

	local idtask = 796 -- id task thuong 150
	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 150")

	--local tbSay = {}
	--tinsert(tbSay,"HuyÒn viªn thiÕu l©m quyÒn ./#ptmoc150ok(1)")
	--tinsert(tbSay,"HuyÒn viªn thiÕu l©m c«n ./#ptmoc150ok(2)")
	--tinsert(tbSay,"HuyÒn viªn thiÕu l©m ®ao ./#ptmoc150ok(3)")
	--tinsert(tbSay,"HuyÒn viªn thiªn v­ong chuú ./#ptmoc150ok(4)")
	--tinsert(tbSay,"HuyÒn viªn thiªn v­ong th­ong ./#ptmoc150ok(5)")
	--tinsert(tbSay,"HuyÒn viªn thiªn v­ong ®ao ./#ptmoc150ok(6)")
	--tinsert(tbSay,"HuyÒn viªn nga my kiÕm ./#ptmoc150ok(7)")
	--tinsert(tbSay,"HuyÒn viªn nga mi chuëng ./#ptmoc150ok(8)")
	--tinsert(tbSay,"HuyÒn viªn thuý yªn ®ao ./#ptmoc150ok(9)")
	--tinsert(tbSay,"HuyÒn viªn thuý yªn song ®ao ./#ptmoc150ok(10)")
	--tinsert(tbSay,"HuyÒn viªn ngò ®éc chuëng ./#ptmoc150ok(11)")
	--tinsert(tbSay,"§Ó sau nµy ta nhËn ./Quit")
	--tinsert(tbSay,"TiÕp theo ./ptmoc150chon2")
	--Say("PhÇn thuëng ®¹t mèc cÊp ®é 150 cña ®¹i hiÖp sÏ nhËn gåm: 1 bé trang bÞ HuyÒn Viªn tù chän, 8 tiªn th¶o lé ®Æc biÖt, 200 v¹n, b©y giê ®¹i hiÖp chän bé trang bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function ptmoc150chon2()
	
	if(GetLevel()<150) then
		Say("§i luyÖn c«ng ®Õn cÊp 150 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local idtask = 796 -- id task thuong 150
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 150 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 60 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 60 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tbSay = {}
	tinsert(tbSay,"HuyÒn viªn ngò ®éc ®ao ./#ptmoc150ok(12)")
	tinsert(tbSay,"HuyÒn viªn ®uêng m«n phi ®ao ./#ptmoc150ok(13)")
	tinsert(tbSay,"HuyÒn viªn ®uêng m«n ná ./#ptmoc150ok(14)")
	tinsert(tbSay,"HuyÒn viªn ®uêng m«n phi tiªu ./#ptmoc150ok(15)")
	tinsert(tbSay,"HuyÒn viªn c¸i bang rång ./#ptmoc150ok(16)")
	tinsert(tbSay,"HuyÒn viªn c¸i bang bæng ./#ptmoc150ok(17)")
	tinsert(tbSay,"HuyÒn viªn thiªn nhÉn kÝch ./#ptmoc150ok(18)")
	tinsert(tbSay,"HuyÒn viªn thiªn nhÉn ®ao ./#ptmoc150ok(19)")
	tinsert(tbSay,"HuyÒn viªn vâ ®ang khÝ ./#ptmoc150ok(20)")
	tinsert(tbSay,"HuyÒn viªn vâ ®ang kiÕm ./#ptmoc150ok(21)")
	tinsert(tbSay,"HuyÒn viªn c«n l«n ®ao ./#ptmoc150ok(22)")
	tinsert(tbSay,"HuyÒn viªn c«n l«n kiÕm ./#ptmoc150ok(23)")
	tinsert(tbSay,"§Ó sau nµy ta nhËn ./Quit")
	tinsert(tbSay,"Trë vÒ ./ptmoc150chon")
	Say("PhÇn thuëng ®¹t mèc cÊp ®é 150 cña ®¹i hiÖp sÏ nhËn gåm: 1 bé trang bÞ HuyÒn Viªn tù chän, 8 tiªn th¶o lé ®Æc biÖt, 200 v¹n, b©y giê ®¹i hiÖp chän bé trang bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function ptmoc150ok(nId)

	local inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,1181,0,0,0,0)
	SetItemBindState(inVatPham,-2)

	Earn(2000000)--200 van

	--for i = 1825, 1834 do--trang bi tu mang
	for i = 1595, 1604 do--trang bi huyen vien
	inVatPham = AddGoldItem(0,10*nId+i-10)
	SetItemBindState(inVatPham,-2)
	end

	local idtask = 796 -- id task thuong 150
	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 150")
end

function ptmoc160()

	if(GetLevel()<160) then
		Say("§i luyÖn c«ng ®Õn cÊp 160 råi quay l¹i ®©y nhËn th­áng")
		return 1
	end

	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("§¹i hiÖp h·y gia nhËp m«n ph¸i truíc khi nhËn thuëng 160", 0)
		return 1
	end

	local idtask = 797 -- id task thuong 160
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("§¹i hiÖp chØ ®uîc nhËn phÇn thuëng ®¹t cÊp 160 1 lÇn th«i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1;
	end

	--local thanbikthach_id = 398--than bi khoang thach
	
	--for i = 1, 11 do --10 vien than bi khoang thach nang cap trang bÞ hv len tu mang
	--local inVatPham = AddItem(6,1,thanbikthach_id,0,0,0,0)
	--SetItemBindState(inVatPham,-2)
	--end

	tamtienthaolobinhthuong()

	Earn(150000)--150 van

	inVatPham  = AddGoldItem(0,3555)--Cap nhan vo danh
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)
	inVatPham  = AddGoldItem(0,3556)--Cap nhan vo danh
	hotro_khoa_tgian(inVatPham)
	SetItemBindState(inVatPham,-2)

	AddStackItem(50,4,417,1,1,0,0,0)--50 xu

	--nhanskill180()

	SetTask(idtask,1)
	Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 160");
	--Say("Xin chóc mõng ®· nhËn ®uîc phÇn thuëng ®¹t mèc cÊp 160 gåm 10 thÇn bÝ kho¸ng th¹ch ®Ó n©ng cÊp trang bÞ HuyÒn viªn lªn Tö m·ng, 300 v¹n, kü n¨ng 180 cÊp 20.")
end

function nhanskill180()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh«ng cã m«n ph¸i mµ ®åi nhËn skill thÊt truyÒn, ta kh«ng cã thêi gian ®ïa víi ng­¬i", 0)
		return 1
	end

	for i=1,10 do
			if (nFaction==i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
				end
			end
		end
end

SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229}

--==============Test Event==================
function gmhotrotestevent()
	local tbOpt = {}
	tinsert(tbOpt,"Event Gi¸ng sinh NL./testev_GS_NL")
	tinsert(tbOpt,"Event Gi¸ng sinh TP./testev_GS_TP")
	--tinsert(tbOpt,"Event Lua SHML T7 NL./sachoamht72016NL")
	--tinsert(tbOpt,"Event Lua SHML T7 TP./sachoamht72016TP")
	--tinsert(tbOpt,"Event Lua Nuoc T6 NL./luanuoct6nl")
	--tinsert(tbOpt,"Event Lua Nuoc T6 TP./luanuoct6tp")
	--tinsert(tbOpt,"Event SN G7 TP./eventsng7tp")
	--tinsert(tbOpt,"Event SN G7 NL./eventsng7nl")
	--tinsert(tbOpt,"Event 8 thang 3./event8thang3")
	--tinsert(tbOpt,"Event tet nguyen dan 2016./tetnguyendan2016")
	--tinsert(tbOpt,"Event Noel 2015./testeventNoel")
	--tinsert(tbOpt,"Event 20 th¸ng 10./testev20thang10")
	--tinsert(tbOpt,"Event Khai Hoan Vien./testKhaiHoanVien")
	--tinsert(tbOpt,"Event Sac Hoa Mua He./testSacHoaMuaHe")
	--tinsert(tbOpt,"Event Sac Hoa Mua He TP./testSacHoaMuaHeTP")
	--tinsert(tbOpt,"Event Vu Lan Bao Hieu./testVuLanBaoHieu")
	--tinsert(tbOpt,"Event 20 th¸ng 10 NL./testev20thang10NL")
	--tinsert(tbOpt,"Event 20 th¸ng 10 TP./testev20thang10TP")
	--tinsert(tbOpt,"Event Trung thu./testevTrungThu")
	--tinsert(tbOpt,"testQuocKhanhTP./testQuocKhanhTP")
	--tinsert(tbOpt,"testQuocKhanhNL./testQuocKhanhNL")
	--tinsert(tbOpt,"Event §æi vËt phÈm, trang bÞ./testdoivatpham")
	tinsert(tbOpt,"KÕt thóc ®èi tho¹i./khongcangi")
	Say("§¹i hiÖp cÇn g×?", getn(tbOpt), tbOpt)
end

function testev_GS_NL()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="Tui Giang Sinh", tbProp={6,1,3076,1,0,0}, nExpiredTime=20171226,nCount=50},
	{szName="Ao Giang Sinh", tbProp={6,1,3074,1,0,0}, nExpiredTime=20171226,nCount=50},
	{szName="Non Giang Sinh", tbProp={6,1,3072,1,0,0}, nExpiredTime=20171226,nCount=50},
	{szName="Quan Giang Sinh", tbProp={6,1,3075,1,0,0}, nExpiredTime=20171226,nCount=50},
	{szName="Banh Bi Do", tbProp={6,1,30166,1,0,0}, nExpiredTime=20171226,nCount=50},
	{szName="Ga Quay", tbProp={6,1,30167,1,0,0}, nExpiredTime=20171226,nCount=50},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "testev_GS_NL");
end

function testev_GS_TP()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--{szName = "Phiªn Vò",tbProp={0,10,8,10,0,0,0},nCount=1,nExpiredTime=24*60*30},
	--{szName = "B«n Tiªu",tbProp={0,10,6,1,5,0,0},nCount=1,nExpiredTime=24*60*30},
	--{szName = "BÝ kÝp Hãa c«ng ®¹i ph¸p",	tbProp = {6, 1, 4276, 1, 0, 0}, nCount=10},
	{szName="Ong Gia Noel Hong", tbProp={6,1,30168,1,0,0}, nExpiredTime=20171226,nCount=500},
	{szName="Hop Qua Giang Sinh", tbProp={6,1,3080,1,0,0}, nExpiredTime=20171226,nCount=500},
	{szName="Banh Giang Sinh", tbProp={6,1,3082,1,0,0}, nExpiredTime=20171226,nCount=250},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "testev_GS_TP");
end

function testev20thang10NL()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="Bong Hong Do", tbProp={6,1,4285,1,0,0}, nExpiredTime=20161103,nCount=100},
	{szName="Hoang Thach", tbProp={6,1,30153,1,0,0}, nExpiredTime=20161103,nCount=500},
	{szName="Thien Tinh Thach", tbProp={6,1,30154,1,0,0}, nExpiredTime=20161103,nCount=100},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "TestEV2010");
end

function testev20thang10TP()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="Bo Hoa Hong", tbProp={6,1,4284,1,0,0}, nExpiredTime=20161103,nCount=200},
	{szName="Bang Tinh Thach", tbProp={6,1,30155,1,0,0}, nExpiredTime=20161103,nCount=1000},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "TestEV2010");
end

function sachoamht72016NL()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="Cuén ChØ", tbProp={6,1,3138,1,0,0}, nExpiredTime=20160802,nCount=100},
	{szName="M¶nh V¶i Mµu Xanh L¸", tbProp={6,1,3143,1,0,0}, nExpiredTime=20160802,nCount = 100},
	{szName="¸o LÝnh BÞ R¸ch", tbProp={6,1,3137,1,0,0}, nExpiredTime=20160802,nCount = 500},
	{szName="Khuy ¸o", tbProp={6,1,3140,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="M¶nh V¶i", tbProp={6,1,3139,1,0,0}, nExpiredTime=20160802,nCount=500}
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function sachoamht72016TP()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="¸o LÝnh Míi", tbProp={6,1,3142,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="ChiÕc ¸o LÝnh Míi (®iÓm kinh nghiÖm)", tbProp={6,1,30192,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="¸o LÝnh §· Söa", tbProp={6,1,3141,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="Hßa ThÞ BÝch", tbProp={6,1,3145,1,0,0}, nExpiredTime=20160802,nCount=50}
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function luanuoct6tp()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Bao G¹o Th­êng", tbProp = {6, 1, 4327, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	--{szName = "Bao G¹o Th¬m", tbProp = {6, 1, 4328, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "Bao G¹o §Æc BiÖt", tbProp = {6, 1, 4329, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function luanuoct6nl()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "C©y Lóa Xanh", tbProp = {6, 1, 4332, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "C©y Lóa Vµng", tbProp = {6, 1, 4333, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "L­ìi LiÒm S¾t", tbProp = {6, 1, 4330, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "L­ìi LiÒm B¹c", tbProp = {6, 1, 4331, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "Bao T¶i", tbProp = {6, 1, 4326, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function eventsng7nl()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Bét M×", tbProp = {6, 1, 30204, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B¬", tbProp = {6, 1, 30205, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "S÷a", tbProp = {6, 1, 30206, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "Chocolate", tbProp = {6, 1, 30207, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "Tr¸i C©y", tbProp = {6, 1, 30208, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "§­êng", tbProp = {6, 1, 30209, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function eventsng7tp()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "B¸nh Kem Th­êng", tbProp = {6, 1, 30210, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B¸nh Kem Chocolate", tbProp = {6, 1, 30211, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B¸nh Kem Tr¸i C©y", tbProp = {6, 1, 30212, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B¸nh Kem Sinh NhËt", tbProp = {6, 1, 30213, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function event8thang3()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Hoa Cóc", tbProp = {6, 1, 4311, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "Hoa Lan", tbProp = {6, 1, 4312, 1,0,0}, nCount = 50, nExpiredTime = 20170420},
	{szName = "Hoa B¸ch Hîp", tbProp = {6, 1, 4313, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "Hoa Hång", tbProp = {6, 1, 4314, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "D©y Cét Hoa", tbProp = {6, 1, 4315, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "ChiÕc N¬", tbProp = {6, 1, 4316, 1,0,0}, nCount = 100, nExpiredTime = 20170420},

	{szName = "Bã Hoa", tbProp = {6, 1, 4317, 1,0,0}, nCount = 500, nExpiredTime = 20170420},
	{szName = "Hép Quµ", tbProp = {6, 1, 4318, 1,0,0}, nCount = 50, nExpiredTime = 20170420},

}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function tetnguyendan2016()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Tr¸i dõa", tbProp = {6, 1, 30367, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr¸i ®u ®ñ", tbProp = {6, 1, 30368, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr¸i sung", tbProp = {6, 1, 30369, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr¸i m·ng cÇu", tbProp = {6, 1, 30370, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr¸i xoµi", tbProp = {6, 1, 30371, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "G¹o nÕp", tbProp = {6, 1, 4302, 1,0,0}, nCount = 1000, nExpiredTime = 20160303},
	{szName = "ThÞt heo", tbProp = {6, 1, 4304, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "L¸ gãi b¸nh", tbProp = {6, 1, 30365, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "LÔ VËt N¨m Míi", tbProp = {6, 1, 3086, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
	--{szName = "Bao L× X× N¨m Míi", tbProp = {6, 1, 4305, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
	{szName = "Ph¸o Hoa Mõng Xu©n", tbProp = {6, 1, 3087, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event noel 2015");
end

function testQuocKhanhNL()

if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "", tbProp = {6, 1, 4278, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
	{szName = "", tbProp = {6, 1, 4279, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
	{szName = "", tbProp = {6, 1, 4280, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
	{szName = "", tbProp = {6, 1, 4281, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
	{szName = "", tbProp = {6, 1, 4283, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
	{szName = "Day thung", tbProp = {6, 1, 2976, 1,0,0}, nCount = 500, nExpiredTime = 20170924},
	{szName = "", tbProp = {6, 1, 2977, 1,0,0}, nCount = 200, nExpiredTime = 20170924},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test QK 2016");
end

function testQuocKhanhTP()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "L¸ cê ®á sao vµng", tbProp = {6, 1, 4282, 1,0,0}, nCount = 500, nExpiredTime = 20170924},
	{szName = "Ph¸o hoa quèc kh¸nh", tbProp = {6, 1, 2979, 1,0,0}, nCount = 500, nExpiredTime = 20170924},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test QK 2016");
end

function testeventNoel()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--[1]	={szName = "Phi Tèc hoµn", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
	--{szName = "Gµ quay", tbProp = {6, 1, 30167, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "Nãn gi¸ng sinh", tbProp = {6, 1, 3072, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "QuÇn gi¸ng sinh", tbProp = {6, 1, 3075, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "B¸nh bÝ ®á", tbProp = {6, 1, 30166, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "Tói gi¸ng sinh", tbProp = {6, 1, 3076, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "¸o gi¸ng sinh", tbProp = {6, 1, 3074, 1,0,0}, nCount = 10, nExpiredTime = 20151228},

	{szName = "Hép quµ gi¸ng sinh", tbProp = {6, 1, 3080, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
	{szName = "B¸nh gi¸ng sinh", tbProp = {6, 1, 3082, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
	{szName = "¤ng giµ Noel Hång", tbProp = {6, 1, 30168, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event noel 2015");
end

function testev20thang11()

if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Sach", tbProp = {6,1,3042,1,0,0}, nCount = 500, nExpiredTime = 20151125},
	{szName = "Hop Qua", tbProp = {6,1,4298,1,0,0}, nCount = 500, nExpiredTime = 20151125},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 20 thang 11");
end

function testevTrungThu()
for i=1,100 do
	--AddItem(6,1,2496,1,0,0) --banh hat sen
	--AddItem(6,1,2497,1,0,0) --banh dau xanh
	--AddItem(6,1,2498,1,0,0) --banh khoai mon
	--AddItem(6,1,2499,1,0,0) --banh deo
	--AddItem(6,1,2500,1,0,0) --banh nhan thit
	--AddItem(6,1,2501,1,0,0) --banh thap cam
	--AddItem(6,1,2506,1,0,0) --long den keo quan
	AddItem(6,1,2125,1,0,0) --ngu hanh ky thach
	--AddItem(6,1,2402,1,0,0) --phu quy cam hap
	--AddItem(6,1,1817,1,0,0)--nen bat tran phuc nguyet x2 diem kn 30p toan to doi
--AddItem(6,1,2496,1,0,0) --banh hat sen
--AddItem(6,1,2497,1,0,0) --banh dau xanh
--AddItem(6,1,2498,1,0,0) --banh khoai mon
--AddItem(6,1,2501,1,0,0) --banh thap cam
--AddItem(6,1,2499,1,0,0) --banh deo
--AddItem(6,1,2500,1,0,0) --banh nhan thit
--AddItem(6,1,2502,1,0,0) --long den buom buom
--AddItem(6,1,2503,1,0,0) --long den ngoi sao
--AddItem(6,1,2504,1,0,0) --long den ong
--AddItem(6,1,2505,1,0,0) --long den tron
--AddItem(6,1,2506,1,0,0) --long den keo quan

--AddItem(6,1,2507,1,0,0)--banh trung thu thanh do
--AddItem(6,1,2508,1,0,0)--banh trung thu dai ly
--AddItem(6,1,2509,1,0,0)--banh trung thu phuong tuong
--AddItem(6,1,2510,1,0,0)--banh trung thu tuong duong
--AddItem(6,1,2511,1,0,0)--banh trung thu bien kinh
--AddItem(6,1,2512,1,0,0)--banh trung thu lam an
--AddItem(6,1,2513,1,0,0)--banh trung thu duong chau
end
end

function testdoivatpham()
inVatPham = AddItem(0,10,5,5,0,0)
--hotro_khoa_tgian2(inVatPham,2)
for i=1,5 do
inVatPham = AddItem(4,239,1,1,0,0)
inVatPham = AddItem(4,238,1,1,0,0)
inVatPham = AddItem(4,240,1,1,0,0)
inVatPham = AddItem(4,353,1,1,0,0)
end
Earn(50000000)
end

function testVuLanBaoHieu()
for i=1,500 do
	--AddItem(6,1,30130,1,0,0);--thóy tô hå tiªn
	AddItem(6,1,30132,1,0,0) --nô hång ®á
	AddItem(6,1,30131,1,0,0) --hoa hång ®á
	AddItem(6,1,30129,1,0,0) --hai vi bong lai
end
end

function testSacHoaMuaHe()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "", tbProp = {6, 1, 3117, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3119, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3118, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3120, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3123, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3124, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3126, 1,0,0}, nCount = 100, nExpiredTime = 20160829},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event sac hoa mh");
end

function testSacHoaMuaHeTP()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "", tbProp = {6, 1, 3121, 1,0,0}, nCount = 500, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3122, 1,0,0}, nCount = 500, nExpiredTime = 20160829},
	{szName = "", tbProp = {6, 1, 3127, 1,0,0}, nCount = 500, nExpiredTime = 20160829},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event sac hoa mh");
end

function testKhaiHoanVien()
	local tbitemttdc_landauTD  =
{
	--{szName = "", tbProp = {6, 1, 3138, 1,0,0}, nCount = 100, nExpiredTime = 20170819},
	--{szName = "", tbProp = {6, 1, 3145, 1,0,0}, nCount = 100, nExpiredTime = 20170819},
	--{szName = "", tbProp = {6, 1, 3143, 1,0,0}, nCount = 100, nExpiredTime = 20170819},
	--{szName = "", tbProp = {6, 1, 3144, 1,0,0}, nCount = 500, nExpiredTime = 20170819},
	{szName = "", tbProp = {6, 1, 3141, 1,0,0}, nCount = 500, nExpiredTime = 20170819},
	{szName = "", tbProp = {6, 1, 3142, 1,0,0}, nCount = 1000, nExpiredTime = 20170819},
	{szName = "", tbProp = {6, 1, 30192, 1,0,0}, nCount = 1000, nExpiredTime = 20170819},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event T7TBLS");
end

function gmlapbanghoi()
if check_faction() == 1 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
end

if(GetLevel()<100) then
		Say("ChØ dµnh cho nh÷ng nh©n sü ®¼ng cÊp > 100")
		return 1
end

local strTongName = GetTongName()
local tszTitle = "Chµo mõng ®¹i hiÖp ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"NhËn ®iÒu kiÖn t¹o bang héi phÝ 1000 v¹n l­îng vµng/gmdieukienlapbang","KOt thóc ®èi tho¹i")
else
	Say(tszTitle,0)
end	
end

function gmdieukienlapbang()	

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 10000000
				if(sltien < sltienphaitra) then
					Say("§¹i hiÖp kh«ng mang ®ñ: "..sltienphaitra.." l­îng")
					return
				end
			
				SetCamp(4)
				SetCurCamp(4)
				AddRepute(900)
				AddLeadExp(900000)

				Pay(sltienphaitra)

				AddEventItem(195)
				--Earn(1000000)
				--if GetLevel() <= 100 then
					--for i=1,100 do
						--AddOwnExp(100000000)
					--end
				--end

			Msg2Player("<color=yellow>Ng­êi ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi! Lªn Hoa S¬n t×m Kim S¬n ch­ëng m«n ®Ó dß hái thªm tin tøc.<color>")
		else
		Say("Ng­¬i lµ s¸t thñ kh«ng thÓ thùc hiÖn mÖnh lÖnh!")
	end
end

function gmlaymatdothanbi()
for i=1,1200 do
	--AddItem(6,1,196,1,0,0);--mat do than bi
	AddItem(6,1,197,1,0,0);--thuong thien lenh
	--AddItem(6,1,198,1,0,0);--phat ac lenh
end
end

Include("\\script\\worldrank\\vngtop10.lua")

function g7vnTuDongUpTop()

--dofile("script/worldrank/vngtop10.lua")
tbTop10:SapXepDSXepHang()

Msg2Player("Da cap nhat BXH")

--dofile("script/global/topall.lua")
--local PlayerIndexOld = PlayerIndex
--for i=1, GetPlayerCount() do
--	PlayerIndex = i
--	--XepHang()
--	Ladder_NewLadder(10287, GetName(),GetLevel(),1);
--end

end

function XoaXepHang()
	--for i=10277,10288 do
	for i=10001,10300 do
		Ladder_ClearLadder(i)
		Msg2Player(i)
	end
	Ladder_ClearLadder(10119)
	Ladder_ClearLadder(10250)
	Ladder_ClearLadder(10279)
end



function phanthuongiftcode1()

--for i = 177, 185 do	--1 bo kim phong
	--inVatPham = AddGoldItem(0, i);
	--SetItemBindState(inVatPham,-2)
--end

inVatPham = AddGoldItem(0, 210);--Bo an bang hoan my
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 211);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 212);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 213);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddItem(0,10,6,10,0,0,0)--Ngua bon tieu
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 420);--trang bi dong sat
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 421);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 422);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 423);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 204);--Trang bi hong anh
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 205);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 206);
hotro_khoa_tgian2(inVatPham,2)

inVatPham = AddGoldItem(0, 207);
hotro_khoa_tgian2(inVatPham,2)

inVatPham  = AddGoldItem(0,3555)--Cap nhan vo danh
hotro_khoa_tgian2(inVatPham,2)

inVatPham  = AddGoldItem(0,3556)
hotro_khoa_tgian2(inVatPham,2)

AddItem(6,1,400,90,0,0,0) --sat thu gian
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 

AddItem(6,1,122,1,0,0,0)--phuc duyen
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)

AddEventItem(238) --thuy tinh
AddEventItem(239)
AddEventItem(240) 

inVatPham = AddItem(6,1,1181,0,0,0,0)--tien thao lo dac biet
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)
inVatPham = AddItem(6,1,1181,0,0,0,0)
hotro_khoa_tgian2(inVatPham,2)

local nCurLevel = GetLevel()--thang cap duoi 120
if(nCurLevel<120) then
	local nAddLevel = 120 - nCurLevel
	ST_LevelUp(nAddLevel)
	Msg2Player("§¼ng cÊp ®­îc gia t¨ng 120!")
end

end;

function gmvodanhgioichi()
inVatPham  = AddGoldItem(0,3555)--Cap nhan vo danh
hotro_khoa_tgian2(inVatPham,2)

inVatPham  = AddGoldItem(0,3556)
hotro_khoa_tgian2(inVatPham,2)
end


function phanthuongiftcodepack1()

for i=1,2 do
inVatPham = AddItem(6,1,71,0,0,0,0)--tien thao lo bt
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien
end

inVatPham = AddItem(6,1,72,0,0,0,0)--thien son bao lo
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

inVatPham = AddItem(6,1,73,0,0,0,0)--bach qua lo
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

inVatPham = AddItem(6,1,125,0,0,0,0)--que hoa tuu
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

inVatPham = AddItem(6,1,1082,0,0,0,0)--hoi thanh phu nho
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

inVatPham = AddItem(6,1,123,1,0,0,0) --phuc duyen lo trung
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

inVatPham = AddItem(6,1,12,1,0,0,0) --ban nhuoc tam kinh
SetItemBindState(inVatPham,-2) -- Khoa bao hiem vinh vien

packnum = random(1,10)

if(packnum > 0 and packnum <= 3) then
for i = 168, 170 do	--1 bo thien hoang
		inVatPham = AddGoldItem(0, i);
end
end

if(packnum > 3 and packnum <= 6) then
for i = 171, 173 do	--1 bo thien hoang
		inVatPham = AddGoldItem(0, i);
end
end

if(packnum > 7 and packnum <= 10) then
for i = 174, 176 do	--1 bo thien hoang
		inVatPham = AddGoldItem(0, i);
end
end

local nCurLevel = GetLevel()--thang cap duoi 80
if(nCurLevel<80) then
	local nAddLevel = 80 - nCurLevel
	ST_LevelUp(nAddLevel)
	Msg2Player("§¼ng cÊp ®­îc gia t¨ng 80!")
end
end


function hotro_khoa_tgian2(idex,sotuan)
ITEM_SetExpiredTime(idex, 10080*sotuan);--10080 1 tuan * 1
SyncItem(idex);
SetItemBindState(idex,-2) -- Khoa bao hiem vinh vien
end

function phanthuonggiftcode092015()

--local nlevel = GetLevel()
--local ntrungs = ST_GetTransLifeCount()

--if nlevel >=1 and nlevel <=140 and ntrungs == 0 then
thuonggiftcode1den140chuats()
--end

--if nlevel >=141 and nlevel <=180 and ntrungs == 0 then
--thuonggiftcode141den180chuats()
--end

--if nlevel < 100 and ntrungs >= 1 then
--thuonggiftcodeduoi100dats()
--end

end

function thuonggiftcode1den140chuats()

if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
end

local nlevel = GetLevel()
local ntrungs = ST_GetTransLifeCount()

if nlevel < 59 and ntrungs== 0 then
	local nAddLevel = 59 - nlevel
	ST_LevelUp(nAddLevel)
end

Msg2Player("Chóc mõng ®¹i hiÖp ®· <color=yellow>hoµn thµnh xong nhiÖm vô thø 1<color> trong chuçi nhiÖm vô t©n thñ, vÒ gÆp NPC Hç trî t©n thñ ®Ó xem nhiÖm vô tiÕp theo")

local tbgiftcodelan3  =
{
	--[1]	={szName = "Phi Tèc hoµn", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2,nQuality = 1},
	[1]	={szName = "TÈy tñy kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 1, nBindState = -2},
	[2]	={szName = "Vâ l©m mËt tÞch", tbProp = {6, 1, 26, 1,0,0}, nCount = 1, nBindState = -2},
	[3]	={szName = "Phi Tèc hoµn", tbProp = {6, 0, 6, 1,0,0}, nCount = 5, nBindState = -2},
	[4]	={szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1,0,0}, nCount = 3, nBindState = -2},
	[5]	={szName = "ChiÕn m· CD", tbProp = {0,10,5,10,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[6]	={szName = "Håi thµnh phï", tbProp = {6,1,1083,0,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[7]	={szName = "ThÇn thµnh phï", tbProp = {6,1,1266,0,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[8]	={szName = "§¹i thµnh bÝ kÝp 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
}

tbAwardTemplet:GiveAwardByList(tbgiftcodelan3, "Phan thuong GIFTCODE lan 3");

local task = GetTask(idtaskgiftcodet92015)
SetTask(idtaskgiftcodet92015,task+1)

end

function thuonggiftcode141den180chuats()

if CalcFreeItemCellCount() < 60 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 60 « trèng råi h·y nhËn.",0);
		return 1;
end

local nlevel = GetLevel()
ST_LevelUp(10)

for i=1, 5 do
inVatPham = AddItem(6,1,1181,0,0,0,0)--tien thao lo dac biet
SetItemBindState(inVatPham,-2)
end

for i=1, 3 do
inVatPham = AddItem(6,1,4276,1,0,0,0)--bi kip hoa cong dai phap
SetItemBindState(inVatPham,-2)
end

inVatPham = AddItem(0,10,7,1,0,0)--ngua phieu vu
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

inVatPham = AddEventItem(238) --thuy tinh
SetItemBindState(inVatPham,-2)
inVatPham = AddEventItem(239)
SetItemBindState(inVatPham,-2)
inVatPham = AddEventItem(240) 
SetItemBindState(inVatPham,-2)

for i=1,6 do
inVatPham = AddEventItem(353)--tinh hong bao thach
SetItemBindState(inVatPham,-2)
end

inVatPham = AddItem(6,1,2425,0,0,0,0)--dai thanh bi kip 120
SetItemBindState(inVatPham,-2)

inVatPham = AddItem(6,1,2218,0,0,0,0)--bao ruong hong anh
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

local idhkmp = random(1,140)
inVatPham = AddGoldItem(0,idhkmp)--HKMP 10 ngay
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

local task = GetTask(idtaskgiftcodet92015)
SetTask(idtaskgiftcodet92015,task+1)

end

function thuonggiftcodeduoi100dats()

if CalcFreeItemCellCount() < 60 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 60 « trèng råi h·y nhËn.",0);
		return 1;
end

local nlevel = GetLevel()
local nAddLevel = 100 - nlevel
ST_LevelUp(nAddLevel)

inVatPham = AddItem(0,11,561,1,0,0)--mat na vuong gia
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

inVatPham = AddItem(6,1,2425,0,0,0,0)--dai thanh bi kip 120
SetItemBindState(inVatPham,-2)

inVatPham = AddItem(6,1,2218,0,0,0,0)--bao ruong hong anh
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

inVatPham = AddEventItem(238) --thuy tinh
SetItemBindState(inVatPham,-2)
inVatPham = AddEventItem(239)
SetItemBindState(inVatPham,-2)
inVatPham = AddEventItem(240) 
SetItemBindState(inVatPham,-2)

for i=1,6 do
inVatPham = AddEventItem(353)--tinh hong bao thach
SetItemBindState(inVatPham,-2)
end

for i=1, 5 do
inVatPham = AddItem(6,1,1181,0,0,0,0)--tien thao lo dac biet
SetItemBindState(inVatPham,-2)
end

for i=1, 5 do
inVatPham = AddItem(6,1,4276,1,0,0,0)--bi kip hoa cong dai phap
SetItemBindState(inVatPham,-2)
end

inVatPham = AddItem(0,10,8,1,5,0)--Ngua phi van
ITEM_SetExpiredTime(inVatPham, 60*24*10);--10 ngay khoa
SyncItem(inVatPham);
SetItemBindState(inVatPham,-2)

end


