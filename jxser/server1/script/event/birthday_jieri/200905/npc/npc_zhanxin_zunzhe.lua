-- Include( "\\script\\item\\compound\\compound_header.lua" );
-- Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\misc\\spreader\\spreader.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\gb_taskfuncs.lua");	 				-- By ��־ɽ�Ի�֮��;
Include("\\script\\lib\\gb_modulefuncs.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
IncludeLib("TITLE")
szNpcName = "<color=green>H� tr�<color>: Phi�n b�n C�ng Th�nh Chi�n V� l�m b� s� "
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
if gb_GetTask("Th�i �i�m Open", 1) ~= 1 then
	Say("Server 19h m�i ch�nh th�c m� c�a. Gi� ng��i t�m team train c�ng �i. Ta �i �n t�i ��.",0)
	return
end
	 local szTitle = "<npc>Server V� l�m b� s� t�i hi�n ch�n th�c b�c tranh V� l�m truy�n k� 2007"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� c�p 120",GetLevel120})
	-- tinsert(tbOpt, 1, {"Nh�n ti�n v�n",GetFreeCash})
	tinsert(tbOpt, 1, {"H�y v�t ph�m",DisposeItem})
	tinsert(tbOpt, 1, {"Nh�n h� tr� t�n th�",GetNewbieGift})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� t�i m�u",GetSupportItem})
	tinsert(tbOpt, 1, {"Nh�n h� tr� v�ng s�ng t�n th�",GetNewbieSkill})
	tinsert(tbOpt, 1, {"M� kh�a b�o hi�m",phakhoa})
	-- tinsert(tbOpt, 1, {"Nh�n skill 120",NhanSkill120})
	tinsert(tbOpt, 1, {"Mu�n ��i sang tr�ng th�i s�t th� (C�n 10 v�n)",LeaveFaction})
	-- tinsert(tbOpt, 1, {"Nh�n ��n b� ch�nh s�a h� th�ng",GetExchangeServer})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� ��i th�nh b� k�p",GetFree120Book})
	-- tinsert(tbOpt, 1, {"Nh�n c�c lo�i Tinh Th�ch",GetTinhThach})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� b� k�p ",Get8xItem})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� danh v�ng",GetBonusRepute})
	tinsert(tbOpt, 1, {"Nh�n ��n b� Ti�n Th�o L�",GetXianCaoLu})
	-- tinsert(tbOpt, 1, {"Nh�n h� tr� x3 ��n 120",GetX2Skill})
	-- tinsert(tbOpt, 1, {"Nh�n ph�n th��ng Gi�ng Sinh",GetJoinTongAward})
	-- tinsert(tbOpt, 1, {"Mu�n t�m hi�u ��i t�n nh�n v�t",about_rename_role})
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
		Msg2Player("<color=yellow>Ch�a gia nh�p m�n ph�i, kh�ng th� h�c k� n�ng n�y!<color>");
		return 1;
	end;
	
	if GetLevel()<120 then
		Msg2Player("<color=yellow>��ng c�p ch�a �� 120, kh�ng th� h�c k� n�ng n�y!<color>");
		return 1;
	end;

	local nFaction = GetLastFactionNumber()
	AddMagic(tbFACT[nFaction],20)
	Msg2Player("�� h�c ���c skill 120")
end
-----
function GetExchangeServer()
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
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
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
-- if GetLevel() < 120 then--
	-- Say("C�p �� 120 m�i nh�n ���c h� tr� n�y.")
	-- return 
-- end
local tbAward={
-- {szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=3},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nh�n ��i th�nh b� k�p 90")

tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[11],1)
end

function GetTinhThach()
-- if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[11]) == 1 then
-- Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
-- return
-- end
-- if GetLevel() < 120 then--
	-- Say("C�p �� 120 m�i nh�n ���c h� tr� n�y.")
	-- return 
-- end
local tbAward={
-- {szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="Kim tinh th�ch",tbProp={6,1,4396,1,0,0},nCount=5},
{szName="M�c tinh th�ch",tbProp={6,1,4397,1,0,0},nCount=5},
{szName="Th�y tinh th�ch",tbProp={6,1,4398,1,0,0},nCount=5},
{szName="H�a tinh th�ch",tbProp={6,1,4399,1,0,0},nCount=5},
{szName="Th� tinh th�ch",tbProp={6,1,4403,1,0,0},nCount=5},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nh�n tinh th�ch")

tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[11],1)
end

