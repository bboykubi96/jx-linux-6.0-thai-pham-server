
IncludeLib("RELAYLADDER");
Include("\\script\\logevent\\variables.lua")
IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
IncludeLib("TONG")
Include("\\script\\lib\\pfunction.lua")
Include("\\script\\lib\\composeex.lua")
--Transaction log - Modified by DinhHQ - 20110816
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\objbuffer_head.lua")


function tbLogEvent:Init()
	self.tbSubcribers = {}
	self.nRegisterCount = 0
end
--=======================PhÇn ®¨ng ký vµ cËp nhËt===========================
function tbLogEvent:LuuDSNhanVat()
	if GetLevel()>=1 or ST_GetTransLifeCount()>0 then	

		if not self.tbSubcribers then
			self:Init()
		end
		local strName = GetName()
		if (not self.tbSubcribers[strName]) then
			local checkevent = GetTask(5335)
			self.tbSubcribers[strName] = {}
			local tbSubcriber = self.tbSubcribers[strName]
			tinsert(tbSubcriber, checkevent)			--diem event hien tai
		end
		if self.tbSubcribers[strName] then
			local checkevent = GetTask(5335)
			local tbSubcriber = self.tbSubcribers[strName]
			tbSubcriber[self.nPOINT] =  checkevent
		end
		self:Subcribers2File()
	end
end

function tbLogEvent:Subcribers2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbFileHeader)
	for key, val in self.tbSubcribers do
		tinsert(tbTemp, {key, val[self.nPOINT]})
	end
	tbVngLib_File:Table2File(self.strFilePath, self.strFileName, "w", tbTemp)	
	return 1
end
--=======================Top list===========================

function tbLogEvent:SapXepDSXepHang()
	self.tbTopEvent = {}
	local tbTemp = {}
	local strTime = GetLocalDate("%Y-%m-%d_%H:%M:%S")
	--t¹o table l­u t¹m d÷ liÖu cho viÖc s¾p xÕp

	if not self.tbSubcribers then
		return
	end

	for key, val in self.tbSubcribers do
		
	
		nExp=(GetTask(5335));
		tinsert(tbTemp, {key,val[self.nPOINT],0})
	
	end

	if not tbTemp then
		return
	end

	--s¾p xÕp table t¹m theo thø tù gi¶m dÇn dùa vµo sè diem tæng
	sort(tbTemp, function (a, b) return(a[2] > b[2]) end)

	local nCount = getn(tbTemp)
	for i = 1, nCount do
		self.tbTopEvent[i] = tbTemp[i]
		
	end
	--save top list vµo file
	self:TopList2File()
end
function tbLogEvent:SapXepDSXepHangdanhan(idset)
	self.tbTopEvent = {}
	local tbTemp = {}
	local strTime = GetLocalDate("%Y-%m-%d_%H:%M:%S")
	--t¹o table l­u t¹m d÷ liÖu cho viÖc s¾p xÕp

	if not self.tbSubcribers then
		return
	end

	for key, val in self.tbSubcribers do
		
	
		nExp=(GetTask(5335));
		tinsert(tbTemp, {key,val[self.nPOINT],idset})
	
	end

	if not tbTemp then
		return
	end

	--s¾p xÕp table t¹m theo thø tù gi¶m dÇn dùa vµo sè diem tæng
	sort(tbTemp, function (a, b) return(a[2] > b[2]) end)

	local nCount = getn(tbTemp)
	for i = 1, nCount do
		self.tbTopEvent[i] = tbTemp[i]
		
	end
	--save top list vµo file
	self:TopList2File()
end
function tbLogEvent:TopList2File()
	local tbTemp = {}
	for key, val in self.tbTopEvent do
		tinsert(tbTemp, val)
	end
	
	tbVngLib_File:Table2File(self.strFilePath, self.strTopListFileName, "w", tbTemp)	
	return 1
end

function tbLogEvent:TopListFromFile()
	if not self.tbTopEvent then
		self.tbTopEvent = {}
	end
	local tb = tbVngLib_File:TableFromFile(tbLogEvent.strFilePath, tbLogEvent.strTopListFileName, {"*w", "*w", "*n", "*n", "*n"})
	if not tb then
		tbLogEvent.tbTopEvent = nil
		return
	end
	
	for i = 1, getn(tb) do
		self.tbTopEvent[i] = tb[i]
	end
	
	
	
end


function tbLogEvent:ShowTopList()
		
	if not self.tbTopEvent or getn(self.tbTopEvent) <= 0 then
		CreateNewSayEx("HiÖn t¹i ch­a cã b¶ng xÕp h¹ng",{{"§ãng",OnCancel}})
		return
	end
	local strTittle = "Danh s¸ch  TÝch lòy B¸nh Sinh NhËt\n\nSTT\t\t Tªn\t\t Sè ®iÓm\n\n"
	local nCount = getn(self.tbTopEvent)
	
		
	for nRank = 1, nCount do

		strName = self.tbTopEvent[nRank][1]	
		CurPOINT = self.tbTopEvent[nRank][2]

		strTittle = strTittle.."<color=cyan>"..nRank.."\t\t"..strName.."\t\t"..CurPOINT.."<color>\n"
	end
	CreateNewSayEx(strTittle,{{"§ãng",OnCancel}})
end
function tbLogEvent:checktopevent()
	strName = self.tbTopEvent[1][1]
	local check=self.tbTopEvent[1][3]
	if GetName()==strName then
	return 1
	else
	return 0
	end
end
function tbLogEvent:checktopeventdanhan(idset)
	local check=self.tbTopEvent[1][3]
	if check==idset then
	return 1
	else
	return 0
	end
end
function tbLogEvent:checktopeventidnhan()
	local check=self.tbTopEvent[1][3]
	return check
end
--=======================Top list===========================
--Load danh s¸ch ®¨ng ký vµ top 10 vµo table
function LoadFromFile()
	--load danh s¸ch ®¨ng ký
	if not tbLogEvent.tbSubcribers then
		tbLogEvent.tbSubcribers = {}
	end
	local tb = tbVngLib_File:TableFromFile(tbLogEvent.strFilePath, tbLogEvent.strFileName, {"*w", "*n", "*n", "*n", "*n"})
	if not tb then
		tbLogEvent.tbSubcribers = nil
		return
	end
	local nLength = 0
	for i = 1, getn(tb) do		
		if tb[i][1] then
			nLength = nLength + 1
			tbLogEvent.tbSubcribers[tb[i][1]] = {tb[i][2], tb[i][3], tb[i][4]}			
		end
	end
	
	tbLogEvent.nRegisterCount = nLength
	--load top list
	tbLogEvent:TopListFromFile()
end
--======================================================
local a = AutoFunctions:Add(LoadFromFile)