--hoat dong doi xu edit by mcteam
IncludeLib("FILESYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")

function g7chonbikip()
	if GetLevel() < 80 then
		Say("CÊp 80 trë lªn míi cã thÓ nhËn ®­îc")
		return
	end
	local nFact = GetLastFactionNumber()
	Msg2Player(nFact)
	local tbSay = {}
	if nFact == 0 then
		tinsert(tbSay,"ThiÕu l©m quyÒn ./#g7chonbikipokay(56)")
		tinsert(tbSay,"ThiÕu l©m c«n ./#g7chonbikipokay(57)")
		tinsert(tbSay,"ThiÕu l©m ®ao ./#g7chonbikipokay(58)")
	end
	if nFact == 1 then
		tinsert(tbSay,"Thiªn v­ong chuú ./#g7chonbikipokay(37)")
		tinsert(tbSay,"Thiªn v­ong th­ong ./#g7chonbikipokay(38)")
		tinsert(tbSay,"Thiªn v­ong ®ao ./#g7chonbikipokay(39)")
	end
	if nFact == 2 then
		tinsert(tbSay,"§uêng m«n phi ®ao ./#g7chonbikipokay(45)")
		tinsert(tbSay,"§uêng m«n ná ./#g7chonbikipokay(27)")
		tinsert(tbSay,"§uêng m«n phi tiªu ./#g7chonbikipokay(46)")
		tinsert(tbSay,"§uêng m«n bÉy ./#g7chonbikipokay(28)")
	end
	if nFact == 3 then
		tinsert(tbSay,"Ngò ®éc chuëng ./#g7chonbikipokay(47)")
		tinsert(tbSay,"Ngò ®éc ®ao ./#g7chonbikipokay(48)")
		tinsert(tbSay,"Ngò ®éc bïa ./#g7chonbikipokay(49)")
	end
	if nFact == 4 then
		tinsert(tbSay,"Nga my kiÕm ./#g7chonbikipokay(42)")
		tinsert(tbSay,"Nga mi chuëng ./#g7chonbikipokay(43)")
		tinsert(tbSay,"Nga mi buff ./#g7chonbikipokay(59)")
	end
	if nFact == 5 then
		tinsert(tbSay,"Thuý yªn ®ao ./#g7chonbikipokay(40)")
		tinsert(tbSay,"Thuý yªn song ®ao ./#g7chonbikipokay(41)")
	end
	if nFact == 6 then
		tinsert(tbSay,"C¸i bang rång ./#g7chonbikipokay(54)")
		tinsert(tbSay,"C¸i bang bæng ./#g7chonbikipokay(55)")
	end
	if nFact == 7 then
		tinsert(tbSay,"Thiªn nhÉn kÝch ./#g7chonbikipokay(35)")
		tinsert(tbSay,"Thiªn nhÉn bïa ./#g7chonbikipokay(53)")
		tinsert(tbSay,"Thiªn nhÉn ®ao ./#g7chonbikipokay(36)")
	end
	if nFact == 8 then
		tinsert(tbSay,"Vâ ®ang khÝ ./#g7chonbikipokay(33)")
		tinsert(tbSay,"Vâ ®ang kiÕm ./#g7chonbikipokay(34)")
	end
	if nFact == 9 then
		tinsert(tbSay,"C«n l«n ®ao ./#g7chonbikipokay(50)")
		tinsert(tbSay,"C«n l«n kiÕm ./#g7chonbikipokay(51)")
		tinsert(tbSay,"C«n l«n bïa ./#g7chonbikipokay(52)")
	end
	tinsert(tbSay,"§Ó sau ®i ./ketthuc")
	Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function g7chonbikipokay(nId)
	if GetLevel() < 80 then
		Say("CÊp 80 trë lªn míi cã thÓ nhËn ®­îc")
		return
	end
	if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y nhËn.",0);
		return
	end	
	local task = GetTask(idTaskNhanBiKip)
	if task > 2 then
		Say("ChØ ®­îc nhËn tèi ®a 3 lÇn")
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
	Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
	return 0
