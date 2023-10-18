--hoat dong doi xu edit by mcteam
IncludeLib("FILESYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")

function g7chonbikip()
	if GetLevel() < 80 then
		Say("C�p 80 tr� l�n m�i c� th� nh�n ���c")
		return
	end
	local nFact = GetLastFactionNumber()
	Msg2Player(nFact)
	local tbSay = {}
	if nFact == 0 then
		tinsert(tbSay,"Thi�u l�m quy�n ./#g7chonbikipokay(56)")
		tinsert(tbSay,"Thi�u l�m c�n ./#g7chonbikipokay(57)")
		tinsert(tbSay,"Thi�u l�m �ao ./#g7chonbikipokay(58)")
	end
	if nFact == 1 then
		tinsert(tbSay,"Thi�n v�ong chu� ./#g7chonbikipokay(37)")
		tinsert(tbSay,"Thi�n v�ong th�ong ./#g7chonbikipokay(38)")
		tinsert(tbSay,"Thi�n v�ong �ao ./#g7chonbikipokay(39)")
	end
	if nFact == 2 then
		tinsert(tbSay,"�u�ng m�n phi �ao ./#g7chonbikipokay(45)")
		tinsert(tbSay,"�u�ng m�n n� ./#g7chonbikipokay(27)")
		tinsert(tbSay,"�u�ng m�n phi ti�u ./#g7chonbikipokay(46)")
		tinsert(tbSay,"�u�ng m�n b�y ./#g7chonbikipokay(28)")
	end
	if nFact == 3 then
		tinsert(tbSay,"Ng� ��c chu�ng ./#g7chonbikipokay(47)")
		tinsert(tbSay,"Ng� ��c �ao ./#g7chonbikipokay(48)")
		tinsert(tbSay,"Ng� ��c b�a ./#g7chonbikipokay(49)")
	end
	if nFact == 4 then
		tinsert(tbSay,"Nga my ki�m ./#g7chonbikipokay(42)")
		tinsert(tbSay,"Nga mi chu�ng ./#g7chonbikipokay(43)")
		tinsert(tbSay,"Nga mi buff ./#g7chonbikipokay(59)")
	end
	if nFact == 5 then
		tinsert(tbSay,"Thu� y�n �ao ./#g7chonbikipokay(40)")
		tinsert(tbSay,"Thu� y�n song �ao ./#g7chonbikipokay(41)")
	end
	if nFact == 6 then
		tinsert(tbSay,"C�i bang r�ng ./#g7chonbikipokay(54)")
		tinsert(tbSay,"C�i bang b�ng ./#g7chonbikipokay(55)")
	end
	if nFact == 7 then
		tinsert(tbSay,"Thi�n nh�n k�ch ./#g7chonbikipokay(35)")
		tinsert(tbSay,"Thi�n nh�n b�a ./#g7chonbikipokay(53)")
		tinsert(tbSay,"Thi�n nh�n �ao ./#g7chonbikipokay(36)")
	end
	if nFact == 8 then
		tinsert(tbSay,"V� �ang kh� ./#g7chonbikipokay(33)")
		tinsert(tbSay,"V� �ang ki�m ./#g7chonbikipokay(34)")
	end
	if nFact == 9 then
		tinsert(tbSay,"C�n l�n �ao ./#g7chonbikipokay(50)")
		tinsert(tbSay,"C�n l�n ki�m ./#g7chonbikipokay(51)")
		tinsert(tbSay,"C�n l�n b�a ./#g7chonbikipokay(52)")
	end
	tinsert(tbSay,"�� sau �i ./ketthuc")
	Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
end

function g7chonbikipokay(nId)
	if GetLevel() < 80 then
		Say("C�p 80 tr� l�n m�i c� th� nh�n ���c")
		return
	end
	if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y nh�n.",0);
		return
	end	
	local task = GetTask(idTaskNhanBiKip)
	if task > 2 then
		Say("Ch� ���c nh�n t�i �a 3 l�n")
		return
	end
	local idbk = AddItem(6,1,nId,1,0,0) --bi kip 90
	SetItemBindState(idbk,-2)
	SetTask(idTaskNhanBiKip,task+1)