function GetFreeCash()
Earn(10000000)
end
function GetLevel120()
local nLevel = GetLevel()
if nLevel >=120 then
Say("H� tr� ch� d�nh  cho ng��i ch�i c�p d��i 120")
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
Say("H� tr� ch� d�nh  cho ng��i ch�i c�p d��i 120")
return
end
AddSkillState(967,3,1,1555200)
Msg2Player("Nh�n th�nh c�ng h� tr� x3 exp.")
end
function GetXianCaoLu()
if CalcFreeItemCellCount() < 30 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i quay l�i g�p ta",0);
	return 1;
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[6]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[6],1)
local tbAward={
-- {szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
{szName="Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=10,nBindState=-2},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan kim phong den bu")
Msg2Player("B�n nh�n h� tr� sau �ua top th�nh c�ng")
end
function GetSupportItem()
AddItem( 6,1,2564,1,0,0)
end
function GetBonusRepute()
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[3]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
AddRepute(100)
Msg2Player("B�n nh�n ���c h� tr� 100 danh v�ng. Ch�c b�n ch�i game vui v�")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[3],1)
end
function Get8xItem()
-- if GetLevel() < 80 then
-- Say("Ng��i c� g�ng ��t c�p 80 r�i ��n t�m ta",0)
-- return
-- end
if CalcFreeItemCellCount() < 40 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i quay l�i g�p ta",0);
	return 1;
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[7]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
local tbAward={
-- {szName = "Kim Phong Thanh D��ng Kh�i",tbProp = {0,177},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong K� L�n Huy�t",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Tr�c Li�n Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong C�ng C�n Tam Th�n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong �o�t H�n Ng�c ��i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong H�u Ngh� d�n cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Lan ��nh Ng�c",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong Thi�n L� Th�o Th��ng Phi",tbProp = {0,184},nCount=1,nBindState=-2,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Kim Phong ��ng T��c Xu�n Th�m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1,nExpiredTime=24*60*7},
-- {szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
-- {szName = "Chi�u d� ng�c s� t�",tbProp = {0,10,5,10,5,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
}
local tbMiji ={
{szName = "B� k�p",tbProp = {6,1,2959,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2960,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2961,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2962,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2963,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2964,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2965,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2966,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2967,1,0,0},nBindState=-2,nCount=1},
{szName = "B� k�p",tbProp = {6,1,2968,1,0,0},nBindState=-2,nCount=1},
}
local nMiji =  tbMiji[GetLastFactionNumber() + 1]
if not nMiji then
Say("Ng��i gia nh�p m�n ph�i �i �� r�i ��n t�m ta",0)
return
end

tinsert(tbAward, 1, nMiji)
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[7],1)
end
function LeaveFaction()
	if GetLevel() < 50 then
		Say("H�y luy�n ��n c�p 50 r�i h�y quay l�i t�m ta",0)
		return
	end
	local szTongName, nTongID = GetTongName();
	if szTongName and szTongName ~= "" then
		Say("Ng��i �� c� bang h�i, kh�ng th� s� d�ng ch�c n�ng n�y",0)
		return
	end
	if GetCamp() == GetCurCamp() and GetCamp()==4 then
		Say("Ng��i c� nh�m kh�ng th�? Ng��i �ang � tr�ng th�i s�t th�.",0)
		return
	end
	if GetCash() < 100000 then--
		Say("Ng��i c� �� 10 v�n l��ng kh�ng th�",0)
		return
	end
		Pay(100000)
		SetCurCamp(4)
		SetCamp(4)
	end
-- end
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end
function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end
function GetNewbieAward()
-- if GetTask(3001) > 0 then
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[2]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 0 then
Say("Ng��i h�y nh�n h� tr� t�n th� �� r�i h�y nh�n h� tr� n�y",0)
return
end
if CalcFreeItemCellCount() < 10 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i quay l�i g�p ta",0);
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
{szName = "Ti�n th�o l�",tbProp = {6,1,71,0,0},nBindState=-2,nCount=5},
{szName="�i�m kinh nghi�m",nExp_tl=3600000},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu them")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[2],1)
end
function GetJoinTongAward()
-- if GetTask(3001) > 0 then

if tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[3]) == 1 then
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
local szTong = GetTong()
if not szTong or szTong =="" then--
Say("Ph�n th��ng n�y ch� d�nh cho nh�ng ng��i c� bang h�i. Tr�ng s� nhanh ch�n t�m cho m�nh 1 b�n �� �i",0)
return 0
end
if (tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[2]) == 0 or tbVNG_BitTask_Lib:getBitTask(tbNewbieBits[1]) == 0) then
Say("Ng��i h�y nh�n h� tr� t�n th� �� r�i h�y nh�n h� tr� n�y",0)
return
end
if CalcFreeItemCellCount() < 15 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 15 � tr�ng r�i quay l�i g�p ta",0);
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
{szName = "Ti�n th�o l�",tbProp = {6,1,71,0,0},nBindState=-2,nCount=10},
{szName="�i�m kinh nghi�m",nExp_tl=5000000},
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
Say("Ng��i �� nh�n ���c h� tr� n�y r�i",0)
return
end
if CalcFreeItemCellCount() < 50 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i quay l�i g�p ta",0);
	return 1;
end
local tbAward={
{szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*30},
{szName = "Th� ��a ph�",tbProp = {6,1,438,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*7},
-- {szName = "An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp = {0,5310},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang C�c hoa Th�ch ch� ho�n",tbProp = {0,5311},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang �i�n Ho�ng th�ch ng�c b�i",tbProp = {0,5312},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp = {0,5313},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "�o ��nh Qu�c",tbProp = {0,159},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "M� ��nh Qu�c",tbProp = {0,160},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Gi�y ��nh Qu�c",tbProp = {0,161},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Bao tay ��nh Qu�c",tbProp = {0,162},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "�ai l�ng ��nh Qu�c",tbProp = {0,163},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp = {0,164},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang C�c hoa Th�ch ch� ho�n",tbProp = {0,165},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang �i�n Ho�ng th�ch ng�c b�i",tbProp = {0,166},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp = {0,167},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Thanh D��ng Kh�i",tbProp = {0,177},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong K� L�n Huy�t",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Tr�c Li�n Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong C�ng C�n Tam Th�n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong �o�t H�n Ng�c ��i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong H�u Ngh� d�n cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Lan ��nh Ng�c",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,},
-- {szName = "Kim Phong Thi�n L� Th�o Th��ng Phi",tbProp = {0,184},nCount=1,nBindState=-2,nQuality=1,},
-- {szName = "Kim Phong ��ng T��c Xu�n Th�m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1,},
{szName = "T�c s��ng",tbProp = {0,10,2,10,2,0},nBindState=-2,nCount=1},
AddRepute(200),
AddLeadExp(999999999),
}
tbAwardTemplet:GiveAwardByList(tbAward, "Nhan ho tro tan thu")
tbVNG_BitTask_Lib:setBitTask(tbNewbieBits[1],1)
-- SetTask(3001,1)
end
function GetNewbieSkill()
if GetLevel() >= 80 then
Say("C�p 80 tr� l�n ng��i �� ��nh m�t ��c �n n�y r�i. Th�ng c�m.", 0);
return
end
		AddSkillState(512,5,1,1555200)
		AddSkillState(527,2,1,1555200)
		AddSkillState(313,2,1,1555200)
		AddSkillState(314,5,1,1555200)
		AddSkillState(546,1,1,1555200)
		-- AddSkillState(440, 3, 1, 1555200); 
		Talk(1, "", "B�n s� ���c nh�n h� tr� k� n�ng n�y ��n c�p 80");
end
function phakhoaitem()
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a v�nh vi�n, kh�ng th� n�ng c�p")
		return
	end
		SetItemBindState(nItemIdx,0)
end
function phakhoa()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "phakhoaitem", "onCancel", 1);
end