end

for _, tbRow in tbFile2 do
	STT = STT + 1
end

return STT

end

function nhanthuong200caothu()

--do Say("ThËt tiÕc ®¹i hiÖp ®· bá lì c¬ héi nµy!") return end

local nLevel = GetLevel()
if nLevel < 100 then
	Say("VÞ ®¹i hiÖp nµy h×nh nh­ ®¼ng cÊp ch­a ®ñ")
	return
end

if CalcFreeItemCellCount() < 50 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y më.",0);
	return
end

local task = GetTask(idtask200caothudautien)
if task > 0 then
	Say("Ng­¬i ®· nhËn råi cßn g×")
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
	Msg2Player("NhËn ®­îc 1 Vâ L©m MËt TÞch vµ 1 TÈy Tñy Kinh")
	
	local tbstr = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· ghi tªn m×nh vµo TOP 200 cao thñ ®Çu tiªn ®¹t mèc Level 100 vµ nhËn ®­îc phÇn th­ëng t¹i npc Lôc Tróc L·o ¤ng";
	AddGlobalCountNews(tbstr,3)
	Msg2SubWorld(tbstr)

	SetTask(idtask200caothudautien, task + 1)

	else
	Say("ThËt tiÕc ®¹i hiÖp ®· bá lì c¬ héi nµy!")
end

end

function gmgiftcode()

	local task = GetTask(idtaskgiftcodet92015)
	if task > 0 then
	Say("§ît th­ëng GIFTCODE nµy ng­¬i ®· nhËn råi cßn g×")
	return 1
	end

	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local nlevel = GetLevel()
	local ntrungs = ST_GetTransLifeCount()
	--if nlevel <50 or nlevel >139 or ntrungs ~= 0 then
	--if nlevel <50 or nlevel >139 then
		--Say("§iÒu kiÖn ®¼ng cÊp nh©n vËt tõ 50 ®Õn 139 vµ trïng sinh Ýt h¬n hoÆc b»ng 1. §Õn gÆp NPC Hç trî t©n thñ nhËp ch÷ <color=yellow>volamg7vn<color> ®Ó lªn level 50 vµ c¸c vËt phÈm hç trî");
		--return 1
	--end
	
	AskClientForString("GiftCode_1", "", 1, 36, "NhËp CODE");
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
		Say("§¹i hiÖp chØ nhËn girfcode 1 lÇn!")
		return
	end
	
	if szCode == "" then
		Msg("Vui lßng nhËp code CODE!")
		return
	end

	local tbFile = LoadTabFile(INPUT_FILE_PATH)

	if not tbFile then
		Say("HiÖn t¹i kh«ng ph¸t Code!")
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
		Say("M· code nhËp kh«ng ®óng hoÆc ®· sö dông!")
	end
end 