end

tyledoi = 
{
	tyle_all = 
	{
		[1] = {100 , 10},--than bi ra xu
		[2] = {100 , 20},--thuong thien lenh ra xu
		[3] = {100 , 20},--phat ac lenh ra xu
	},
	thuongthienlenhraxu = 
	{
		[1] = {100 , 5}
	},
	phataclenhraxu = 
	{
		[1] = {100 , 8}
	},
}

function KTTop200CaoThuDauTien()
local OUPUT_FILE_PATH = "settings/giftcode/200caothu.txt"
local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
local STT = 1

if not tbFile2 then
	Msg2Player("Ki�m tra th�t b�i vui l�ng li�n h� GM!")
	return 0
end

for _, tbRow in tbFile2 do
	STT = STT + 1
end

return STT

end

function nhanthuong200caothu()

--do Say("Th�t ti�c ��i hi�p �� b� l� c� h�i n�y!") return end

local nLevel = GetLevel()
if nLevel < 100 then
	Say("V� ��i hi�p n�y h�nh nh� ��ng c�p ch�a ��")
	return
end

if CalcFreeItemCellCount() < 50 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y m�.",0);
	return
end

local task = GetTask(idtask200caothudautien)
if task > 0 then
	Say("Ng��i �� nh�n r�i c�n g�")
	return
end

local slcaothu = KTTop200CaoThuDauTien()

if slcaothu <= 200 then
	local OUPUT_FILE_PATH = "settings/giftcode/200caothu.txt"
	local szTime = date("%Y-%m-%d %H:%M:%S")
	local szOut = slcaothu.."\t" .. nLevel .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
	G7VNAppendFile(OUPUT_FILE_PATH, szOut)

	inVatPham = AddItem(6,1,26,0,0,0,0)--vo lam mat tich
	SetItemBindState(inVatPham,-2)
	inVatPham = AddItem(6,1,22,0,0,0,0)--tay tuy kinh
	SetItemBindState(inVatPham,-2)
	Msg2Player("Nh�n ���c 1 V� L�m M�t T�ch v� 1 T�y T�y Kinh")
	
	local tbstr = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� ghi t�n m�nh v�o TOP 200 cao th� ��u ti�n ��t m�c Level 100 v� nh�n ���c ph�n th��ng t�i npc L�c Tr�c L�o �ng";
	AddGlobalCountNews(tbstr,3)
	Msg2SubWorld(tbstr)

	SetTask(idtask200caothudautien, task + 1)

	else
	Say("Th�t ti�c ��i hi�p �� b� l� c� h�i n�y!")
end

end

function gmgiftcode()

	local task = GetTask(idtaskgiftcodet92015)
	if task > 0 then
	Say("��t th��ng GIFTCODE n�y ng��i �� nh�n r�i c�n g�")
	return 1
	end

	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local nlevel = GetLevel()
	local ntrungs = ST_GetTransLifeCount()
	--if nlevel <50 or nlevel >139 or ntrungs ~= 0 then
	--if nlevel <50 or nlevel >139 then
		--Say("�i�u ki�n ��ng c�p nh�n v�t t� 50 ��n 139 v� tr�ng sinh �t h�n ho�c b�ng 1. ��n g�p NPC H� tr� t�n th� nh�p ch� <color=yellow>volamg7vn<color> �� l�n level 50 v� c�c v�t ph�m h� tr�");
		--return 1
	--end
	
	AskClientForString("GiftCode_1", "", 1, 36, "Nh�p CODE");
end

function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			--local nValue = tonumber(TabFile_GetCell(szFile, i + 1, j + 1))
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end

