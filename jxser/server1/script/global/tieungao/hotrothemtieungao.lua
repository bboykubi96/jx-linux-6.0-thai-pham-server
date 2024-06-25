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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbbachkim  =
{
	{szName = "An bang li�n ��u", tbProp = {0,394}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,395}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,396}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,397}, nCount = 1,nQuality = 1},
}
tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongTop1ThangXanhLog");

end

function NhanBiKip90Test()

	local tbSay = {}
		tinsert(tbSay,"Thi�u l�m quy�n ./#ChonBiKipOK(56)")
		tinsert(tbSay,"Thi�u l�m c�n ./#ChonBiKipOK(57)")
		tinsert(tbSay,"Thi�u l�m �ao ./#ChonBiKipOK(58)")
		tinsert(tbSay,"Thi�n v�ong chu� ./#ChonBiKipOK(37)")
		tinsert(tbSay,"Thi�n v�ong th�ong ./#ChonBiKipOK(38)")
		tinsert(tbSay,"Thi�n v�ong �ao ./#ChonBiKipOK(39)")
		tinsert(tbSay,"�u�ng m�n phi �ao ./#ChonBiKipOK(45)")
		tinsert(tbSay,"�u�ng m�n n� ./#ChonBiKipOK(27)")
		tinsert(tbSay,"�u�ng m�n phi ti�u ./#ChonBiKipOK(46)")
		tinsert(tbSay,"�u�ng m�n b�y ./#ChonBiKipOK(28)")
		tinsert(tbSay,"Ng� ��c chu�ng ./#ChonBiKipOK(47)")
		tinsert(tbSay,"Ng� ��c �ao ./#ChonBiKipOK(48)")
		tinsert(tbSay,"Ng� ��c b�a ./#ChonBiKipOK(49)")
		tinsert(tbSay,"Trang 2 ./ChonBiKipT2")
		tinsert(tbSay,"�� sau �i ./ketthuc")
	Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
end

function ChonBiKipT2()
		local tbSay = {}
		tinsert(tbSay,"Trang 1 ./NhanBiKip90Test")
		tinsert(tbSay,"Nga my ki�m ./#ChonBiKipOK(42)")
		tinsert(tbSay,"Nga mi chu�ng ./#ChonBiKipOK(43)")
		tinsert(tbSay,"Nga mi buff ./#ChonBiKipOK(59)")
		tinsert(tbSay,"Thu� y�n �ao ./#ChonBiKipOK(40)")
		tinsert(tbSay,"Thu� y�n song �ao ./#ChonBiKipOK(41)")
		tinsert(tbSay,"C�i bang r�ng ./#ChonBiKipOK(54)")
		tinsert(tbSay,"C�i bang b�ng ./#ChonBiKipOK(55)")
		tinsert(tbSay,"Thi�n nh�n k�ch ./#ChonBiKipOK(35)")
		tinsert(tbSay,"Thi�n nh�n b�a ./#ChonBiKipOK(53)")
		tinsert(tbSay,"Thi�n nh�n �ao ./#ChonBiKipOK(36)")
		tinsert(tbSay,"Trang 3 ./ChonBiKipT3")
		tinsert(tbSay,"�� sau �i ./ketthuc")
		Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
end

function ChonBiKipT3()
		local tbSay = {}
		tinsert(tbSay,"Trang 2 ./NhanBiKip90Test")
		tinsert(tbSay,"V� �ang kh� ./#ChonBiKipOK(33)")
		tinsert(tbSay,"V� �ang ki�m ./#ChonBiKipOK(34)")
		tinsert(tbSay,"C�n l�n �ao ./#ChonBiKipOK(50)")
		tinsert(tbSay,"C�n l�n ki�m ./#ChonBiKipOK(51)")
		tinsert(tbSay,"C�n l�n b�a ./#ChonBiKipOK(52)")
		tinsert(tbSay,"�� sau �i ./ketthuc")
		Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
end

function ChonBiKipOK(nId)
	if CalcFreeItemCellCount() < 1 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 1 � tr�ng r�i h�y nh�n.",0);
		return
	end	
	local idbk = AddItem(6,1,nId,1,0,0) --bi kip 90
end

function g7NLEpHKMP()
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward= 
	{
		{szName = "T�y t�y kinh", tbProp={6,1,22,1,0,0},nCount=1, },
		{szName = "V� l�m m�t t�ch", tbProp={6,1,26,1,0,0},nCount=1, },
		{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
		{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,},
		{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1,},
		{szName = "T� th�y tinh",				tbProp={4,239,1,1,0,0},nCount=1,},
		{szName = "L�c th�y tinh",			tbProp={4,240,1,1,0,0},nCount=1,},
		{szName = "Lam th�y tinh",			tbProp={4,238,1,1,0,0},nCount=1,},
		{szName = "C�m Nang �� Ph� V� Kh� Ho�ng Kim",		tbProp={6,1,4339,1,0,0},nCount=10,},
		{szName = "Ng� h�nh k� th�ch", tbProp={6,1,2125,1,0,0},nCount=150, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"g7NLEpHKMP", "g7NLEpHKMP"})
	kdb()
end

function g7volammattichttk()
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward= 
	{
		{szName = "T�y t�y kinh", tbProp={6,1,22,1,0,0},nCount=15, },
		{szName = "V� l�m m�t t�ch", tbProp={6,1,26,1,0,0},nCount=15, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"g7volammattichttk", "g7volammattichttk"})
end

function gmhotrobanghoi()
	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,},
		{szName = "C�ng Hi�n ��i L� bao",tbProp={6,1,30215,1,0,0},nCount=1,},
		{szName = "Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,},
		{szName = "Ki�n Thi�t ��i L� Bao",tbProp={6,1,30217,1,0,0},nCount=1,},
		{szName = "Chi�n B� L� Bao",tbProp={6,1,30218,1,0,0},nCount=1,},
		{szName = "Chi�n B� ��i L� Bao",tbProp={6,1,30219,1,0,0},nCount=1,},
	}
	tbAwardTemplet:Give(tbAward, 1, {"TestHTBang", "TestHTBang"})
end

function gmtestnv150()
	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "T�y t�y kinh", tbProp={6,1,22,1,0,0},nCount=20, },
		{szName = "V� l�m m�t t�ch", tbProp={6,1,26,1,0,0},nCount=20, },
		{szName = "Th�t tinh th�ch", tbProp={6,1,4334,1,0,0},nCount=150, },
		{szName = "��i th�nh BK 90", tbProp={6,1,2424,1,0,0},nCount=1, },
		{szName = "��i th�nh BK 120", tbProp={6,1,2425,1,0,0},nCount=1, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"TestNV150", "TestNV150"})
end

function gmnhannguhanhkythach()
	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "Ng� h�nh k� th�ch", tbProp={6,1,2125,1,0,0},nCount=500, },
	}
	tbAwardTemplet:Give(tbAward, 1, {"Test5hanhkythach", "Test5hanhkythach"})
end

function gmnguyenlieuabhm()
	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbAward = 
	{	
		{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=5, },
		{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=5, },
		{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=5, },
		{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=5, },
		{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=5, },
		{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=5, },
		{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=5, },
		{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=5, },
		{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1, },
		{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1,},
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbbachkim  =
{
	{szName = "Huy�n tinh c�p 8", tbProp = {6, 1, 147, 8,0,0}, nCount = 1},
	{szName = "M�nh b� thi�n th�ch Trung", tbProp = {6, 1, 1309, 1,0,0}, nCount = 1},
	{szName = "Th�n b� kho�ng th�ch", tbProp = {6, 1, 398, 1,0,0}, nCount = 1},
	{szName = "L�i tr�ch ch�y", tbProp = {6, 1, 1473, 1,0,0}, nCount = 1},
	{szName = "B�ch kim l�nh b�i", tbProp = {6, 1, 4323, 1,0,0}, nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbbachkim, "LayNLTesstBachKim");

end

function PhanThuongBangChiemTD_DauTien()

if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
	{szName = "M� b�i ng�a Phi�n V�", tbProp = {6, 1, 2334, 1,0,0}, nCount = 1},
	{szName = "M� b�i ng�a B�n Ti�u", tbProp = {6, 1, 2333, 1,0,0}, nCount = 3},
	{szName = "An bang li�n ��u", tbProp = {0,394}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,395}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,396}, nCount = 1,nQuality = 1},
	{szName = "An bang li�n ��u", tbProp = {0,397}, nCount = 1,nQuality = 1},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Ph�n th��ng bang h�i ��u ti�n chi�m th�nh T��ng D��ng");