function KTraPhatCode(szCode)
	--local OUPUT_FILE_PATH = "\\settings\\giftcode\\luuphat.txt"
	local OUPUT_FILE_PATH = "settings/giftcode/luuphat.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
	local STT = 1
	--Msg2Player(szCode)
	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	if szCode == "" then
		Msg2Player("Vui lßng nhËp CODE!")
		return
	end
		for _, tbRow in tbFile2 do
			local szMaCode = tbRow[1] or ""
			if szMaCode == szCode then
				Say("Xin lçi m· CODE nµy ®· ®­îc sö dông!")
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
	Say("Chóc mõng nhËn GiftCode thµnh c«ng!")
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
		tinsert(tbSay,"§æi mËt ®å "..somatdocanco.." -> "..soxudoiduocmd.." xu ./doimatdoraxu")
		tinsert(tbSay,"§æi th­ëng thiÖn lÖnh "..sothuongthienlenh.." -> "..soxudoiduocttl.." xu ./doithuongthienlenh")
		tinsert(tbSay,"§æi ph¹t ¸c lÖnh "..sophataclenhcanco.." -> "..soxudoiduocpal.." xu ./doiphataclenh")
	end
	if nhapgiftcodenhanthuong == 1 then
		tinsert(tbSay,"NhËp Giftcode lÊy quµ ./gmgiftcode")
		tinsert(tbSay,"Giíi thiÖu GiftCode ./gmgiftcodeInfo")
		--tinsert(tbSay,"Test GIFTCODE ./phanthuonggiftcode092015")
	end
	--tinsert(tbSay,"§¨ng ký s¸t nhËp server ./DangKySatNhap")
	--tinsert(tbSay,"§æi 2 HKMP lÊy 1 ch×a khãa Hoµng Kim./#DoiHKMPRac()")
	--tinsert(tbSay,"§æi 2 HKMP HCTG lÊy 1 ch×a khãa Hoµng Kim./#DoiHKMPRacHCTG()")
	--tinsert(tbSay,"§æi Phi V©n Kh«ng HDS ra Ngò Hµnh Kú Th¹ch ./#DoiPVRaNHKT()")
	--tinsert(tbSay,"NhËn bÝ kÝp 90 ./g7chonbikip")
	--tinsert(tbSay,"NhËn th­ëng 200 cao thñ ®Çu tiªn ®¹t 100 trë lªn ./nhanthuong200caothu")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Chµo ®¹i hiÖp, ta cã thÓ gióp g×?", getn(tbSay), tbSay)

end

function DangKySatNhap()

local OUPUT_FILE_PATH = "dulieu/dangkysatnhap.txt"
local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
local STT = 1
if not tbFile2 then
	Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
	return
end

for _, tbRow in tbFile2 do
		local MyAcc = tbRow[3] or ""
		local MyName = tbRow[2] or ""

		if MyAcc == GetAccount() and MyName == GetName() then
			Say("§¹i hiÖp ®· ®¨ng ký chuyÓn thµnh c«ng råi!")
			return
		end
		STT = STT + 1
end

local szTime = date("%Y-%m-%d %H:%M:%S")
local szOut = STT.."\t" .. GetLevel() .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
G7VNAppendFile(OUPUT_FILE_PATH, szOut)
Say("§¨ng ký thµnh c«ng!")
end

function gmgiftcodeInfo()
Talk(4,"",
"Lôc Tróc L·o ¤ng # ng­¬i hái GIFTCODE lµ g×? , ta sÏ tõ tõ nãi cho ng­¬i nghe . ",
"Lôc Tróc L·o ¤ng # GIFTCODE lµ mét m· sè quµ tÆng bao gåm mét chuçi sè tõ BQT G7VN cung cÊp . ",
"Lôc Tróc L·o ¤ng # khi nhËp GIFTCODE ng­¬i nhËn ®­îc ®iÓm kinh nghiÖm vµ rÊt nhiÒu quµ tÆng hÊp dÉn kh¸c . ",
"Lôc Tróc L·o ¤ng # cuèi cïng , ng­¬i nªn tham gia c¸c ho¹t ®éng trªn Web http://g7vn.net hoÆc FanPage http://facebook.com/volamg7vn ®Ó cã c¬ héi nhËn ®­îc nã #") 
end


function doimatdoraxu()

somatdocanco = tyledoi["tyle_all"][1][1]
soxudoiduoc = tyledoi["tyle_all"][1][2]

GiveItemUI("§æi mËt ®å thÇn bÝ lÊy xu", "§Ó ®æi lÊy xu ®¹i hiÖp vui lßng mang ®Õn cho ta béi "..somatdocanco.." mËt ®å thÇn bÝ.Ta kh«ng lÊy sè lÎ.", "confirm_doimatdoraxu", "onCancel", 1);
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
Talk(1,"","ThÇn bÝ mËt ®å kh«ng ®ñ , ®¹i hiÖp kiÓm tra xem mét chót !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng­¬i giao cho ta thÇn bÝ mËt ®å kh«ng ®ñ , n÷a kiÓm tra xem mét chót !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta chØ cÇn 100 tê thÇn bÝ mËt ®å , kh«ng cÇn cho ta mang ®Õn nhiÒu nh­ vËy ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","Sè mËt ®å cÇn giao lµ béi sè "..somatdocanco..", ta kh«ng lÊy lÎ.") 
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