function GiftCode_1(szCode)
	local INPUT_FILE_PATH = "\\settings\\giftcode\\giftcode.txt"
	local OUPUT_FILE_PATH = "\\settings\\giftcode\\luuphat.txt"
	local KTra 	= 0;
	if GetTask(2145, 6) > 0 then
		Say("��i hi�p ch� nh�n girfcode 1 l�n!")
		return
	end
	
	if szCode == "" then
		Msg("Vui l�ng nh�p code CODE!")
		return
	end

	local tbFile = LoadTabFile(INPUT_FILE_PATH)

	if not tbFile then
		Say("Hi�n t�i kh�ng ph�t Code!")
		return
	end
		--for _, tbRow in pairs(tbFile) do
			--local szMaCode = tbRow["MaCoDe"] or ""
			--if szMaCode == szCode then
				--self:KTraPhatCode(szCode)
				--KTra = 1;	--CO TIM THAY MA CODE
				--return
			--end
		--end

		for _, tbRow in tbFile do
			--local szMaCode  = tbRow["MaCoDe"] or ""
			szMaCode  = tbRow[1] or "" 
			--Msg2Player(tbRow[1])
			--Msg2Player(szCode)
			if szMaCode == szCode then
				KTraPhatCode(szCode)
				KTra = 1;	--CO TIM THAY MA CODE
				return
			end
		end

	if KTra == 0 then
		Say("M� code nh�p kh�ng ��ng ho�c �� s� d�ng!")
	end
end 

function KTraPhatCode(szCode)
	--local OUPUT_FILE_PATH = "\\settings\\giftcode\\luuphat.txt"
	local OUPUT_FILE_PATH = "settings/giftcode/luuphat.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
	local STT = 1
	--Msg2Player(szCode)
	if not tbFile2 then
		Msg2Player("Ki�m tra th�t b�i vui l�ng li�n h� GM!")
		return
	end
	if szCode == "" then
		Msg2Player("Vui l�ng nh�p CODE!")
		return
	end
		for _, tbRow in tbFile2 do
			local szMaCode = tbRow[1] or ""
			if szMaCode == szCode then
				Say("Xin l�i m� CODE n�y �� ���c s� d�ng!")
				return
			end
			STT = STT + 1
		end
	--WRITE FILE
	--local szTime	= date("%Y-%m-%d %H:%M:%S", GetTime())
	local szTime = date("%Y-%m-%d %H:%M:%S")
	local szOut = STT.."\t" .. szCode .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
	G7VNAppendFile(OUPUT_FILE_PATH, szOut)
	--PHAN THUONG CODE
	--SetTask(2145, 6, 1);	--TASK SU DUNG CAN KHAI BAO TRONG \setting\player\task_def.txt
	--local tbItemInfo = {bForceBind = 1}

	--phanthuongiftcode1(); --PHAN THUONG TUY CHINH
	--phanthuongiftcodepack1();--PHAN THUONG RANDOM THEM GOI THIEN HOANG
	phanthuonggiftcode092015()
	Say("Ch�c m�ng nh�n GiftCode th�nh c�ng!")
end

function G7VNAppendFile(url, str)
	--Msg2Player(url);
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;

function main()

myreloadfile()

end;

Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
--Include("\\script\\global\\g7vn\\g7giftcodetanthu.lua")

function myreloadfile()
--dofile("script/global/tieungao/cayxumienphi.lua");
--dofile("script/global/tieungao/hotrothemtieungao.lua");
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/global/g7vn/g7giftcodetanthu.lua")

nDate = tonumber(date("%Y%m%d%H%M"))

somatdocanco = tyledoi["tyle_all"][1][1]
soxudoiduocmd = tyledoi["tyle_all"][1][2]

sothuongthienlenh = tyledoi["tyle_all"][2][1]
soxudoiduocttl = tyledoi["tyle_all"][2][2]

sophataclenhcanco = tyledoi["tyle_all"][3][1]
soxudoiduocpal = tyledoi["tyle_all"][3][2]

