Include("\\script\\global\\jxprivate\\xephang\\lib.lua")
--Include("\\script\\misc\\eventsys\\type\\npc.lua")
--Include("\\script\\dailogsys\\dailogsay.lua")
--Include("\\script\\task\\metempsychosis\\task_func.lua")
Include("\\script\\global\\jxprivate\\xephang\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
--Include("\\script\\global\\jxprivate\\svr_cfg.lua")
IncludeLib("RELAYLADDER");

function XepHang:Init()
	self.dsDangKy = {}
	self.RegisterCount = 0
end
--=======================Ph�n ��ng k� v� c�p nh�t===========================

function XepHang:LuuDSNhanVat(nName, nTransLife, nLevel, n_Exp, n_ExpPer, nFaction, nAccount)
	--if(is_GM(nAccount) == 1) then
	--	return
--	end
	if nLevel >=50 then

		if not self.dsDangKy then
			self:Init()
		end
		
		if (not self.dsDangKy[nName]) then -- N�u t�n nv ch�a c� th� t�o 1 d�ng m�i
			self.dsDangKy[nName] = {}
			local tbSubcriber = self.dsDangKy[nName]
			tinsert(tbSubcriber, nTransLife)-- Get Tr�ng Sinh
			tinsert(tbSubcriber, nLevel)-- Get ��ng C�p
			tinsert(tbSubcriber, n_Exp/1e9)--Get Kinh Nghi�m
			tinsert(tbSubcriber, n_ExpPer)--Get Ph�n Tr�m
			tinsert(tbSubcriber, nFaction+1)--Get M�n Ph�i Theo Number
		end
		
		if self.dsDangKy[nName] then--N�u c� t�n trong ds th� ti�n h�nh c�p nh�n
			local tbSubcriber = self.dsDangKy[nName]
			tbSubcriber[self.n_TrungSinh] =  nTransLife-----
			tbSubcriber[self.n_DangCap] = nLevel---------------------------
			tbSubcriber[self.n_KinhNghiem] = n_Exp/1e9------------------- Nh� Ph�a Tr�n
			tbSubcriber[self.n_PhanTram] = n_ExpPer-----------------
			tbSubcriber[self.n_MonPhai] = nFaction+1--------------------------
		end
		
		self:LuuDSDangKy()--L�u danh s�ch ��ng k� ra file txt
	end
end
function XepHang:LuuDSDangKy()
	local tbTemp = {}
	tinsert(tbTemp, self.TitileDangKy)
	for key, val in self.dsDangKy do
		tinsert(tbTemp, {key, val[self.n_TrungSinh], val[self.n_DangCap], val[self.n_KinhNghiem], val[self.n_PhanTram], val[self.n_MonPhai]})
	end
	TB_jxfree_File:Table2File(self.strDuongDan, self.txtDangKy, "w", tbTemp)	
	return 1
end

--=======================Top list===========================
Trungsinh={
	[0]={0},
	[1]={200},
	[2]={400},
	[3]={600},
	[4]={800},
	[5]={1000},
	[6]={1200},
}

function XepHang:SapXepTopToanServer()
	self.TopAllServer = {}
	local tbTemp = {}

	if not self.dsDangKy then
		return
	end

	for key, val in self.dsDangKy do
		nExp=((Trungsinh[val[self.n_TrungSinh]][1]+val[self.n_DangCap])*2)+(val[self.n_PhanTram]/100);
		tinsert(tbTemp, {key,val[self.n_TrungSinh],val[self.n_DangCap], val[self.n_PhanTram],nExp,0, val[self.n_MonPhai]})
	end

	if not tbTemp then
		return
	end

	--s�p x�p table t�m theo th� t� gi�m d�n d�a v�o s� exp t�ng
	sort(tbTemp, function (a, b) return(a[5] > b[5]) end)

	local nCount = getn(tbTemp)
	if nCount > 200 then
		nCount=200
	end
	for i = 1, nCount do
		self.TopAllServer[i] = tbTemp[i]
		self.TopAllServer[i][6] = i
	end
	--save top list v�o file
	self:LuuDSXepHangToanServer()
end

function XepHang:LuuDSXepHangToanServer()
	local tbTemp = {}
	--insert header file
	tinsert(tbTemp, self.TitileTopAll)
	for key, val in self.TopAllServer do
		tinsert(tbTemp, val)
	end
	TB_jxfree_File:Table2File(self.strDuongDan, self.txtToanServer, "w", tbTemp)	
	return 1
end

--Top 10 Server
function XepHang:Top10Server()
	Ladder_ClearLadder(10270)
	local tbTemp = {}
	if not self.TopAllServer then
		return
	end
	local nCount = getn(self.TopAllServer)
	if nCount >= 11 then
		nCount=10
	end
	for i = 1, nCount do
		Ladder_NewLadder(10270,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
	end
end
--Top 10 M�n Ph�i
function XepHang:Top10MonPhai()
	local tbTemp = {}
	if not self.TopAllServer then
		return
	end
	for i=10272, 10281 do
		Ladder_ClearLadder(i)
	end
	local nCount = getn(self.TopAllServer)
	for i = 1, nCount do
		if self.TopAllServer[i][7] == 1 then--Thi�u L�m
			Ladder_NewLadder(10272,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 2 then--Thi�n V��ng
			Ladder_NewLadder(10273,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 3 then--���ng M�n
			Ladder_NewLadder(10274,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 4 then--Ng� ��c
			Ladder_NewLadder(10275,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 5 then--Nga Mi
			Ladder_NewLadder(10276,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 6 then--Th�y Y�n
			Ladder_NewLadder(10277,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 7 then--C�i Bang
			Ladder_NewLadder(10278,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 8 then--Thi�n Nh�n
			Ladder_NewLadder(10279,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 9 then--V� �ang
			Ladder_NewLadder(10280,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		elseif self.TopAllServer[i][7] == 10 then--C�n L�n
			Ladder_NewLadder(10281,""..self.TopAllServer[i][1].."	C�p ��: "..self.TopAllServer[i][3].."	",self.TopAllServer[i][2],0)
		end
	end
end
--Top 10 Ph� H�
function Top10PhuHo(MoneyBox, Money, nName, nFaction, nAccount)
	if(is_Admin(nAccount) == 1) then
		return
	end
	
	nMoney = MoneyBox + Money
	sMoney = nMoney/10000
	
	if sMoney < 1 then
		return
	end
	Ladder_NewLadder(10271,nName,sMoney,0,nFaction);
end
--S�t Tinh L�c
function XepHang:TinhLucXH(zName)
	if not self.TopAllServer then
		return
	end
	local nCount = getn(self.TopAllServer)
	if nCount > 200 then
		nCount=200
	end
	for i = 1, nCount do
		if self.TopAllServer[i][1] == zName then
			SetEnergy(self.TopAllServer[i][6])
			return
		end
	end
end

--=======================Top list===========================
--Load danh s�ch ��ng k� v� top 10 v�o table
function XepHang:TaiDanhSachTopToanServer()
	if not self.TopAllServer then
		self.TopAllServer = {}
	end
	local tb = TB_jxfree_File:TableFromFile(XepHang.strDuongDan, XepHang.txtToanServer, {"*w", "*n", "*n", "*n","*n", "*n", "*w"})
	if not tb then
		XepHang.TopAllServer = nil
		return
	end
	for i = 1, getn(tb) do
		self.TopAllServer[i] = tb[i]
	end
	XepHang:SapXepTopToanServer()
	XepHang:Top10Server()
	XepHang:Top10MonPhai()
end

function TaiDanhSachDangKy()
	--load danh s�ch ��ng k�
	if not XepHang.dsDangKy then
		XepHang.dsDangKy = {}
	end
	local tb = TB_jxfree_File:TableFromFile(XepHang.strDuongDan, XepHang.txtDangKy, {"*w", "*n", "*n", "*n", "*n", "*n"})
	if not tb then
		XepHang.dsDangKy = nil
		return
	end
	local nLength = 0
	for i = 1, getn(tb) do		
		if tb[i][1] then
			nLength = nLength + 1
			XepHang.dsDangKy[tb[i][1]] = {tb[i][2], tb[i][3], tb[i][4], tb[i][5],tb[i][6]}			
		end
	end
	
	XepHang.RegisterCount = nLength
	--load top list
	XepHang:TaiDanhSachTopToanServer()
end
local a = AutoFunctions:Add(TaiDanhSachDangKy)