Msg2Player("§· ®æi xu thµnh c«ng "..scrollcount.." mËt ®å -> "..resultxu.." xu")
end 

--=======================DOI THUONG THIEN LENH============================

function doithuongthienlenh()
somatdocanco = tyledoi["tyle_all"][2][1]
soxudoiduoc = tyledoi["tyle_all"][2][2]

GiveItemUI("§æi th­ëng thiÖn lÖnh lÊy xu", "§Ó ®æi lÊy xu ®¹i hiÖp vui lßng mang ®Õn cho ta béi "..somatdocanco.." th­ëng thiÖn lÖnh.Ta kh«ng lÊy sè lÎ.", "confirm_ttldoraxu", "onCancel", 1);
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
Talk(1,"","Th­ëng thiÖn lÖnh kh«ng ®ñ , ®¹i hiÖp kiÓm tra xem mét chót !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng­¬i giao cho ta Th­ëng thiÖn lÖnh kh«ng ®ñ , n÷a kiÓm tra xem mét chót !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta chØ cÇn 100 Th­ëng thiÖn lÖnh , kh«ng cÇn cho ta mang ®Õn nhiÒu nh­ vËy ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","Sè Th­ëng thiÖn lÖnh cÇn giao lµ béi sè "..somatdocanco..", ta kh«ng lÊy lÎ.") 
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

Msg2Player("§· ®æi xu thµnh c«ng "..scrollcount.." Th­ëng thiÖn lÖnh -> "..resultxu.." xu")
end;

--=================DOI PHAT AC LENH=======================

function doiphataclenh()
somatdocanco = tyledoi["tyle_all"][3][1]
soxudoiduoc = tyledoi["tyle_all"][3][2]

GiveItemUI("§æi ph¹t ¸c lÖnh lÊy xu", "§Ó ®æi lÊy xu ®¹i hiÖp vui lßng mang ®Õn cho ta béi "..somatdocanco.." ph¹t ¸c lÖnh.Ta kh«ng lÊy sè lÎ.", "confirm_paldoraxu", "onCancel", 1);
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
Talk(1,"","Ph¹t ¸c lÖnh kh«ng ®ñ , ®¹i hiÖp kiÓm tra xem mét chót !") 
return 
end 

solanchia = 0

if (scrollcount < somatdocanco) then 
Talk(1,"","Ng­¬i giao cho ta Ph¹t ¸c lÖnh kh«ng ®ñ , n÷a kiÓm tra xem mét chót !") 
return 
end 

if (scrollcount >= somatdocanco) then 
--Talk(1,"","Ta chØ cÇn 100 Ph¹t ¸c lÖnh , kh«ng cÇn cho ta mang ®Õn nhiÒu nh­ vËy ") 
--return

	solanchiadu = mod(scrollcount , somatdocanco)
	if(solanchiadu~=0) then
	Talk(1,"","Sè Ph¹t ¸c lÖnh cÇn giao lµ béi sè "..somatdocanco..", ta kh«ng lÊy lÎ.") 
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


Msg2Player("§· ®æi xu thµnh c«ng "..scrollcount.." Ph¹t ¸c lÖnh -> "..resultxu.." xu")
end;

function DoiHKMPRac()
	GiveItemUI("§¹i hiÖp kh«ng sö dông ®Ó l¹i cho ta", "Xin mêi ®Æt trang bÞ HKMP vµo b¶ng giao. 2 trang bÞ HKMP ®æi ®­îc 1 ch×a khãa Hoµng Kim", "confirm_DoiHKMPRac", "onCancel", 1);
end

