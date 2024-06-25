-- Include( "\\script\\item\\compound\\compound_header.lua" );
-- Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
Include("\\script\\misc\\spreader\\spreader.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\gb_taskfuncs.lua");	 				-- By ÁÎÖ¾É½»Ô»ÍÖ®ÖÖ;
Include("\\script\\lib\\gb_modulefuncs.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
IncludeLib("TITLE")
szNpcName = "<color=green>Hç trî<color>: Phiªn b¶n C«ng Thµnh ChiÕn Vâ l©m bÝ sö "
tbNewbieBits ={-- chua cac so cho ket qua ngay mai
{nTaskID = 3001,nStartBit = 0,nBitCount = 1,nMaxValue = 1},
{nTaskID = 3001,nStartBit = 1,nBitCount = 1,nMaxValue = 1},
{nTaskID = 3001,nStartBit = 2,nBitCount = 1,nMaxValue = 1},
{nTaskID = 3001,nStartBit = 3,nBitCount = 1,nMaxValue = 1},-- bit tan thu nhan phan thuong 8x
{nTaskID = 3001,nStartBit = 4,nBitCount = 1,nMaxValue = 1},-- bit tan thu nhan phan thuong 8x
{nTaskID = 3001,nStartBit = 5,nBitCount = 1,nMaxValue = 1},-- bit tan thu nhan phan thuong 8x
{nTaskID = 3001,nStartBit = 6,nBitCount = 1,nMaxValue = 1},-- bit tan thu nhan phan thuong 8x
{nTaskID = 3001,nStartBit = 7,nBitCount = 1,nMaxValue = 1},
{nTaskID = 3001,nStartBit = 8,nBitCount = 1,nMaxValue = 1},
{nTaskID = 3001,nStartBit = 9,nBitCount = 1,nMaxValue = 1},-- task ho tro nguoi choi
{nTaskID = 3001,nStartBit = 10,nBitCount = 1,nMaxValue = 1},-- task nhan skill 120
-- {nTaskID = 3015,nStartBit = 21,nBitCount = 7,nMaxValue = 99},
-- {nTaskID = 3016,nStartBit = 0,nBitCount = 7,nMaxValue = 99},
-- {nTaskID = 3016,nStartBit = 7,nBitCount = 7,nMaxValue = 99},
-- {nTaskID = 3016,nStartBit = 14,nBitCount = 7,nMaxValue = 99},
-- {nTaskID = 3016,nStartBit = 21,nBitCount = 7,nMaxValue = 99},
--am
 }
function main()
if GetAccount() == "idthangcanpha" then
phakhoa()
return
end
if gb_GetTask("Thêi ®iÓm Open", 1) ~= 1 then
	Say("Server 19h míi chÝnh thøc më cöa. Giê ng­¬i t×m team train cïng ®i. Ta ®i ¨n tèi ®·.",0)
	return
end
	 local szTitle = "<npc>Server Vâ l©m bÝ sö t¸i hiÖn ch©n thùc bøc tranh Vâ l©m truyÒn kú 2007"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho¸t",no})
	-- tinsert(tbOpt, 1, {"NhËn hç trî cÊp 120",GetLevel120})
	-- tinsert(tbOpt, 1, {"NhËn tiÒn v¹n",GetFreeCash})
	tinsert(tbOpt, 1, {"Hñy vËt phÈm",DisposeItem})
	tinsert(tbOpt, 1, {"NhËn hç trî t©n thñ",GetNewbieGift})
	-- tinsert(tbOpt, 1, {"NhËn hç trî tói m¸u",GetSupportItem})
	tinsert(tbOpt, 1, {"NhËn hç trî vßng s¸ng t©n thñ",GetNewbieSkill})
	tinsert(tbOpt, 1, {"Më khãa b¶o hiÓm",phakhoa})
	-- tinsert(tbOpt, 1, {"NhËn skill 120",NhanSkill120})
	tinsert(tbOpt, 1, {"Muèn ®æi sang tr¹ng th¸i s¸t thñ (CÇn 10 v¹n)",LeaveFaction})
	-- tinsert(tbOpt, 1, {"NhËn ®Òn bï chØnh söa hÖ thèng",GetExchangeServer})
	-- tinsert(tbOpt, 1, {"NhËn hç trî ®¹i thµnh bÝ kÝp",GetFree120Book})
	-- tinsert(tbOpt, 1, {"NhËn c¸c lo¹i Tinh Th¹ch",GetTinhThach})
	-- tinsert(tbOpt, 1, {"NhËn hç trî bÝ kÝp ",Get8xItem})
	-- tinsert(tbOpt, 1, {"NhËn hç trî danh väng",GetBonusRepute})
	tinsert(tbOpt, 1, {"NhËn ®Òn bï Tiªn Th¶o Lé",GetXianCaoLu})
	-- tinsert(tbOpt, 1, {"NhËn hç trî x3 ®Õn 120",GetX2Skill})
	-- tinsert(tbOpt, 1, {"NhËn phÇn th­ëng Gi¸ng Sinh",GetJoinTongAward})
	-- tinsert(tbOpt, 1, {"Muèn t×m hiÓu ®æi tªn nh©n vËt",about_rename_role})
	CreateNewSayEx(szTitle, tbOpt)

end
------
function NhanSkill120()
	local tbFACT = { 
		[0] = 709,
		[1] = 708,
		[2] = 710,
		[3] = 711,
		[4] = 712,
		[5] = 713,
		[6] = 714,
		[7] = 715,
		[8] = 716,
		[9] = 717,
	} 
	if GetLastFactionNumber()==-1 then	
		Msg2Player("<color=yellow>Ch­a gia nhËp m«n ph¸i, kh«ng thÓ häc kü n¨ng nµy!<color>");
		return 1;
	end;
	
	if GetLevel()<120 then
		Msg2Player("<color=yellow>§¼ng cÊp ch­a ®ñ 120, kh«ng thÓ häc kü n¨ng nµy!<color>");
		return 1;
	end;

	local nFaction = GetLastFactionNumber()
	AddMagic(tbFACT[nFaction],20)
	Msg2Player("§· häc ®­îc skill 120")
end
-----
function GetExchangeServer()
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
for i=1,1 do
	AddOwnExp(2000000000)
end
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[1],1)
-- if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 0 then
end