local tbSay = {}

	if begin_datecayxu <= nDate and  end_datecayxu >= nDate then
		tinsert(tbSay,"��i m�t �� "..somatdocanco.." -> "..soxudoiduocmd.." xu ./doimatdoraxu")
		tinsert(tbSay,"��i th��ng thi�n l�nh "..sothuongthienlenh.." -> "..soxudoiduocttl.." xu ./doithuongthienlenh")
		tinsert(tbSay,"��i ph�t �c l�nh "..sophataclenhcanco.." -> "..soxudoiduocpal.." xu ./doiphataclenh")
	end
	if nhapgiftcodenhanthuong == 1 then
		tinsert(tbSay,"Nh�p Giftcode l�y qu� ./gmgiftcode")
		tinsert(tbSay,"Gi�i thi�u GiftCode ./gmgiftcodeInfo")
		--tinsert(tbSay,"Test GIFTCODE ./phanthuonggiftcode092015")
	end
	--tinsert(tbSay,"��ng k� s�t nh�p server ./DangKySatNhap")
	--tinsert(tbSay,"��i 2 HKMP l�y 1 ch�a kh�a Ho�ng Kim./#DoiHKMPRac()")
	--tinsert(tbSay,"��i 2 HKMP HCTG l�y 1 ch�a kh�a Ho�ng Kim./#DoiHKMPRacHCTG()")
	--tinsert(tbSay,"��i Phi V�n Kh�ng HDS ra Ng� H�nh K� Th�ch ./#DoiPVRaNHKT()")
	--tinsert(tbSay,"Nh�n b� k�p 90 ./g7chonbikip")
	--tinsert(tbSay,"Nh�n th��ng 200 cao th� ��u ti�n ��t 100 tr� l�n ./nhanthuong200caothu")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("Ch�o ��i hi�p, ta c� th� gi�p g�?", getn(tbSay), tbSay)

end

function DangKySatNhap()

local OUPUT_FILE_PATH = "dulieu/dangkysatnhap.txt"
local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
local STT = 1
if not tbFile2 then
	Msg2Player("Ki�m tra th�t b�i vui l�ng li�n h� GM!")
	return
end

for _, tbRow in tbFile2 do
		local MyAcc = tbRow[3] or ""
		local MyName = tbRow[2] or ""

		if MyAcc == GetAccount() and MyName == GetName() then
			Say("��i hi�p �� ��ng k� chuy�n th�nh c�ng r�i!")
			return
		end
		STT = STT + 1
end

local szTime = date("%Y-%m-%d %H:%M:%S")
local szOut = STT.."\t" .. GetLevel() .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
G7VNAppendFile(OUPUT_FILE_PATH, szOut)
Say("��ng k� th�nh c�ng!")
end

function gmgiftcodeInfo()
Talk(4,"",
"L�c Tr�c L�o �ng # ng��i h�i GIFTCODE l� g�? , ta s� t� t� n�i cho ng��i nghe . ",
"L�c Tr�c L�o �ng # GIFTCODE l� m�t m� s� qu� t�ng bao g�m m�t chu�i s� t� BQT G7VN cung c�p . ",
"L�c Tr�c L�o �ng # khi nh�p GIFTCODE ng��i nh�n ���c �i�m kinh nghi�m v� r�t nhi�u qu� t�ng h�p d�n kh�c . ",
"L�c Tr�c L�o �ng # cu�i c�ng , ng��i n�n tham gia c�c ho�t ��ng tr�n Web http://g7vn.net ho�c FanPage http://facebook.com/volamg7vn �� c� c� h�i nh�n ���c n� #") 
end


function doimatdoraxu()

somatdocanco = tyledoi["tyle_all"][1][1]
soxudoiduoc = tyledoi["tyle_all"][1][2]

GiveItemUI("��i m�t �� th�n b� l�y xu", "�� ��i l�y xu ��i hi�p vui l�ng mang ��n cho ta b�i "..somatdocanco.." m�t �� th�n b�.Ta kh�ng l�y s� l�.", "confirm_doimatdoraxu", "onCancel", 1);
end;