function DoiHKMPRacHCTG()
	GiveItemUI("§¹i hiÖp kh«ng sö dông ®Ó l¹i cho ta", "Xin mêi ®Æt trang bÞ HKMP vµo b¶ng giao. 2 trang bÞ HKMP_HCTG ®æi ®­îc 1 ch×a khãa Hoµng Kim", "confirm_DoiHKMPHCTG", "onCancel", 1);
end

function DoiPVRaNHKT()
	GiveItemUI("§¹i hiÖp kh«ng sö dông ®Ó l¹i cho ta", "Xin mêi ®Æt ngùa Phi V©n vµo b¶ng giao. 1 Ngùa Phi V©n ®æi ®­îc 170 Ngò Hµnh Kú Th¹ch", "confirm_DoiPVRaNHKT", "onCancel", 1);
end

function confirm_DoiPVRaNHKT(ncount)
	local removeItemID = {}
	local countHKMP = 0

	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i)

		local nUseTime = ITEM_GetLeftUsageTime(nItemIdx);
		local nExpireTime = ITEM_GetExpiredTime(nItemIdx);
		if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng cã thêi h¹n sö dông")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng khãa")
			return
		end

		itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
		if (itemgenre == 0 and detailtype == 10 and parttype ==8) then 
				removeItemID[i] = nItemIdx
				countHKMP = countHKMP + 1
				else
			Msg2Player("Thø c¸c h¹ giao kh«ng ph¶i ngùa Phi V©n")
			return
		end 

	end

	if countHKMP ~= 1 then
		Msg2Player("Ph¶i bá ®óng 1 Ngùa Phi V©n")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ngò Hµnh Kú Th¹ch", tbProp={6,1,2125,1,0,0}, nCount=170},
	}
	tbAwardTemplet:Give(tbAward, 1, {"DoiPVLay170NHKT", "DoiPVLay170NHKT"})

	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· ®æi thµnh c«ng <color=yellow>Ngùa Phi V©n lÊy 150 NHKT<color> t¹i npc Lôc Tróc l·o ¤ng (Ba l¨ng HuyÖn 202/199)")
end

function confirm_DoiHKMPRac(ncount)
	
	local removeItemID = {}
	local countHKMP = 0

	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i)

		local nUseTime = ITEM_GetLeftUsageTime(nItemIdx);
		local nExpireTime = ITEM_GetExpiredTime(nItemIdx);
		if ((nUseTime > 0 and nUseTime ~= 4294967295)or (nExpireTime > 0)) then
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng cã thêi h¹n sö dông")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng khãa")
			return
		end

		local goldid = GetGlodEqIndex(nItemIdx)--dem hoang kim

		if(goldid >= 1 and goldid <=140) then--Kiem tra id hkmp
			removeItemID[i] = nItemIdx
			countHKMP = countHKMP + 1
			else
			Msg2Player("Trang bÞ bá vµo kh«ng hîp lÖ")
			return
		end
	end

	if countHKMP ~= 2 then
		Msg2Player("Ph¶i bá ®óng 2 trang bÞ HKMP")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ch×a khãa Hoµng Kim", tbProp={6, 1, 4297, 1, 0, 0}, nCount=1},
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
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng cã thêi h¹n sö dông")
			return
		end
		local nBindState = GetItemBindState(nItemIdx);

		if (nBindState ~= 0) then
			Say("ChØ cã thÓ dïng vËt phÈm kh«ng khãa")
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
			Msg2Player("Trang bÞ bá vµo kh«ng hîp lÖ")
			return
		end
	end

	if countHKMP ~= 2 then
		Msg2Player("Ph¶i bá ®óng 2 trang bÞ HKMP")
		return
	end

	for i=1, ncount do
		RemoveItemByIndex(removeItemID[i])
	end

	local tbAward = 
	{	
			{szName = "Ch×a khãa Hoµng Kim", tbProp={6, 1, 4297, 1, 0, 0}, nCount=1},
	}
	tbAwardTemplet:Give(tbAward, 1, {"DoiHKMPRac_HCTG_ChiaKhoaHK", "DoiHKMPRac_HCTG_ChiaKhoaHK"})

end