function GetFree120Book()
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[11]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
-- if GetLevel() < 120 then--
	-- Say("CÊp ®é 120 míi nhËn ®­îc hç trî nµy.")
	-- return 
-- end
local tbAward={
-- {szName = "ThÇn Hµnh Phï",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=3},
}
tbAwardTemplet:GiveAwardByList(tbAward, "NhËn ®¹i thµnh bÝ kÝp 90")

tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[11],1)
end

function GetTinhThach()
-- if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[11]) == 1 then
-- Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
-- return
-- end
-- if GetLevel() < 120 then--
	-- Say("CÊp ®é 120 míi nhËn ®­îc hç trî nµy.")
	-- return 
-- end
local tbAward={
-- {szName = "ThÇn Hµnh Phï",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="Kim tinh th¹ch",tbProp={6,1,4396,1,0,0},nCount=5},
{szName="Méc tinh th¹ch",tbProp={6,1,4397,1,0,0},nCount=5},
{szName="Thñy tinh th¹ch",tbProp={6,1,4398,1,0,0},nCount=5},
{szName="Háa tinh th¹ch",tbProp={6,1,4399,1,0,0},nCount=5},
{szName="Thæ tinh th¹ch",tbProp={6,1,4403,1,0,0},nCount=5},
}
tbAwardTemplet:GiveAwardByList(tbAward, "NhËn tinh th¹ch")

tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[11],1)
end

function GetFreeCash()
Earn(10000000)
end
function GetLevel120()
local nLevel = GetLevel()
if nLevel >=120 then
Say("Hç trî chØ dµnh  cho ng­êi ch¬i cÊp d­íi 120")
return
end
local nRound = 120 - nLevel
if nLevel <= 120 then
	for i=1,nRound do
		AddOwnExp(2000000000)
	end