function confirm_doimatdoraxu(ncount) 

somatdocanco = tyledoi["tyle_all"][1][1]
soxudoiduocmd = tyledoi["tyle_all"][1][2]

--Msg2Player(soxudoiduoc)

local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==196) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Talk(1,"","Th�n b� m�t �� kh�ng �� , ��i hi�p ki�m tra xem m�t ch�t !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng��i giao cho ta th�n b� m�t �� kh�ng �� , n�a ki�m tra xem m�t ch�t !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta ch� c�n 100 t� th�n b� m�t �� , kh�ng c�n cho ta mang ��n nhi�u nh� v�y ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","S� m�t �� c�n giao l� b�i s� "..somatdocanco..", ta kh�ng l�y l�.") 
	return 
	end

	solanchia = scrollcount / somatdocanco

	for i = 1, 12 do 
	RemoveItemByIndex(scrollidx[i]) 
	end 
end 

--if (scrollcount == 100) then 
--for i = 1, y do 
--RemoveItemByIndex(scrollidx[i]) 
--end 
--end; 

resultxu = soxudoiduocmd * solanchia
if(resultxu>=100) then
	resultvonglap100 = resultxu/100
	for i=1, resultvonglap100 do
		AddStackItem(100,4,417,1,1,0,0,0)--100 xu voi moi vong lap them vao
		--Msg2Player(resultvonglap100)
	end
	resultxudu = mod(resultxu , 100)
	--Msg2Player(resultxudu)
	AddStackItem(resultxudu,4,417,1,1,0,0,0)--xu du sau khi het vong lap
else
	AddStackItem(resultxu,4,417,1,1,0,0,0)
end

Msg2Player("�� ��i xu th�nh c�ng "..scrollcount.." m�t �� -> "..resultxu.." xu")
end 

--=======================DOI THUONG THIEN LENH============================

function doithuongthienlenh()
somatdocanco = tyledoi["tyle_all"][2][1]
soxudoiduoc = tyledoi["tyle_all"][2][2]

GiveItemUI("��i th��ng thi�n l�nh l�y xu", "�� ��i l�y xu ��i hi�p vui l�ng mang ��n cho ta b�i "..somatdocanco.." th��ng thi�n l�nh.Ta kh�ng l�y s� l�.", "confirm_ttldoraxu", "onCancel", 1);
end;

function confirm_ttldoraxu(ncount)
somatdocanco = tyledoi["tyle_all"][2][1]
soxudoiduocmd = tyledoi["tyle_all"][2][2]

--Msg2Player(soxudoiduoc)

local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==197) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Talk(1,"","Th��ng thi�n l�nh kh�ng �� , ��i hi�p ki�m tra xem m�t ch�t !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng��i giao cho ta Th��ng thi�n l�nh kh�ng �� , n�a ki�m tra xem m�t ch�t !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta ch� c�n 100 Th��ng thi�n l�nh , kh�ng c�n cho ta mang ��n nhi�u nh� v�y ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","S� Th��ng thi�n l�nh c�n giao l� b�i s� "..somatdocanco..", ta kh�ng l�y l�.") 
	return 
	end

	solanchia = scrollcount / somatdocanco

	for i = 1, 24 do 
	RemoveItemByIndex(scrollidx[i]) 
	end 
end 

--if (scrollcount == 100) then 
--for i = 1, y do 
--RemoveItemByIndex(scrollidx[i]) 
--end 
--end; 

--AddStackItem(soxudoiduocmd * solanchia,4,417,1,1,0,0,0)

resultxu = soxudoiduocmd * solanchia
if(resultxu>=100) then
	resultvonglap100 = resultxu/100
	for i=1, resultvonglap100 do
		AddStackItem(100,4,417,1,1,0,0,0)--100 xu voi moi vong lap them vao
		--Msg2Player(resultvonglap100)
	end
	resultxudu = mod(resultxu , 100)
	--Msg2Player(resultxudu)
	AddStackItem(resultxudu,4,417,1,1,0,0,0)--xu du sau khi het vong lap
