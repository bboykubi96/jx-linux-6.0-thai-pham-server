
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
		if (GetName() == nil or GetName() == "" ) then
			return 
		end
		local strName = GetName()
		
		if (not self.tbSubcribers[strName]) then
			local checkevent = GetTask(4995)
			self.tbSubcribers[strName] = {}
			local tbSubcriber = self.tbSubcribers[strName]
			tinsert(tbSubcriber, checkevent)			--diem event hien tai
		end
		if self.tbSubcribers[strName] then
			local checkevent = GetTask(4995)
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
	
	if not self.tbSubcribers then
		return
	end

	for key, val in self.tbSubcribers do
		
	
		
		tinsert(tbTemp, {key,val[self.nPOINT]})
	
	end

	if not tbTemp then
		return
	end

	
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
	local strTittle = "Danh s¸ch  TÝch lòy KÑo 7 Mµu( 15 chèt Gi¶i)\n\nSTT\t\t Tªn\t\t Sè ®iÓm\n\n"
	local nCount = getn(self.tbTopEvent)
	if nCount < 1 then
		CreateNewSayEx("HiÖn t¹i ch­a cã b¶ng xÕp h¹ng",{{"§ãng",OnCancel}})
		return
	end
	if nCount > 10 then
		nCount = 10
	end
		
	for nRank = 1, nCount do

		strName = self.tbTopEvent[nRank][1]	
		CurPOINT = self.tbTopEvent[nRank][2]

		strTittle = strTittle.."<color=cyan>"..nRank.."\t\t"..strName.."\t\t"..CurPOINT.."<color>\n"
	end
	CreateNewSayEx(strTittle,{{"§ãng",OnCancel}})
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