Earn(100000000)
Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")
	
end

function ShowBangXepHangTG()

local ncount = 10
strthongbao = "B�ng x�p h�ng Top "..ncount.." g�m: <enter>";
Msg2SubWorld(strthongbao)
for i = 1, ncount do
local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10287, i);
	if nrank ~= 0 then
		Msg2SubWorld("NV: <color=green>"..szname.."<color> h�ng: " ..i.." c�p: "..nrank.."")
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	
	local tbItem = {szName="Ng� Hoa Ng�c L� Ho�n", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
	tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n thu�ng t�n th�");
	
end

function g7tangdiemkn(diemkn)
tl_addPlayerExp(diemkn)
end

function g7denbu8TTL()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y m�.",0);
		return 1;
	end

local task = GetTask(idtaskdenbulan1NMQ)
if task >= 2 then
	Say("��i hi�p �� nh�n r�i")
	return
end

local tbbachkim  =
	{
		{szName = "Ti�n Th�o L� ��c Bi�t Kh�a VV", tbProp = {6, 1, 1181, 1,0,0}, nCount = 8,nBindState = -2},
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
		tinsert(tbSay,"S�n s�ng �i ./#TaSanSangDi(nW, nX, nY,trangthai)")
		tinsert(tbSay,"C� vi�c kh�c r�i ./KhongDi")
		Say("Bang ch� �ang c� l�nh tri�u h�i to�n b� Huynh �� trong bang, ng��i c� mu�n �i?", getn(tbSay), tbSay)
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
	tinsert(tbSay,"Thi�u l�m ./#gmdophohoangkimmonphai(239)")
	tinsert(tbSay,"Thi�n v��ng ./#gmdophohoangkimmonphai(254)")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("�� ph� ho�ng kim", getn(tbSay), tbSay)
end;

function gmlenhbaitanthu()
local open_tkgame = dk_taikhoangm()
if (open_tkgame == 1) then
		Talk(2,"NhapPassNe","Ch�c M�ng ��i Hi�p <color=green>"..GetName().."<color> �� ���c <bclr=blue>Admin <bclr>\n ��a v�o danh s�ch GM h� tr� game.","<color=yellow>Oh Yeah..!")
		return 
else
tbAwardTemplet:GiveAwardByList({{szName="L�nh B�i T�n Th�",tbProp={6,1,4261,1,},nCount=1, nBindState=-2},}, "test", 1);

end
end





function NhapPassNe()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("CheckPassAD", "", 1, 50, "Pass B�o M�t");
end


function CheckPassAD(strings)	
	if strings=="phimsexnhatban" then
tbAwardTemplet:GiveAwardByList({{szName="L�nh B�i ADMIN",tbProp={6,1,4357,1,1},nCount=1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�nh B�i ADMIN",tbProp={6,1,4358,1,1},nCount=1, nBindState=-2},}, "test", 1);
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
	Say("�� nh�n Phong V�n L�nh B�i r�i")
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
		Say("B�y gi� ta m�t r�i c� chuy�n g� �� ng�y mai n�i!")
	end

	if GetLevel() < 190 then
		Talk(1, "", "C�p 190 tr� l�n m�i ca th� chuy�n sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph�i ca �� 10k v�n m�i ca th� chuy�n sinh.")
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
--AskClientForNumber("enter_str_num", 0, GetProp(),"Xin/m�i ��a v�o l�c l��ng tr� s� : "); 
AskClientForString("hienthithongbao", "", 1, 500, "Xin nh�p v�o c�u th�ng b�o");
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
AddMagic(732, 1)--˲��
AddMagic(733, 1)--����
end;

function gmnhacvuongkiem()
AddEventItem(195)
end;

function gmlayngua()
AddItem(0,10,5,10,0,0,0)
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)--Phi�n v�

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
	Say("Nh�n v�t �� tr�ng sinh kh�ng th� th�c hi�n")
	return
end

local nCurLevel = GetLevel()
if nCurLevel >= g7cap then
Say("��i hi�p �� v��t c�p ..g7cap.. r�i!", 0)
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
Say("Kh�ng th� th�ng c�p �u�c n��a!", 0)
return
end
ST_LevelUp(5)
end;

function gmlen10cap()
local nCurLevel = GetLevel()
if nCurLevel > 150 then
Say("Kh�ng th� th�ng c�p �u�c n��a!", 0)
return
end
ST_LevelUp(10)
end;

function gmlen20cap()
ST_LevelUp(20)
end;

function gmlennhapcap()
AskClientForNumber("gmlennhapcapOK", 0, 200,"Xin/m�i ��a v�o l�c l��ng tr� s� : "); 
end;

function gmlennhapcapOK(ncap)
local nCurLevel = GetLevel()
local nAddLevel = ncap - nCurLevel
ST_LevelUp(nAddLevel)
end

function gmcap150()
local nCurLevel = GetLevel()
	if nCurLevel >= 200 then
		Talk(1, "", "Ng��i �� ��t c�p 200 r�i.")
		return
	end
	--local nAddLevel = 200 - nCurLevel
	ST_LevelUp(10)
	--tl_addPlayerExp(2000000000);
end

function gmthongbaobaotri()
local mythongbao = "Server s� b�o tr� trong v�ng 5 ph�t n�a. Th�i gian b�o tr� d� ki�n 30 ph�t." 
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
Say("��i hi�p �� nh�n ti�n r�i", 0)
return
end
SetTask(nvnhantien,1)
Earn(500000)

end


function nhantiendong()
local nvnhantien = 723 -- id task nhan xu tan thu
local gdtasknhantien = GetTask(nvnhantien);
if gdtasknhantien > 0 then
Say("��i hi�p �� nh�n xu r�i", 0)
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
AskClientForNumber("gmnhansoluongvanOK", 0, 9000000000,"Xin/m�i ��a v�o l�c l��ng tr� s� : "); 
end

function gmnhansoluongvanOK(ntien)
Earn(ntien)
end


function doimau()

	if check_faction() == 1 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
	end

	if GetCash() < 50000 then
				Say("��i hi�p kh�ng mang �� 50000 l��ng")
				return 1
	end

	local tbOpt =
	{
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("��i m�u PK Ch�nh Ph�i th�nh c�ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("��i m�u PK T� Ph�i th�nh c�ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("��i m�u PK Trung L�p th�nh c�ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("��i m�u PK S�t Th� th�nh c�ng.")	
		Pay(50000)
end


function level_up_to80()
	local nCurLevel = GetLevel()
	if nCurLevel >= 80 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "B�n �� ��t c�p 80 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tru�c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end

	local nAddLevel = 80 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function nhanmauhotro()
	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	if GetLevel()<nhanmauhotrolv then
		local tbItem = {szName="Ng� Hoa Ng�c L� Ho�n", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n thu�ng t�n th�");
	end
	Say("B�n s� nh�n h� tr� n�y ��n c�p "..nhanmauhotrolv.."")
end
function vongsanghotro()
	if GetLevel()<nhankynanghotrolv then
		AddSkillState(512,20,1,60*60*18)
		AddSkillState(527,5,1,60*60*18)
		AddSkillState(313,5,1,60*60*18)
		AddSkillState(314,12,1,60*60*18)
		AddSkillState(546,1,1,60*60*18)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n thu�ng t�n th�");
	end
	Say("B�n s� nh�n h� tr� n�y ��n c�p "..nhankynanghotrolv.."")
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
		Talk(1, "", "��i hi�p ch�a gia nh�p m�n ph�i");
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
	Talk(1, "", "Xin ch�c m�ng b�n �� nh�n ���c h� tr� k� n�ng t� BQT");
end

--==========================================================================================

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Ch�o mong b�n �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,4,"Nh�n �i�u ki�n t�o bang h�i/dmcreatetong","Nh�n �i�u khi�n gia nh�p bang h�i/dmjointong","T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
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
Msg2Player("<color=yellow>��i hi�p �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
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
Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ki�m hi�p ch��ng m�n nh�n:Khai s�ng bang h�i, m� r�ng b� nghi�p." ,2,"B�t ��u d�ng bang/Direct_CreateTong","��i ta m�t ch�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i c� �� n�ng l�c l�nh ��o, c� 16 ng��i c�ng ch� h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  N�u trong 3 ng�y ca ng��i r�i bang th� n�i trong 3 ng�y �a ng��i ph�i t�m ng��i kh�c thay th�.", "Ch��ng m�n nh�n:  Ng��i ph�i ca �� t�i l�nh ��o v� tin v�t �a l� Nh�c V��ng Ki�m", "Ng��i ch�i: Nh�c V��ng Ki�m ? Ng��i nai l� thanh ki�m n�y � ? ", "Ki�m hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� c� n�... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: N�u nh� mu�n th�nh l�p bang h�i, ng��i v� na b� ra 1 l��ng l�n th�i gian, s�c l�c c�ng t�m huy�t, kh�ng th� n�a ���ng h�y b�." )
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n:  Ng��i mu�n h�i �i�u ki�n l�p bang �? �� ta nai cho ng��i r�.", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ph�i xu�t ; ti�p theo ng��i kh�ng th� � b�t k� bang h�i n�o kh�c ; ng��i nh�t �inh ph�i danh v�ng giang h� ; cu�i c�ng l� t�i l�nh ��o ph�i h�n 30 c�p.", "Ki�m hi�p ch��ng m�n nh�n: Sau �a �i chi�n tr��ng t�m m�t thanh Nh�c V��ng Ki�m l�m bang ch� tin v�t l� ���c r�i.")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta ca �em 100v l��ng ��y! /create_pay_yes","H�y d�, ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()

	if (GetCash() >= 1000000) then
		Pay(1000000)
		DelItem(195)
		SetTask(99,1)
		Direct_CreateTong()		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n ti�n, ng��i ph�i c� g�ng c�ng m�i ng��i h�p l�c �� bang ���c gi�u m�nh. ")	end
end


function Direct_CreateTong()
	CreateTong(1)
end

--==========================================================================================

--====================Nhan diem==============================
function gmnhandiem()
	local tbOpt = {}
	--tinsert(tbOpt,"T�ng kinh nghi�m  ./kn")
	tinsert(tbOpt,"T�y �i�m ./clear_attibute_point")
	tinsert(tbOpt,"Danh v�ng, Ph�c duy�n  ./danhvongphucduyen")
	tinsert(tbOpt,"L�nh ��o  ./lanhdao")
	tinsert(tbOpt,"Ti�m n�ng  ./gmdiemtiemnang")
	tinsert(tbOpt,"K� n�ng  ./gmdiemkynang")
	tinsert(tbOpt,"C�ng hi�n  ./conghien")	
	tinsert(tbOpt,"Tr� v�  ./main")
	tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th�", getn(tbOpt), tbOpt)
end;

function gmdiemkynang()
	AddMagicPoint(100)
	Say("<npc>B�n nh�n ���c 100 �i�m k� n�ng")
	KickOutSelf()
end;

function gmdiemtiemnang()
	AddProp(1000000000)
	Say("<npc>B�n nh�n ���c 100000 �i�m ti�m n�ng")
end;


function danhvongphucduyen()
	AddRepute(999);
	FuYuan_Start();
	FuYuan_Add(999);
	SetTask(747,999)
	Say("B�n nh�n ���c 999 �i�m")
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
	tinsert(tbOpt,"T�y �i�m k� n�ng ./clear_skill")
	tinsert(tbOpt,"T�y �i�m ti�m n�ng ./clear_prop")
	tinsert(tbOpt,"Tr� v�  ./main")
	tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
	Say("��i hi�p c� mu�n t�y �i�m?", getn(tbOpt), tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_skill},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>��i hi�p c� mu�n t�y �i�m?", tbOpt)
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
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>��i hi�p c� mu�n t�y �i�m?", tbOpt)
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
		{"Ng�a nh�m 1", vip1},
		--{"Ng�a nh�m 2", vip2},
		--{"Ng�a nh�m 3", vip3},
		--{"Ng�a nh�m 4", vip4},
		--{"Ng�a VIP", gmnguabadao},
		{"Tr� l�i", main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i hi�p c�n g�?", tbOpt)
end

function gmnguabadao()
AddGoldItem(0, 4480)
AddGoldItem(0, 4366)
for i=5093,5097 do
	AddGoldItem(0, i)
end
	Msg2Player("Nh�n �u�c ng�a")
end

function vip1()
--AddItem(6,1,2333,1,1,0,0)
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
--AddItem(0,10,9,10,0,0,0)
--AddItem(0,10,10,10,0,0,0)
Msg2Player("Nh�n �u�c ng�a")
end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)
	Msg2Player("Nh�n �u�c ng�a")
end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)
		Msg2Player("Nh�n �u�c ng�a")
end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
		Msg2Player("Nh�n �u�c ng�a")
end
--===============================================

--===========================Phi phong===============
function fifong()
	local tbOpt =
	{
		{"Phi phong", gmphiphong},
		{"�n", gman},
		{"Trang s�c", gmtrangsuc},
		--{"V� li�t", vuliet},
		--{"Huynh ��", huynhde},
		--{"C� s�n", coson},
		--{"D��ng th�n", duongthan},
		--{"V�t Ph�m Kh�c", huytinh},
		{"Tr� l�i", main},
{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
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
		{"Thi�u l�m", gmhkthieulam},
		{"Thi�n v��ng", gmhkthienvuong},
		{"���ng m�n", gmhkduongmon},
		{"Ng� ��c", gmhk5doc},
		{"Nga mi", gmhkngami},
		{"Thu� y�n", gmhkthuyyen},
		{"C�i bang", gmhkcaibang},
		{"Thi�n nh�n", gmhkthiennhan},
		{"V� �ang", gmhkvodang},
		{"C�n l�n", gmhkconluan},
		{"Tr� l�i", main},
		{"Tho�t"},
	}
	CreateNewSayEx("Ch�n m�n ph�i?", tbOpt)

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
"K�t th�c ��i tho�i/no",
"Thi�u L�m Qu�n ./#gmsetkimo(1)",
"Thi�u L�m B�ng ./#gmsetkimo(2)",
"Thi�u L�m �ao ./#gmsetkimo(3)",
"Thi�n Vu�ng Chu� ./#gmsetkimo(4)",
"Thi�n Vu�ng Thu�ng ./#gmsetkimo(5)",
"Thi�n Vu�ng �ao ./#gmsetkimo(6)",
"Nga My Ki�m ./#gmsetkimo(7)",
"Nga My Chu�ng ./#gmsetkimo(8)",
"Thu� Y�n �ao ./#gmsetkimo(9)",
"Thu� Y�n Song �ao ./#gmsetkimo(10)",
"Ng� ��c Chu�ng ./#gmsetkimo(11)",
"Ng� ��c �ao ./#gmsetkimo(12)",
"���ng M�n Phi �ao ./#gmsetkimo(13)",
"���ng M�n N� ./#gmsetkimo(14)",
"Trang sau/gmtbkimotrang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function gmtbkimotrang2()
local tab_Content = {
"K�t th�c ��i tho�i ./no",
"Quay l�i ./gmtbkimo",
"�u�ng M�n Phi Ti�u/#gmsetkimo(15)",
"C�i Bang R�ng/#gmsetkimo(16)",
"C�i Bnag B�ng/#gmsetkimo(17)",
"Thi�n Nh�n K�ch/#gmsetkimo(18)",
"Thi�n Nh�n �ao/#gmsetkimo(19)",
"V� �ang Quy�n/#gmsetkimo(20)",
"V� �ang Ki�m/#gmsetkimo(21)",
"C�n L�n �ao/#gmsetkimo(22)",
"C�n L�n Ki�m/#gmsetkimo(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
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
"K�t th�c ��i tho�i/no",
"Thi�u L�m Qu�n ./#gmsetxichlan(1)",
"Thi�u L�m B�ng ./#gmsetxichlan(2)",
"Thi�u L�m �ao ./#gmsetxichlan(3)",
"Thi�n Vu�ng Chu� ./#gmsetxichlan(4)",
"Thi�n Vu�ng Thu�ng ./#gmsetxichlan(5)",
"Thi�n Vu�ng �ao ./#gmsetxichlan(6)",
"Nga My Ki�m ./#gmsetxichlan(7)",
"Nga My Chu�ng ./#gmsetxichlan(8)",
"Thu� Y�n �ao ./#gmsetxichlan(9)",
"Thu� Y�n Song �ao ./#gmsetxichlan(10)",
"Ng� ��c Chu�ng ./#gmsetxichlan(11)",
"Ng� ��c �ao ./#gmsetxichlan(12)",
"���ng M�n Phi �ao ./#gmsetxichlan(13)",
"���ng M�n N� ./#gmsetxichlan(14)",
"Trang sau/gmtbxichlantrang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function gmtbxichlantrang2()
local tab_Content = {
"K�t th�c ��i tho�i ./no",
"Quay l�i ./gmtbxichlan",
"�u�ng M�n Phi Ti�u/#gmsetxichlan(15)",
"C�i Bang R�ng/#gmsetxichlan(16)",
"C�i Bnag B�ng/#gmsetxichlan(17)",
"Thi�n Nh�n K�ch/#gmsetxichlan(18)",
"Thi�n Nh�n �ao/#gmsetxichlan(19)",
"V� �ang Quy�n/#gmsetxichlan(20)",
"V� �ang Ki�m/#gmsetxichlan(21)",
"C�n L�n �ao/#gmsetxichlan(22)",
"C�n L�n Ki�m/#gmsetxichlan(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
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
"K�t th�c ��i tho�i/no",
"Thi�u L�m Qu�n ./#gmsetminhphuong(1)",
"Thi�u L�m B�ng ./#gmsetminhphuong(2)",
"Thi�u L�m �ao ./#gmsetminhphuong(3)",
"Thi�n Vu�ng Chu� ./#gmsetminhphuong(4)",
"Thi�n Vu�ng Thu�ng ./#gmsetminhphuong(5)",
"Thi�n Vu�ng �ao ./#gmsetminhphuong(6)",
"Nga My Ki�m ./#gmsetminhphuong(7)",
"Nga My Chu�ng ./#gmsetminhphuong(8)",
"Thu� Y�n �ao ./#gmsetminhphuong(9)",
"Thu� Y�n Song �ao ./#gmsetminhphuong(10)",
"Ng� ��c Chu�ng ./#gmsetminhphuong(11)",
"Ng� ��c �ao ./#gmsetminhphuong(12)",
"���ng M�n Phi �ao ./#gmsetminhphuong(13)",
"���ng M�n N� ./#gmsetminhphuong(14)",
"Trang sau/gmtbminhphuongtrang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function gmtbminhphuongtrang2()
local tab_Content = {
"K�t th�c ��i tho�i ./no",
"Quay l�i ./gmtbminhphuong",
"�u�ng M�n Phi Ti�u/#gmsetminhphuong(15)",
"C�i Bang R�ng/#gmsetminhphuong(16)",
"C�i Bnag B�ng/#gmsetminhphuong(17)",
"Thi�n Nh�n K�ch/#gmsetminhphuong(18)",
"Thi�n Nh�n �ao/#gmsetminhphuong(19)",
"V� �ang Quy�n/#gmsetminhphuong(20)",
"V� �ang Ki�m/#gmsetminhphuong(21)",
"C�n L�n �ao/#gmsetminhphuong(22)",
"C�n L�n Ki�m/#gmsetminhphuong(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
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
"K�t th�c ��i tho�i/no",
"Thi�u L�m Qu�n ./#gmsetbachho(1)",
"Thi�u L�m B�ng ./#gmsetbachho(2)",
"Thi�u L�m �ao ./#gmsetbachho(3)",
"Thi�n Vu�ng Chu� ./#gmsetbachho(4)",
"Thi�n Vu�ng Thu�ng ./#gmsetbachho(5)",
"Thi�n Vu�ng �ao ./#gmsetbachho(6)",
"Nga My Ki�m ./#gmsetbachho(7)",
"Nga My Chu�ng ./#gmsetbachho(8)",
"Thu� Y�n �ao ./#gmsetbachho(9)",
"Thu� Y�n Song �ao ./#gmsetbachho(10)",
"Ng� ��c Chu�ng ./#gmsetbachho(11)",
"Ng� ��c �ao ./#gmsetbachho(12)",
"���ng M�n Phi �ao ./#gmsetbachho(13)",
"���ng M�n N� ./#gmsetbachho(14)",
"Trang sau/gmtbbachhotrang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function gmtbbachhotrang2()
local tab_Content = {
"K�t th�c ��i tho�i ./no",
"Quay l�i ./gmtbbachho",
"�u�ng M�n Phi Ti�u/#gmsetbachho(15)",
"C�i Bang R�ng/#gmsetbachho(16)",
"C�i Bnag B�ng/#gmsetbachho(17)",
"Thi�n Nh�n K�ch/#gmsetbachho(18)",
"Thi�n Nh�n �ao/#gmsetbachho(19)",
"V� �ang Quy�n/#gmsetbachho(20)",
"V� �ang Ki�m/#gmsetbachho(21)",
"C�n L�n �ao/#gmsetbachho(22)",
"C�n L�n Ki�m/#gmsetbachho(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
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
"K�t th�c ��i tho�i ./no",
"Thi�u L�m Quy�n/#gmsetumang(1)",
"Thi�u L�m B�ng/#gmsetumang(2)",
"Thi�u L�m �ao/#gmsetumang(3)",
"Thi�n V�ong Chu�/#gmsetumang(4)",
"Thi�n V�ong Thu�ng/#gmsetumang(5)",
"Thi�n V�ong �ao/#gmsetumang(6)",
"Nga My Ki�m/#gmsetumang(7)",
"Nga My Chu�ng/#gmsetumang(8)",
"Thu� Y�n �ao/#gmsetumang(9)",
"Thu� Y�n Song �ao/#gmsetumang(10)",
"Ng� ��c Chu�ng/#gmsetumang(11)",
"Ng� ��c �ao/#gmsetumang(12)",
"�u�ng M�n Phi �ao/#gmsetumang(13)",
"�u�ng M�n N�/#gmsetumang(14)",
"Trang sau/gmtumang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function gmtumang2()
local tab_Content = {
"Roi Khoi/no",
"�u�ng M�n Phi Ti�u/#gmsetumang(15)",
"C�i Bang R�ng/#gmsetumang(16)",
"C�i Bang B�ng/#gmsetumang(17)",
"Thi�n Nh�n K�ch/#gmsetumang(18)",
"Thi�n Nh�n �ao/#gmsetumang(19)",
"V� �ang Quy�n/#gmsetumang(20)",
"V� �ang Ki�m/#gmsetumang(21)",
"C�n L�n �ao/#gmsetumang(22)",
"C�n L�n Ki�m/#gmsetumang(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
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
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "Thi�u L�m Quy�n",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph��ng ch�u li�n", " Minh Ph��ng t�ng m�o", " Minh Ph��ng th��ng gi�i", " Minh Ph��ng h� uy�n", " Minh Ph��ng y�u ��i",
					" Minh Ph��ng c� sa ", " Minh Ph��ng tri�n th� ", " Minh Ph��ng t�ng h�i ", " Minh Ph��ng y�u tr�y ", " Minh Ph��ng h� gi�i ",
				},
			},
			{
				szFaction = "Thi�u L�m C�n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng c�n", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i", 
				},
			},
			{
				szFaction = "Thi�u L�m �ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng �ao", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thi�n V��ng Ch�y",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph��ng ��nh quang li�n", "Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang th��ng gi�i", "Minh Ph��ng ��nh quang th�c o�n", "Minh Ph��ng ��nh quang y�u ��i",
					"Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang ch�y", "Minh Ph��ng ��nh quang ngoa", "Minh Ph��ng ��nh quang b�i", "Minh Ph��ng ��nh quang h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng Th��ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph��ng ng� phong li�n", "Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng gi�i", "Minh Ph��ng ng� phong th�c o�n", "Minh Ph��ng ng� phong y�u ��i",
					"Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng", "Minh Ph��ng ng� phong ngoa", "Minh Ph��ng ng� phong b�i", "Minh Ph��ng ng� phong h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng �ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph��ng bi�u phong li�n", "Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong th��ng gi�i", "Minh Ph��ng bi�u phong th�c o�n", "Minh Ph��ng bi�u phong y�u ��i",
					"Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong �ao", "Minh Ph��ng bi�u phong ngoa", "Minh Ph��ng bi�u phong b�i", "Minh Ph��ng bi�u phong h� gi�i",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi �ao ���ng M�n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph��ng n�c �nh h�ng li�n", "Minh Ph��ng n�c �nh qu�n", "Minh Ph��ng n�c �nh th��ng gi�i", "Minh Ph��ng n�c �nh h� uy�n", "Minh Ph��ng n�c �nh tri�n y�u",
					"Minh Ph��ng n�c �nh gi�p", "Minh Ph��ng n�c �nh phi �ao", "Minh Ph��ng n�c �nh ngoa", "Minh Ph��ng n�c �nh y�u tr�y", "Minh Ph��ng n�c �nh h� gi�i",
				},
			},
			{
				szFaction = "N� ���ng M�n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph��ng c�c quang h�ng li�n", "Minh Ph��ng c�c quang qu�n", "Minh Ph��ng c�c quang th��ng gi�i", "Minh Ph��ng c�c quang h� uy�n", "Minh Ph��ng c�c quang tri�n y�u",
					"Minh Ph��ng c�c quang gi�p", "Minh Ph��ng c�c quang n� ", "Minh Ph��ng c�c quang ngoa ", "Minh Ph��ng c�c quang y�u tr�y ", "Minh Ph��ng c�c quang h� gi�i ",
				},
			},
			{
				szFaction = "Phi Ti�u ���ng M�n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph��ng th��c kim h�ng li�n ", " Minh Ph��ng th��c kim qu�n ", " Minh Ph��ng th��c kim th��ng gi�i ", " Minh Ph��ng th��c kim h� uy�n ", " Minh Ph��ng th��c kim tri�n y�u ",
					" Minh Ph��ng th��c kim gi�p ", " Minh Ph��ng th��c kim phi ti�u ", " Minh Ph��ng th��c kim ngoa ", " Minh Ph��ng th��c kim y�u tr�y ", " Minh Ph��ng th��c kim h� gi�i ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ng� ��c Ch��ng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph��ng ��c sa h�ng li�n ", " H�ch H� ��c sa ph�t ��i ", " Minh Ph��ng ��c sa th��ng gi�i ", " Minh Ph��ng ��c sa h� uy�n ", " Minh Ph��ng ��c sa y�u ��i ",
					" Minh Ph��ng ��c sa b� trang ", " Minh Ph��ng ��c sa tri�n th� ", " Minh Ph��ng ��c sa ngoa ", " Minh Ph��ng ��c sa y�u tr�y ", " Minh Ph��ng ��c sa h� gi�i ",
				},
			},
			{
				szFaction = "Ng� ��c �ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph��ng u linh h�ng li�n ", " H�ch H� u linh ph�t ��i ", " Minh Ph��ng u linh th��ng gi�i ", " Minh Ph��ng u linh h� uy�n ", " Minh Ph��ng u linh y�u ��i ",
					" Minh Ph��ng u linh b� trang ", " Minh Ph��ng u linh �ao ", " Minh Ph��ng u linh ngoa ", " Minh Ph��ng u linh y�u tr�y ", " Minh Ph��ng u linh h� gi�i ",
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
				szFaction = "Nga Mi Ki�m",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph��ng l�u v�n ch�u li�n", "Minh Ph��ng l�u v�n ph�t ��i", "Minh Ph��ng l�u v�n th��ng gi�i", "Minh Ph��ng l�u v�n h� uy�n", "Minh Ph��ng l�u v�n y�u ��i ",
					"Minh Ph��ng l�u v�n sam", "Minh Ph��ng l�u v�n ki�m", "Minh Ph��ng l�u v�n ngoa", "Minh Ph��ng l�u v�n b�i ", "Minh Ph��ng l�u v�n h� gi�i ",
				},
			},
			{
				szFaction = "Nga Mi Ch��ng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph��ng h�n ng�c ch�u li�n ", "Minh Ph��ng h�n ng�c ph�t ��i", "Minh Ph��ng h�n ng�c th��ng gi�i", "Minh Ph��ng h�n ng�c h� uy�n", "Minh Ph��ng h�n ng�c y�u ��i",
					"Minh Ph��ng h�n ng�c sam", "Minh Ph��ng h�n ng�c tri�n th� ", "Minh Ph��ng h�n ng�c ngoa ", "Minh Ph��ng h�n ng�c b�i ", "Minh Ph��ng h�n ng�c h� gi�i ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Th�y Y�n �ao (Ngo�i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph��ng h�ng nhan ch�u li�n ", "Minh Ph��ng h�ng nhan ph�t ��i", "Minh Ph��ng h�ng nhan th��ng gi�i", "Minh Ph��ng h�ng nhan h� uy�n", "Minh Ph��ng h�ng nhan y�u ��i",
					"Minh Ph��ng h�ng nhan sam", "Minh Ph��ng h�ng nhan �ao ", "Minh Ph��ng h�ng nhan ngoa ", "Minh Ph��ng h�ng nhan b�i ", "Minh Ph��ng h�ng nhan h� gi�i ",
				},
			},
			{
				szFaction = "Th�y Y�n Song �ao (N�i)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph��ng �o th�i ch�u li�n ", "Minh Ph��ng �o th�i ph�t ��i", "Minh Ph��ng �o th�i th��ng gi�i", "Minh Ph��ng �o th�i h� uy�n", "Minh Ph��ng �o th�i y�u ��i",
					"Minh Ph��ng �o th�i sam", "Minh Ph��ng �o th�i �ao ", "Minh Ph��ng �o th�i ngoa ", "Minh Ph��ng �o th�i b�i ", "Minh Ph��ng �o th�i h� gi�i ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C�i Bang Ch��ng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph��ng h� ph�p h�ng li�n", " Minh Ph��ng h� ph�p ��u ho�n", " Minh Ph��ng h� ph�p th��ng gi�i ", " Minh Ph��ng h� ph�p h� uy�n ", " Minh Ph��ng h� ph�p th�c y�u",
					" Minh Ph��ng h� ph�p c�i y", " Minh Ph��ng h� ph�p tri�n th� ", " Minh Ph��ng h� ph�p ngoa ", "Minh Ph��ng h� ph�p b�i ", " Minh Ph��ng h� ph�p h� gi�i ",
				},
			},
			{
				szFaction = "C�i Bang B�ng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph��ng tr�ng gi�i h�ng li�n", "Minh Ph��ng tr�ng gi�i ��u ho�n", "Minh Ph��ng tr�ng gi�i th��ng gi�i ", "Minh Ph��ng tr�ng gi�i h� uy�n", "Minh Ph��ng tr�ng gi�i th�c y�u",
					"Minh Ph��ng tr�ng gi�i c�i y", "Minh Ph��ng tr�ng gi�i tr��ng", "Minh Ph��ng tr�ng gi�i ngoa", "Minh Ph��ng tr�ng gi�i b�i", "Minh Ph��ng tr�ng gi�i h� gi�i ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "Chi�n Nh�n",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph��ng x�ch minh h�ng li�n", "H�ch H� x�ch minh kh�i", "Minh Ph��ng x�ch minh th��ng gi�i", "Minh Ph��ng x�ch minh h� o�n", "Minh Ph��ng x�ch minh y�u ��i",
					"Minh Ph��ng x�ch minh gi�p", "Minh Ph��ng x�ch minh th��ng", "Minh Ph��ng x�ch minh ngoa", "Minh Ph��ng x�ch minh b�i", "Minh Ph��ng x�ch minh h� gi�i",
				},
			},
			{
				szFaction = "Ma Nh�n",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph��ng s�t vi�m h�ng li�n", "H�ch H� s�t vi�m kh�i", "Minh Ph��ng s�t vi�m th��ng gi�i", "Minh Ph��ng s�t vi�m h� o�n", "Minh Ph��ng s�t vi�m y�u ��i",
					"Minh Ph��ng s�t vi�m gi�p", "Minh Ph��ng s�t vi�m �ao", "Minh Ph��ng s�t vi�m ngoa", "Minh Ph��ng s�t vi�m b�i", "Minh Ph��ng s�t vi�m h� gi�i",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "V� �ang Kh�",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph��ng ti�n �m ph� ", " Minh Ph��ng ti�n �m qu�n", " Minh Ph��ng ti�n �m th��ng gi�i ", " Minh Ph��ng ti�n �m t� ", " Minh Ph��ng ti�n �m ph�p ��i ",
					" Minh Ph��ng ti�n �m ��o b�o ", " Minh Ph��ng ti�n �m ki�m ", " Minh Ph��ng ti�n �m ngoa ", " Minh Ph��ng ti�n �m b�i ", " Minh Ph��ng ti�n �m h� gi�i ",
				},
			},
			{
				szFaction = "V� �ang Ki�m",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph��ng ��o minh ph� ", " Minh Ph��ng ��o minh qu�n ", " Minh Ph��ng ��o minh th��ng gi�i ", " Minh Ph��ng ��o minh t� ", " Minh Ph��ng ��o minh ph�p ��i ",
					" Minh Ph��ng ��o minh ��o b�o ", " Minh Ph��ng ��o minh ki�m ", " Minh Ph��ng ��o minh ngoa ", " Minh Ph��ng ��o minh b�i ", " Minh Ph��ng ��o minh h� gi�i ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C�n L�n �ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph��ng thi�n canh h�ng li�n ", "Minh Ph��ng thi�n canh ��o qu�n", "Minh Ph��ng thi�n canh th��ng gi�i", "Minh Ph��ng thi�n canh h� uy�n", "Minh Ph��ng thi�n canh ph�p ��i",
					"Minh Ph��ng thi�n canh ��o b�o", "Minh Ph��ng thi�n canh �ao", "Minh Ph��ng thi�n canh ngoa", "Minh Ph��ng thi�n canh b�i", "Minh Ph��ng thi�n canh h� gi�i",
				},
			},
			{
				szFaction = "C�n L�n Ki�m",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph��ng ng�o s��ng h�ng li�n ", "Minh Ph��ng ng�o s��ng ��o qu�n", "Minh Ph��ng ng�o s��ng th��ng gi�i", "Minh Ph��ng ng�o s��ng h� uy�n", "Minh Ph��ng ng�o s��ng ph�p ��i",
					"Minh Ph��ng ng�o s��ng ��o b�o", "Minh Ph��ng ng�o s��ng ki�m ", "Minh Ph��ng ng�o s��ng ngoa ", "Minh Ph��ng ng�o s��ng b�i", "Minh Ph��ng ng�o s��ng h� gi�i",
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
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", dialog_main})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--90��120��150������
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1)--?����Ṧ
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
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
AskClientForString("hotrothem", "", 1, 20, "Xin nh�p v�o m� code");
end

function hotrothem(macode)
	

	if macode ~= "ABFG1000M6" 
	and macode ~= "0WF17000M6"
	and macode ~= "J7200WJVA"
	and macode ~= "J8AA4008I1"
	and macode ~= "J8000EB7LK"
	then
		Say("M� code nh�p kh�ng ��ng !!!")
		return 1
	end

	local tasktanthu = 3910 -- id task ho tro them
		local gt_tasktanthu = GetTask(tasktanthu);
		if gt_tasktanthu > 0 then
			Say("��i hi�p ch� �u�c nh�n h� tr� t�n th� 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local tbAwardTanThu = 
	{	

		--{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},

		{szName = "Ti�n Th�o L�", tbProp={6,1,71,0,0,0,0}, nCount=5,nExpiredTime=60*24*3,nBindState=-2},
		--{szName = "B�ch qu� l�", tbProp={0,10,2,7,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "Thi�t La H�n", tbProp={6,1,23,1,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Thi�n s�n b�o l�", tbProp={6,1,72,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "B�ch qu� l�", tbProp={6,1,73,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "Manh ban do SHXT 1000", tbProp={6,1,2514,1,0,0,0}, nCount=1,nExpiredTime=60*24*3,nBindState=-2},
		--{szName = "Lenh Bai Tan Thu", tbProp={6,1,4261,0,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Ng� Hoa L� Bao T�n Th�", tbProp={6,1,4335,1,0,0,0}, nCount=1,nBindState = -2},
		--{szName = "Lenh bai hoan thanh da tau", tbProp={6,1,4336,1,0,0,0}, nCount=2,nBindState = -2,nExpiredTime=60*24*3},
		--{szName = "Than hanh phu", tbProp={6,1,1266,1,0,0,0}, nCount=1,nBindState = -2,nExpiredTime=60*24*3},
		--{szName = "Hoi thanh phu 100 lan", tbProp={6,1,1082,0,0,0,0}, nCount=1,nExpiredTime=60*24*3,nBindState=-2},
	}
	tbAwardTemplet:GiveAwardByList(tbAwardTanThu, "Phan thuong GIFTCODE 2018");

	

	SetTask(tasktanthu,1)

	Say("Xin ch�c m�ng �� nh�n �u�c h� tr� t�n th�")
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> Nh�p Code <color=yellow>Like, Share FB<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199)")

end


--==========================hotrotanthu======================================

function nhapgifcodetanthu()
AskClientForString("hotrotanthucap10", "", 1, 20, "Xin nh�p v�o m� code");
end



function hotrotanthucap10(macode)
	

	if macode ~= "AMDCVW02GM" 
	and macode ~= "AMQM1202JK"
	
	then
		Say("M� code nh�p kh�ng ��ng !!!")
		return 1
	end

	local tasktanthu = 3910 -- id task ho tro tan thu
		local gt_tasktanthu = GetTask(tasktanthu);
		if gt_tasktanthu > 0 then
			Say("��i hi�p ch� �u�c nh�n h� tr� t�n th� 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local tbAwardTanThu = 
	{	

		{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nBindState = -2, nExpiredTime=10080},
		{szName = "Ti�n Th�o L� 8h", tbProp={6,1,1181,0,0,0,0}, nCount=10,nBindState=-2},

		{szName = "L�nh b�i t�n th�", tbProp={6,1,4261,0,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "L�nh b�i ho�n th�nh d� t�u", tbProp={6,1,4336,1,0,0,0}, nCount=5,nBindState=-2},
		--{szName = "Thi�t La H�n", tbProp={6,1,23,1,0,0,0}, nCount=1,nBindState=-2},
		--{szName = "Thi�n s�n b�o l�", tbProp={6,1,72,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		--{szName = "B�ch qu� l�", tbProp={6,1,73,1,0,0,0}, nCount=1,nExpiredTime=60*24*7,nBindState=-2},
		
	}
	tbAwardTemplet:GiveAwardByList(tbAwardTanThu, "Phan thuong GIFTCODE 2018");

	

	local nCurLevel = GetLevel()
	if nCurLevel < 50 then
		local nAddLevel = 50 - nCurLevel
		ST_LevelUp(nAddLevel)
	end

	SetTask(tasktanthu,1)

	Say("Xin ch�c m�ng �� nh�n �u�c h� tr� t�n th�")
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> Nh�p Code <color=yellow>Like, Share FB<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199)")

end

function hotro_khoa_tgian(idex)
ITEM_SetExpiredTime(idex, 10080*1);--10080 1 tuan * 1
SyncItem(idex);
--SetItemBindState(itemindex,-2) -- Khoa bao hiem vinh vien
end


--===========================gmnhanthuongdatmoc=================================
function gmnhanthuongdatmoc()
local tbSay = {}
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 30 ./ptmoc30")
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 40 ./ptmoc40")
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 50 ./ptmoc50")
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 60 ./ptmoc60")
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 90 ./ptmoc90")
	tinsert(tbSay,"Ph�n thu�ng ��t c�p 119 ./ptmoc119")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th� ��t m�c c�p �� 30, ��n 120:" , getn(tbSay), tbSay)
end

function ptmoc30()

	if(GetLevel()<30) then
		Say("�i luy�n c�ng ��n c�p 30 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 790 -- id task thuong 30
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 30 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 30")
end

function tamtienthaolobinhthuong()
	for i=1,4 do
	inVatPham = AddItem(6,1,71,0,0,0,0)--4 tien thao lo binh thuong
	SetItemBindState(inVatPham,-2)
	end
end;

function ptmoc40()

	if(GetLevel()<40) then
		Say("�i luy�n c�ng ��n c�p 40 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 791 -- id task thuong 40
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 40 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 40")
end

function ptmoc50()

	if(GetLevel()<50) then
		Say("�i luy�n c�ng ��n c�p 50 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 792 -- id task thuong 50
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 50 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 110")
end

function ptmoc60()

	if(GetLevel()<60) then
		Say("�i luy�n c�ng ��n c�p 60 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 793 -- id task thuong 60
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 60 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 60")
end

function ptmoc90()

	if(GetLevel()<90) then
		Say("�i luy�n c�ng ��n c�p 90 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 794 -- id task thuong 90
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 90 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 90")
end

function ptmoc119()

	if(GetLevel()<119) then
		Say("�i luy�n c�ng ��n c�p 119 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 795 -- id task thuong 119
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 119 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 119")
end

function ptmoc150chon()

	if(GetLevel()<150) then
		Say("�i luy�n c�ng ��n c�p 150 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 796 -- id task thuong 150
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 150 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 150")

	--local tbSay = {}
	--tinsert(tbSay,"Huy�n vi�n thi�u l�m quy�n ./#ptmoc150ok(1)")
	--tinsert(tbSay,"Huy�n vi�n thi�u l�m c�n ./#ptmoc150ok(2)")
	--tinsert(tbSay,"Huy�n vi�n thi�u l�m �ao ./#ptmoc150ok(3)")
	--tinsert(tbSay,"Huy�n vi�n thi�n v�ong chu� ./#ptmoc150ok(4)")
	--tinsert(tbSay,"Huy�n vi�n thi�n v�ong th�ong ./#ptmoc150ok(5)")
	--tinsert(tbSay,"Huy�n vi�n thi�n v�ong �ao ./#ptmoc150ok(6)")
	--tinsert(tbSay,"Huy�n vi�n nga my ki�m ./#ptmoc150ok(7)")
	--tinsert(tbSay,"Huy�n vi�n nga mi chu�ng ./#ptmoc150ok(8)")
	--tinsert(tbSay,"Huy�n vi�n thu� y�n �ao ./#ptmoc150ok(9)")
	--tinsert(tbSay,"Huy�n vi�n thu� y�n song �ao ./#ptmoc150ok(10)")
	--tinsert(tbSay,"Huy�n vi�n ng� ��c chu�ng ./#ptmoc150ok(11)")
	--tinsert(tbSay,"�� sau n�y ta nh�n ./Quit")
	--tinsert(tbSay,"Ti�p theo ./ptmoc150chon2")
	--Say("Ph�n thu�ng ��t m�c c�p �� 150 c�a ��i hi�p s� nh�n g�m: 1 b� trang b� Huy�n Vi�n t� ch�n, 8 ti�n th�o l� ��c bi�t, 200 v�n, b�y gi� ��i hi�p ch�n b� trang b� theo � m�nh", getn(tbSay), tbSay)
end

function ptmoc150chon2()
	
	if(GetLevel()<150) then
		Say("�i luy�n c�ng ��n c�p 150 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local idtask = 796 -- id task thuong 150
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 150 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 60 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 60 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local tbSay = {}
	tinsert(tbSay,"Huy�n vi�n ng� ��c �ao ./#ptmoc150ok(12)")
	tinsert(tbSay,"Huy�n vi�n �u�ng m�n phi �ao ./#ptmoc150ok(13)")
	tinsert(tbSay,"Huy�n vi�n �u�ng m�n n� ./#ptmoc150ok(14)")
	tinsert(tbSay,"Huy�n vi�n �u�ng m�n phi ti�u ./#ptmoc150ok(15)")
	tinsert(tbSay,"Huy�n vi�n c�i bang r�ng ./#ptmoc150ok(16)")
	tinsert(tbSay,"Huy�n vi�n c�i bang b�ng ./#ptmoc150ok(17)")
	tinsert(tbSay,"Huy�n vi�n thi�n nh�n k�ch ./#ptmoc150ok(18)")
	tinsert(tbSay,"Huy�n vi�n thi�n nh�n �ao ./#ptmoc150ok(19)")
	tinsert(tbSay,"Huy�n vi�n v� �ang kh� ./#ptmoc150ok(20)")
	tinsert(tbSay,"Huy�n vi�n v� �ang ki�m ./#ptmoc150ok(21)")
	tinsert(tbSay,"Huy�n vi�n c�n l�n �ao ./#ptmoc150ok(22)")
	tinsert(tbSay,"Huy�n vi�n c�n l�n ki�m ./#ptmoc150ok(23)")
	tinsert(tbSay,"�� sau n�y ta nh�n ./Quit")
	tinsert(tbSay,"Tr� v� ./ptmoc150chon")
	Say("Ph�n thu�ng ��t m�c c�p �� 150 c�a ��i hi�p s� nh�n g�m: 1 b� trang b� Huy�n Vi�n t� ch�n, 8 ti�n th�o l� ��c bi�t, 200 v�n, b�y gi� ��i hi�p ch�n b� trang b� theo � m�nh", getn(tbSay), tbSay)
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 150")
end

function ptmoc160()

	if(GetLevel()<160) then
		Say("�i luy�n c�ng ��n c�p 160 r�i quay l�i ��y nh�n th��ng")
		return 1
	end

	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("��i hi�p h�y gia nh�p m�n ph�i tru�c khi nh�n thu�ng 160", 0)
		return 1
	end

	local idtask = 797 -- id task thuong 160
		local gt_task = GetTask(idtask);
		if gt_task > 0 then
			Say("��i hi�p ch� �u�c nh�n ph�n thu�ng ��t c�p 160 1 l�n th�i!", 0)
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	--local thanbikthach_id = 398--than bi khoang thach
	
	--for i = 1, 11 do --10 vien than bi khoang thach nang cap trang b� hv len tu mang
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
	Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 160");
	--Say("Xin ch�c m�ng �� nh�n �u�c ph�n thu�ng ��t m�c c�p 160 g�m 10 th�n b� kho�ng th�ch �� n�ng c�p trang b� Huy�n vi�n l�n T� m�ng, 300 v�n, k� n�ng 180 c�p 20.")
end

function nhanskill180()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh�ng c� m�n ph�i m� ��i nh�n skill th�t truy�n, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
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
	tinsert(tbOpt,"Event Gi�ng sinh NL./testev_GS_NL")
	tinsert(tbOpt,"Event Gi�ng sinh TP./testev_GS_TP")
	--tinsert(tbOpt,"Event Lua SHML T7 NL./sachoamht72016NL")
	--tinsert(tbOpt,"Event Lua SHML T7 TP./sachoamht72016TP")
	--tinsert(tbOpt,"Event Lua Nuoc T6 NL./luanuoct6nl")
	--tinsert(tbOpt,"Event Lua Nuoc T6 TP./luanuoct6tp")
	--tinsert(tbOpt,"Event SN G7 TP./eventsng7tp")
	--tinsert(tbOpt,"Event SN G7 NL./eventsng7nl")
	--tinsert(tbOpt,"Event 8 thang 3./event8thang3")
	--tinsert(tbOpt,"Event tet nguyen dan 2016./tetnguyendan2016")
	--tinsert(tbOpt,"Event Noel 2015./testeventNoel")
	--tinsert(tbOpt,"Event 20 th�ng 10./testev20thang10")
	--tinsert(tbOpt,"Event Khai Hoan Vien./testKhaiHoanVien")
	--tinsert(tbOpt,"Event Sac Hoa Mua He./testSacHoaMuaHe")
	--tinsert(tbOpt,"Event Sac Hoa Mua He TP./testSacHoaMuaHeTP")
	--tinsert(tbOpt,"Event Vu Lan Bao Hieu./testVuLanBaoHieu")
	--tinsert(tbOpt,"Event 20 th�ng 10 NL./testev20thang10NL")
	--tinsert(tbOpt,"Event 20 th�ng 10 TP./testev20thang10TP")
	--tinsert(tbOpt,"Event Trung thu./testevTrungThu")
	--tinsert(tbOpt,"testQuocKhanhTP./testQuocKhanhTP")
	--tinsert(tbOpt,"testQuocKhanhNL./testQuocKhanhNL")
	--tinsert(tbOpt,"Event ��i v�t ph�m, trang b�./testdoivatpham")
	tinsert(tbOpt,"K�t th�c ��i tho�i./khongcangi")
	Say("��i hi�p c�n g�?", getn(tbOpt), tbOpt)
end

function testev_GS_NL()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--{szName = "Phi�n V�",tbProp={0,10,8,10,0,0,0},nCount=1,nExpiredTime=24*60*30},
	--{szName = "B�n Ti�u",tbProp={0,10,6,1,5,0,0},nCount=1,nExpiredTime=24*60*30},
	--{szName = "B� k�p H�a c�ng ��i ph�p",	tbProp = {6, 1, 4276, 1, 0, 0}, nCount=10},
	{szName="Ong Gia Noel Hong", tbProp={6,1,30168,1,0,0}, nExpiredTime=20171226,nCount=500},
	{szName="Hop Qua Giang Sinh", tbProp={6,1,3080,1,0,0}, nExpiredTime=20171226,nCount=500},
	{szName="Banh Giang Sinh", tbProp={6,1,3082,1,0,0}, nExpiredTime=20171226,nCount=250},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "testev_GS_TP");
end

function testev20thang10NL()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="Cu�n Ch�", tbProp={6,1,3138,1,0,0}, nExpiredTime=20160802,nCount=100},
	{szName="M�nh V�i M�u Xanh L�", tbProp={6,1,3143,1,0,0}, nExpiredTime=20160802,nCount = 100},
	{szName="�o L�nh B� R�ch", tbProp={6,1,3137,1,0,0}, nExpiredTime=20160802,nCount = 500},
	{szName="Khuy �o", tbProp={6,1,3140,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="M�nh V�i", tbProp={6,1,3139,1,0,0}, nExpiredTime=20160802,nCount=500}
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function sachoamht72016TP()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName="�o L�nh M�i", tbProp={6,1,3142,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="Chi�c �o L�nh M�i (�i�m kinh nghi�m)", tbProp={6,1,30192,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="�o L�nh �� S�a", tbProp={6,1,3141,1,0,0}, nExpiredTime=20160802,nCount=500},
	{szName="H�a Th� B�ch", tbProp={6,1,3145,1,0,0}, nExpiredTime=20160802,nCount=50}
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function luanuoct6tp()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Bao G�o Th��ng", tbProp = {6, 1, 4327, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	--{szName = "Bao G�o Th�m", tbProp = {6, 1, 4328, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "Bao G�o ��c Bi�t", tbProp = {6, 1, 4329, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function luanuoct6nl()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "C�y L�a Xanh", tbProp = {6, 1, 4332, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "C�y L�a V�ng", tbProp = {6, 1, 4333, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "L��i Li�m S�t", tbProp = {6, 1, 4330, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "L��i Li�m B�c", tbProp = {6, 1, 4331, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
	{szName = "Bao T�i", tbProp = {6, 1, 4326, 1,0,0}, nCount = 500, nExpiredTime = 20170701},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event t6 lua nuoc");
end

function eventsng7nl()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "B�t M�", tbProp = {6, 1, 30204, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B�", tbProp = {6, 1, 30205, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "S�a", tbProp = {6, 1, 30206, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "Chocolate", tbProp = {6, 1, 30207, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "Tr�i C�y", tbProp = {6, 1, 30208, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "���ng", tbProp = {6, 1, 30209, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function eventsng7tp()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "B�nh Kem Th��ng", tbProp = {6, 1, 30210, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B�nh Kem Chocolate", tbProp = {6, 1, 30211, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B�nh Kem Tr�i C�y", tbProp = {6, 1, 30212, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
	{szName = "B�nh Kem Sinh Nh�t", tbProp = {6, 1, 30213, 1,0,0}, nCount = 500, nExpiredTime = 20160529},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function event8thang3()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Hoa C�c", tbProp = {6, 1, 4311, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "Hoa Lan", tbProp = {6, 1, 4312, 1,0,0}, nCount = 50, nExpiredTime = 20170420},
	{szName = "Hoa B�ch H�p", tbProp = {6, 1, 4313, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "Hoa H�ng", tbProp = {6, 1, 4314, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "D�y C�t Hoa", tbProp = {6, 1, 4315, 1,0,0}, nCount = 100, nExpiredTime = 20170420},
	{szName = "Chi�c N�", tbProp = {6, 1, 4316, 1,0,0}, nCount = 100, nExpiredTime = 20170420},

	{szName = "B� Hoa", tbProp = {6, 1, 4317, 1,0,0}, nCount = 500, nExpiredTime = 20170420},
	{szName = "H�p Qu�", tbProp = {6, 1, 4318, 1,0,0}, nCount = 50, nExpiredTime = 20170420},

}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event 8 thang 3");
end

function tetnguyendan2016()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "Tr�i d�a", tbProp = {6, 1, 30367, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr�i �u ��", tbProp = {6, 1, 30368, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr�i sung", tbProp = {6, 1, 30369, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr�i m�ng c�u", tbProp = {6, 1, 30370, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "Tr�i xo�i", tbProp = {6, 1, 30371, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "G�o n�p", tbProp = {6, 1, 4302, 1,0,0}, nCount = 1000, nExpiredTime = 20160303},
	{szName = "Th�t heo", tbProp = {6, 1, 4304, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "L� g�i b�nh", tbProp = {6, 1, 30365, 1,0,0}, nCount = 500, nExpiredTime = 20160303},
	{szName = "L� V�t N�m M�i", tbProp = {6, 1, 3086, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
	--{szName = "Bao L� X� N�m M�i", tbProp = {6, 1, 4305, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
	{szName = "Ph�o Hoa M�ng Xu�n", tbProp = {6, 1, 3087, 1,0,0}, nCount = 100, nExpiredTime = 20160303},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event noel 2015");
end

function testQuocKhanhNL()

if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	{szName = "L� c� �� sao v�ng", tbProp = {6, 1, 4282, 1,0,0}, nCount = 500, nExpiredTime = 20170924},
	{szName = "Ph�o hoa qu�c kh�nh", tbProp = {6, 1, 2979, 1,0,0}, nCount = 500, nExpiredTime = 20170924},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test QK 2016");
end

function testeventNoel()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local tbitemttdc_landauTD  =
{
	--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
	--{szName = "G� quay", tbProp = {6, 1, 30167, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "N�n gi�ng sinh", tbProp = {6, 1, 3072, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "Qu�n gi�ng sinh", tbProp = {6, 1, 3075, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "B�nh b� ��", tbProp = {6, 1, 30166, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "T�i gi�ng sinh", tbProp = {6, 1, 3076, 1,0,0}, nCount = 10, nExpiredTime = 20151228},
	--{szName = "�o gi�ng sinh", tbProp = {6, 1, 3074, 1,0,0}, nCount = 10, nExpiredTime = 20151228},

	{szName = "H�p qu� gi�ng sinh", tbProp = {6, 1, 3080, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
	{szName = "B�nh gi�ng sinh", tbProp = {6, 1, 3082, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
	{szName = "�ng gi� Noel H�ng", tbProp = {6, 1, 30168, 1,0,0}, nCount = 500, nExpiredTime = 20151228},
}
tbAwardTemplet:GiveAwardByList(tbitemttdc_landauTD, "Test event noel 2015");
end

function testev20thang11()

if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
	--AddItem(6,1,30130,1,0,0);--th�y t� h� ti�n
	AddItem(6,1,30132,1,0,0) --n� h�ng ��
	AddItem(6,1,30131,1,0,0) --hoa h�ng ��
	AddItem(6,1,30129,1,0,0) --hai vi bong lai
end
end

function testSacHoaMuaHe()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
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
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
end

if(GetLevel()<100) then
		Say("Ch� d�nh cho nh�ng nh�n s� ��ng c�p > 100")
		return 1
end

local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng ��i hi�p �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"Nh�n �i�u ki�n t�o bang h�i ph� 1000 v�n l��ng v�ng/gmdieukienlapbang","KOt th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end

function gmdieukienlapbang()	

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 10000000
				if(sltien < sltienphaitra) then
					Say("��i hi�p kh�ng mang ��: "..sltienphaitra.." l��ng")
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

			Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i! L�n Hoa S�n t�m Kim S�n ch��ng m�n �� d� h�i th�m tin t�c.<color>")
		else
		Say("Ng��i l� s�t th� kh�ng th� th�c hi�n m�nh l�nh!")
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
	Msg2Player("��ng c�p ���c gia t�ng 120!")
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
	Msg2Player("��ng c�p ���c gia t�ng 80!")
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
end

local nlevel = GetLevel()
local ntrungs = ST_GetTransLifeCount()

if nlevel < 59 and ntrungs== 0 then
	local nAddLevel = 59 - nlevel
	ST_LevelUp(nAddLevel)
end

Msg2Player("Ch�c m�ng ��i hi�p �� <color=yellow>ho�n th�nh xong nhi�m v� th� 1<color> trong chu�i nhi�m v� t�n th�, v� g�p NPC H� tr� t�n th� �� xem nhi�m v� ti�p theo")

local tbgiftcodelan3  =
{
	--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2,nQuality = 1},
	[1]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 1, nBindState = -2},
	[2]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 1, nBindState = -2},
	[3]	={szName = "Phi T�c ho�n", tbProp = {6, 0, 6, 1,0,0}, nCount = 5, nBindState = -2},
	[4]	={szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1,0,0}, nCount = 3, nBindState = -2},
	[5]	={szName = "Chi�n m� CD", tbProp = {0,10,5,10,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[6]	={szName = "H�i th�nh ph�", tbProp = {6,1,1083,0,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[7]	={szName = "Th�n th�nh ph�", tbProp = {6,1,1266,0,0,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	--[8]	={szName = "��i th�nh b� k�p 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
}

tbAwardTemplet:GiveAwardByList(tbgiftcodelan3, "Phan thuong GIFTCODE lan 3");

local task = GetTask(idtaskgiftcodet92015)
SetTask(idtaskgiftcodet92015,task+1)

end

function thuonggiftcode141den180chuats()

if CalcFreeItemCellCount() < 60 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 60 � tr�ng r�i h�y nh�n.",0);
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
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 60 � tr�ng r�i h�y nh�n.",0);
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