else
	AddStackItem(resultxu,4,417,1,1,0,0,0)
end

Msg2Player("�� ��i xu th�nh c�ng "..scrollcount.." Th��ng thi�n l�nh -> "..resultxu.." xu")
end;

--=================DOI PHAT AC LENH=======================

function doiphataclenh()
somatdocanco = tyledoi["tyle_all"][3][1]
soxudoiduoc = tyledoi["tyle_all"][3][2]

GiveItemUI("��i ph�t �c l�nh l�y xu", "�� ��i l�y xu ��i hi�p vui l�ng mang ��n cho ta b�i "..somatdocanco.." ph�t �c l�nh.Ta kh�ng l�y s� l�.", "confirm_paldoraxu", "onCancel", 1);
end;

function confirm_paldoraxu(ncount)
somatdocanco = tyledoi["tyle_all"][3][1]
soxudoiduocmd = tyledoi["tyle_all"][3][2]

--Msg2Player(soxudoiduoc)

local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==198) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Talk(1,"","Ph�t �c l�nh kh�ng �� , ��i hi�p ki�m tra xem m�t ch�t !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng��i giao cho ta Ph�t �c l�nh kh�ng �� , n�a ki�m tra xem m�t ch�t !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta ch� c�n 100 Ph�t �c l�nh , kh�ng c�n cho ta mang ��n nhi�u nh� v�y ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","S� Ph�t �c l�nh c�n giao l� b�i s� "..somatdocanco..", ta kh�ng l�y l�.") 
	return 
	end

	solanchia = scrollcount / somatdocanco

	for i = 1, 24 do 
	RemoveItemByIndex(scrollidx[i]) 
	end 
end 

--if (scrollcount == 100) then 
--for i = 1, y do 
--RemoveItemByIndex(scrollidx[i]) 
--end 
--end; 

--AddStackItem(soxudoiduocmd * solanchia,4,417,1,1,0,0,0)

resultxu = soxudoiduocmd * solanchia
if(resultxu>=100) then
	resultvonglap100 = resultxu/100
	for i=1, resultvonglap100 do
		AddStackItem(100,4,417,1,1,0,0,0)--100 xu voi moi vong lap them vao
		--Msg2Player(resultvonglap100)
	end
	resultxudu = mod(resultxu , 100)
	--Msg2Player(resultxudu)
	AddStackItem(resultxudu,4,417,1,1,0,0,0)--xu du sau khi het vong lap
else
	AddStackItem(resultxu,4,417,1,1,0,0,0)
end


Msg2Player("�� ��i xu th�nh c�ng "..scrollcount.." Ph�t �c l�nh -> "..resultxu.." xu")
end;

function DoiHKMPRac()
	GiveItemUI("��i hi�p kh�ng s� d�ng �� l�i cho ta", "Xin m�i ��t trang b� HKMP v�o b�ng giao. 2 trang b� HKMP ��i ���c 1 ch�a kh�a Ho�ng Kim", "confirm_DoiHKMPRac", "onCancel", 1);
end

function DoiHKMPRacHCTG()
	GiveItemUI("��i hi�p kh�ng s� d�ng �� l�i cho ta", "Xin m�i ��t trang b� HKMP v�o b�ng giao. 2 trang b� HKMP_HCTG ��i ���c 1 ch�a kh�a Ho�ng Kim", "confirm_DoiHKMPHCTG", "onCancel", 1);
end

function DoiPVRaNHKT()
	GiveItemUI("��i hi�p kh�ng s� d�ng �� l�i cho ta", "Xin m�i ��t ng�a Phi V�n v�o b�ng giao. 1 Ng�a Phi V�n ��i ���c 170 Ng� H�nh K� Th�ch", "confirm_DoiPVRaNHKT", "onCancel", 1);
end