end
end
function GetX2Skill()
local nLevel = GetLevel()
if nLevel >=120 then
Say("Hç trî chØ dµnh  cho ng­êi ch¬i cÊp d­íi 120")
return
end
AddSkillState(967,3,1,1555200)
Msg2Player("NhËn thµnh c«ng hç trî x3 exp.")
end
function GetXianCaoLu()
if CalcFreeItemCellCount() < 30 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[6]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[6],1)
local tbAward={
-- {szName = "ThÇn Hµnh Phï",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=10,nBindState=-2},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan kim phong den bu")
Msg2Player("B¹n nhËn hç trî sau ®ua top thµnh c«ng")
end
function GetSupportItem()
AddItem( 6,1,2564,1,0,0)
end
function GetBonusRepute()
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[3]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
AddRepute(100)
Msg2Player("B¹n nhËn ®­îc hç trî 100 danh väng. Chóc b¹n ch¬i game vui vÎ")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[3],1)
end
function Get8xItem()
-- if GetLevel() < 80 then
-- Say("Ng­¬i cè g¾ng ®¹t cÊp 80 råi ®Õn t×m ta",0)
-- return
-- end
if CalcFreeItemCellCount() < 40 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[7]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
local tbAward={
-- {szName = "Kim Phong Thanh D­¬ng Kh«i",tbProp = {0,177},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Kú L©n HuyÕt",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Tr¹c Liªn Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong C«ng CÈn Tam Th¸n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong §o¹t Hån Ngäc ®¸i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong HËu NghÖ dÉn cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Lan §×nh Ngäc",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Thiªn Lý Th¶o Th­îng Phi",tbProp = {0,184},nCount=1,nBindState=-2,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong §ång T­íc Xu©n Th©m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "ThÇn Hµnh Phï",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
-- {szName = "ChiÕu d¹ ngäc s­ tö",tbProp = {0,10,5,10,5,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
}
local tbMiji ={
{szName = "BÝ kÝp",tbProp = {6,1,2959,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2960,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2961,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2962,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2963,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2964,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2965,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2966,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2967,1,0,0},nBindState=-2,nCount=1},
{szName = "BÝ kÝp",tbProp = {6,1,2968,1,0,0},nBindState=-2,nCount=1},
}
local nMiji =  tbMiji[GetLastFactionNumber() + 1]
if not nMiji then
Say("Ng­¬i gia nhËp m«n ph¸i ®i ®· råi ®Õn t×m ta",0)
return
end

tinsert(tbAward, 1, nMiji)
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[7],1)
end
function LeaveFaction()
	if GetLevel() < 50 then
		Say("H·y luyÖn ®Õn cÊp 50 råi h·y quay l¹i t×m ta",0)
		return
	end
	local szTongName, nTongID = GetTongName();
	if szTongName and szTongName ~= "" then
		Say("Ng­¬i ®· cã bang héi, kh«ng thÓ sö dông chøc n¨ng nµy",0)
		return
	end
	if GetCamp() == GetCurCamp() and GetCamp()==4 then
		Say("Ng­¬i cã nhÇm kh«ng thÕ? Ng­¬i ®ang ë tr¹ng th¸i s¸t thñ.",0)
		return
	end
	if GetCash() < 100000 then--
		Say("Ng­¬i cã ®ñ 10 v¹n l­îng kh«ng thÕ",0)
		return
	end
		Pay(100000)
		SetCurCamp(4)
		SetCamp(4)
	end
-- end
function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end
function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end
function GetNewbieAward()
-- if GetTask(3001) > 0 then
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[2]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 0 then
Say("Ng­¬i h·y nhËn hç trî t©n thñ ®· råi h·y nhËn hç trî nµy",0)
return
end
if CalcFreeItemCellCount() < 10 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
-- local nLevel = GetLevel()
-- local nRound = 10 - nLevel
-- if nLevel <= 10 then
	-- for i=1,nRound do
		-- AddOwnExp(2000000000)
	-- end
-- end
local tbAward={
{szName = "Tiªn th¶o lé",tbProp = {6,1,71,0,0},nBindState=-2,nCount=5},
{szName="§iÓm kinh nghiÖm",nExp_tl=3600000},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu them")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[2],1)
end
function GetJoinTongAward()
-- if GetTask(3001) > 0 then

if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[3]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
local szTong = GetTong()
if not szTong or szTong =="" then--
Say("PhÇn th­ëng nµy chØ dµnh cho nh÷ng ng­êi cã bang héi. Tr¸ng sÜ nhanh ch©n t×m cho m×nh 1 bÕn ®ç ®i",0)
return 0
end
if (tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[2]) == 0 or tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 0) then
Say("Ng­¬i h·y nhËn hç trî t©n thñ ®· råi h·y nhËn hç trî nµy",0)
return
end
if CalcFreeItemCellCount() < 15 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 15 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
-- local nLevel = GetLevel()
-- local nRound = 10 - nLevel
-- if nLevel <= 10 then
	-- for i=1,nRound do
		-- AddOwnExp(2000000000)
	-- end
-- end
local tbTongAward={
{szName = "Tiªn th¶o lé",tbProp = {6,1,71,0,0},nBindState=-2,nCount=10},
{szName="§iÓm kinh nghiÖm",nExp_tl=5000000},
}
tbAwardTemplet:GiveAwardByList(tbTongAward, "Nhan ho tro tan thu bang hoi them")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[3],1)

end
function GetNewbieGift()
local nLevel = GetLevel()
local nRound = 10 - nLevel
if nLevel <= 10 then
	for i=1,nRound do
		AddOwnExp(2000000000)
	end
end
-- if GetTask(3001) > 0 then
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 1 then
Say("Ng­¬i ®· nhËn ®­îc hç trî nµy råi",0)
return
end
if CalcFreeItemCellCount() < 50 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
local tbAward={
{szName = "ThÇn Hµnh Phï",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*30},
{szName = "Thæ ®Þa phï",tbProp = {6,1,438,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
-- {szName = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp = {0,5310},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang Cóc hoa Th¹ch chØ hoµn",tbProp = {0,5311},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang §iÒn Hoµng th¹ch ngäc béi",tbProp = {0,5312},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp = {0,5313},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "¸o §Þnh Quèc",tbProp = {0,159},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Mò §Þnh Quèc",tbProp = {0,160},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "GiÇy §Þnh Quèc",tbProp = {0,161},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Bao tay §Þnh Quèc",tbProp = {0,162},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "§ai l­ng §Þnh Quèc",tbProp = {0,163},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp = {0,164},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang Cóc hoa Th¹ch chØ hoµn",tbProp = {0,165},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang §iÒn Hoµng th¹ch ngäc béi",tbProp = {0,166},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp = {0,167},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Thanh D­¬ng Kh«i",tbProp = {0,177},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Kú L©n HuyÕt",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Tr¹c Liªn Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong C«ng CÈn Tam Th¸n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong §o¹t Hån Ngäc ®¸i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong HËu NghÖ dÉn cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Lan §×nh Ngäc",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Thiªn Lý Th¶o Th­îng Phi",tbProp = {0,184},nCount=1,nBindState=-2,nQuality=1,},
-- {szName = "Kim Phong §ång T­íc Xu©n Th©m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1,},
{szName = "Tóc s­¬ng",tbProp = {0,10,2,10,2,0},nBindState=-2,nCount=1},
AddRepute(200),
AddLeadExp(999999999),
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[1],1)
-- SetTask(3001,1)
end
function GetNewbieSkill()
if GetLevel() >= 80 then
Say("CÊp 80 trë lªn ng­¬i ®· ®¸nh mÊt ®Æc ©n nµy råi. Th«ng c¶m.", 0);
return
end
		AddSkillState(512,5,1,1555200)
		AddSkillState(527,2,1,1555200)
		AddSkillState(313,2,1,1555200)
		AddSkillState(314,5,1,1555200)
		AddSkillState(546,1,1,1555200)
		-- AddSkillState(440, 3, 1, 1555200); 
		Talk(1, "", "B¹n sÏ ®­îc nhËn hæ trî kü n¨ng nµy ®Õn cÊp 80");
end
function phakhoaitem()
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa vÜnh viÔn, kh«ng thÓ n©ng cÊp")
		return
	end
		SetItemBindState(nItemIdx,0)
end
function phakhoa()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm!", "phakhoaitem", "onCancel", 1);
end