function confirm_DoiPVRaNHKT(ncount)
	local removeItemID = {}
	local countHKMP = 0

	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i)

		local nUseTime = ITEM_GetLeftUsageTime(nItemIdx);
		local nExpireTime = ITEM_GetExpiredTime(nItemIdx);
		if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng c� th�i h�n s� d�ng")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng kh�a")
			return
		end

		itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
		if (itemgenre == 0 and detailtype == 10 and parttype ==8) then 
				removeItemID[i] = nItemIdx
				countHKMP = countHKMP + 1
				else
			Msg2Player("Th� c�c h� giao kh�ng ph�i ng�a Phi V�n")
			return
		end 

	end

	if countHKMP ~= 1 then
		Msg2Player("Ph�i b� ��ng 1 Ng�a Phi V�n")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ng� H�nh K� Th�ch", tbProp={6,1,2125,1,0,0}, nCount=170},
	}
	tbAwardTemplet:Give(tbAward, 1, {"DoiPVLay170NHKT", "DoiPVLay170NHKT"})

	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Ng�a Phi V�n l�y 150 NHKT<color> t�i npc L�c Tr�c l�o �ng (Ba l�ng Huy�n 202/199)")
end

function confirm_DoiHKMPRac(ncount)
	
	local removeItemID = {}
	local countHKMP = 0

	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i)

		local nUseTime = ITEM_GetLeftUsageTime(nItemIdx);
		local nExpireTime = ITEM_GetExpiredTime(nItemIdx);
		if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng c� th�i h�n s� d�ng")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng kh�a")
			return
		end

		local goldid = GetGlodEqIndex(nItemIdx)--dem hoang kim

		if(goldid >= 1 and goldid <=140) then--Kiem tra id hkmp
			removeItemID[i] = nItemIdx
			countHKMP = countHKMP + 1
			else
			Msg2Player("Trang b� b� v�o kh�ng h�p l�")
			return
		end
	end

	if countHKMP ~= 2 then
		Msg2Player("Ph�i b� ��ng 2 trang b� HKMP")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ch�a kh�a Ho�ng Kim", tbProp={6, 1, 4297, 1, 0, 0}, nCount=1},
	}
	tbAwardTemplet:Give(tbAward, 1, {"DoiHKMPRacChiaKhoaHK", "DoiHKMPRacChiaKhoaHK"})

end

function confirm_DoiHKMPHCTG(ncount)
	
	local removeItemID = {}
	local countHKMP = 0

	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i)

		local nUseTime = ITEM_GetLeftUsageTime(nItemIdx);
		local nExpireTime = ITEM_GetExpiredTime(nItemIdx);
		if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng c� th�i h�n s� d�ng")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("Ch� c� th� d�ng v�t ph�m kh�ng kh�a")
			return
		end

		local goldid = GetGlodEqIndex(nItemIdx)--dem hoang kim
		if goldid == 855 or goldid == 891 or goldid == 898 or goldid == 901 or goldid == 843 or
		goldid == 854 or goldid == 796 or goldid == 801 or goldid == 808 or goldid == 829 or
		goldid == 834 or goldid == 868 or goldid == 874 or goldid == 876 or goldid == 793 or
		goldid == 769 or goldid == 771 or goldid == 776 or goldid == 811 or goldid == 816 then 
		--if(goldid >= 1 and goldid <=140) then--Kiem tra id hkmp
			removeItemID[i] = nItemIdx
			countHKMP = countHKMP + 1
			else
			Msg2Player("Trang b� b� v�o kh�ng h�p l�")
			return
		end
	end

	if countHKMP ~= 2 then
		Msg2Player("Ph�i b� ��ng 2 trang b� HKMP")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ch�a kh�a Ho�ng Kim", tbProp={6, 1, 4297, 1, 0, 0}, nCount=1},
	}
	tbAwardTemplet:Give(tbAward, 1, {"DoiHKMPRac_HCTG_ChiaKhoaHK", "DoiHKMPRac_HCTG_ChiaKhoaHK"})

end