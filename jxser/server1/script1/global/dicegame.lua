Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

------------------------------------------------------
tbWinCashMsg = {
"Ng��i Ch�i %s �� �n ��c %s V�n L��ng T� Tr� ch�i D�n Gian. Th�t May M�n",
}
-----------------------------------------------------------------
tbWinCoinMsg = {
"Ng��i Ch�i %s �� �n ��c %s Ti�n ��ng T� Tr� ch�i D�n Gian. Th�t May M�n",
}
---------------------------------------------------------------------
FishGame = FishGame or {
tbPlayerList = {},--luu toan bo thong tin nguoi choi: {nIndex,{Chua so cac con danh:["Bau"] = nCash,["Cua"] = nCash....},nAwardCash = 0-- luu so tien thang neu nguoi choi out game hoac trong truong hop dac biet khong add duoc tien}
nResult = {},--{"Bau","Cua"}
nTotalCash = 0,-- luu toan bo so tien danh
nTotalCoin = 0,-- lua toan bo so xu danh
nStarted = 0,
nTOTAL_RATE = 0,
DOUBLE_RATE = 2,-- ti le ra 2 amt giong nhau ti le chuan
NORMAL_RATE = 1,-- ti le ra 3 mat khac nhau ti le chuan
}
------------------------------------------------------------------------------
tbAllResult = tbAllResult or {
}

function FishGame:Init()
if self.nStarted == 0 then
self.TimerID = TimerList:AddTimer(self, 18*60); --1 phut se chay 1 lan
self.nStarted = 1
self.nStatus = 0
end

local nLuckRand = random(1,10)
self.NORMAL_RATE = nLuckRand
self.DOUBLE_RATE = nLuckRand * 2
for i=1,6 do-- khoi tao bang gia tri
	for j=1,6 do
		for k=1,6 do
			if i==j or i==k or k==j then
				tinsert(tbAllResult,1,{i,j,k,self.DOUBLE_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.DOUBLE_RATE
			else
				tinsert(tbAllResult,1,{i,j,k,self.NORMAL_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.NORMAL_RATE
			end
		end
	end
end
end

function FishGame:Stop()-- dong bau cua
self.nStarted = 0
TimerList:DelTimer(self.TimerID);
end
FishGame:Init()
function FishGame:GetNextResult()
print("Da chay qua")
local nRand = random(1,self.nTOTAL_RATE)
local nResult = 0
local nValue = 0
for i = 1,getn(tbAllResult) do
	nValue = nValue + tbAllResult[i][4]
	if nRand <= nValue then
		nResult = i
		break
	end
end
if nResult == 0 then
return nil
end
local tbResult = {ChangeToString(tbAllResult[nResult][1]),ChangeToString(tbAllResult[nResult][2]),ChangeToString(tbAllResult[nResult][3])}
for i=1,3 do
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] or 0--
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] + 1
end

--local szMsg = format("<color=green>K�t qu� ��t n�y <color=yellow> %s , %s ,%s.<color>",tbResult[1],tbResult[2],tbResult[3])
--logplayer("dulieu/baucua.txt",format("K�t qu� b�u cua l�n n�y "..tbResult[1].." - "..tbResult[2].." - "..tbResult[3]))
local nTime = tonumber(GetLocalDate("%H%M"));
if (nTime>=0000 and nTime<=1100) or (nTime>=1200 and nTime<=1300) or (nTime>=1400 and nTime<=1500)  or (nTime>=1600 and nTime<=1700) or (nTime>=1800 and nTime<=1900)  or (nTime>=2000 and nTime<=2100) or (nTime>=2200 and nTime<=2300)  then
	

	Msg2SubWorld(szMsg)
end 

	


	
	--end
return 1
end

function ChangeToString(nValue)
if nValue == 1 then
return "B�u"
elseif nValue == 2 then
return "Cua"
elseif nValue == 3 then
return "T�m"
elseif nValue == 4 then
return "C�"
elseif nValue == 5 then
return "G�"
elseif nValue == 6 then
return "Nai"
end
end

function FishGame:CalAwardForPlayer()
print("Da chay qua 2")
local nLoseCash = 0
local nLoseCoint = 0
for szName,tbInfo in self.tbPlayerList do
	for szChoice,nPoint in self.nResult do
	local tbKind = tbInfo.tbPut[szChoice]
	if tbKind then--
		if tbKind.nCash then--
			tbInfo.nAwardCash =  tbInfo.nAwardCash + (nPoint + 1)*tbKind.nCash
			nLoseCash = nLoseCash + (nPoint + 1)*tbKind.nCash
		end
		if tbKind.nCoin then--
			tbInfo.nAwardCoin =  tbInfo.nAwardCoin + (nPoint + 1)*tbKind.nCoin
			nLoseCoint = nLoseCoint + (nPoint + 1)*tbKind.nCoin
		end
	end
	end
tbInfo.tbPut = {-- reset sau khi nhan giai

}-- xoa toan bo du lieu danh truoc day
end
WriteLog("Bau cua lan nay tong tien van dat "..self.nTotalCash.." thua "..nLoseCash)
WriteLog("Bau cua lan nay tong tien don dat "..self.nTotalCoin.." thua "..nLoseCoint)
self.nTotalCash = 0
self.nTotalCoin = 0
self.nResult = {}
end

function FishGame:AddAwardForPlayer()
print("Da chay qua 3")
for szName,tbInfo in self.tbPlayerList do
	
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCash and tbInfo.nAwardCash > 0 then--  tien van
		callPlayerFunction(tbInfo.nIndex,Earn,tbInfo.nAwardCash*10000)
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� Banh X�c ��i nh�n",tbInfo.nAwardCash))
		if tbInfo.nAwardCash > 100  then--<color=yellow> %d v�n <color>
			Msg2SubWorld(format("Nh�n v�t <color=green>%s<color> �n ���c <color=yellow>%d ti�n v�n <color>t� ho�t ��ng Tr� ch�i D�n Gian. Th�t may m�n",szName,tbInfo.nAwardCash))
			logplayer("dulieu/baucua.txt",format("Nh�n v�t %s th�ng so tien %d v�n",szName ,tbInfo.nAwardCash))
		end
		tbInfo.nAwardCash = 0
	end
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCoin and tbInfo.nAwardCoin > 0 then-- ti�n ��ng
		-- print ("Da trao thuong tien dong cho"..szName)
		local nCoin = tbInfo.nAwardCoin
		if nCoin <= 300 then
			callPlayerFunction(tbInfo.nIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else --lon hon 300
			local nRound = nCoin/300
			for i=1,nRound do
				callPlayerFunction(tbInfo.nIndex,AddStackItem,300,4,417,1,1,0,0)
			end
			if mod(nCoin,300) > 0 then
				callPlayerFunction(tbInfo.nIndex,AddStackItem,mod(nCoin,300),4,417,1,1,0,0)
			end
		end
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� Banh X�c ��i nh�n",nCoin))
		Msg2SubWorld(format("Nh�n v�t <color=green>%s<color> �n ���c <color=yellow>%d ti�n ��ng <color>t� ho�t ��ng Tr� ch�i D�n Gian. Th�t may m�n",szName,nCoin))
		logplayer("dulieu/baucua.txt",format("Nh�n v�t %s th�ng %d ti�n ��ng"..tonumber(GetLocalDate("%Y%m%d%H%M")).."",szName ,nCoin))
		tbInfo.nAwardCoin = 0
	end
end
end
------------------------doi thoai voi npc---------------------------------------------
function main()
--dofile("script/global/dicegame.lua")
local nTime = tonumber(GetLocalDate("%H%M"));
if (nTime>=0000 and nTime<=0900) or (nTime>=1000 and nTime<=1100) or (nTime>=1200 and nTime<=1300) or (nTime>=1400 and nTime<=1500)  or (nTime>=1600 and nTime<=1700) or (nTime>=1800 and nTime<=1900)  or (nTime>=2000 and nTime<=2100) or (nTime>=2200 and nTime<=2300)  then

Say("Ng��i anh em c�n g� � ta",3,
	"Ch�i Tr� ch�i D�n Gian/OnChoseKind",
	"Xem c�c c�a ��t l�n n�y/showFishGate",
	"Th�i ta h�t ti�n r�i/no")
	else
	Talk(1,"","Chi�n tranh �ang di�n ra �c li�t ph�a tr��c, c�c v� n�n t�m l�nh m�t ch�t!")
		return
	end 
end
function main1()
Talk(1,"","<color=green>Ch�c N�ng N�y T�m ��ng")
end
function showFishGate()
local szName = GetName()
if not FishGame.tbPlayerList[szName]  then--
Say("Ng��i ch�a ��t c�a n�o c�",0)
return
end
local pPlayer =FishGame.tbPlayerList[szName]
local szMsg = ""
for szChoice,tbKind in pPlayer.tbPut do
szMsg = szMsg.."C�a: <color=green>"..szChoice.."<color> ".."Ti�n ��t:"
if tbKind.nCash then
szMsg = szMsg.."<color=red>"..tbKind.nCash.."<color> v�n "
end
if tbKind.nCoin then
szMsg = szMsg.." <color=green>"..tbKind.nCoin.."<color> ti�n ��ng"
end
szMsg=szMsg.."\n"
end
Say(szMsg,0)
end

function OnChoseKind()
Say("Ng��i mu�n ch�i kh� m�u?",3,"Ti�n v�n/#joinFishGame(1)","Ti�n ��ng/#joinFishGame(2)","Th�i ta thua nhi�u qu� r�i/no")
end

function joinFishGame(nKind)
if FishGame.nStatus ~= 1 then
Say("Ng��i c� g�p qu� kh�ng? ��i 1 ph�t n�a m�i c� th� ��t c�a nh�",0)
return
end
FishGame:OnPlayerJoin(PlayerIndex,GetName())
if nKind == 1 then
local tbSay = {
"B�u/#OnChoose(1,1)",
"Cua/#OnChoose(2,1)",
"T�m/#OnChoose(3,1)",
"C�/#OnChoose(4,1)",
"G�/#OnChoose(5,1)",
"Nai/#OnChoose(6,1)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("Ng��i ch�n con n�o?",getn(tbSay),tbSay)
else
local tbSay = {
"B�u/#OnChoose(1,2)",
"Cua/#OnChoose(2,2)",
"T�m/#OnChoose(3,2)",
"C�/#OnChoose(4,2)",
"G�/#OnChoose(5,2)",
"Nai/#OnChoose(6,2)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("Ng��i ch�n con n�o?",getn(tbSay),tbSay)

end
end
function OnChoose(nChoice,nKind)
if nKind == 1 then
local nMaxCount = 100
g_AskClientNumberEx(1,nMaxCount, format("Ti�n (1-%d) v�n", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
else
local nMaxCount = 300
g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
end
end
function FishGame:GetNumberFromClient(nChoice,nKind,nPutCash)
self:OnPlayerPut(PlayerIndex,GetName(),nPutCash,nChoice,nKind)
end
function FishGame:OnPlayerPut(nPlayerIndex,szName,nPutCash,nChoice,nKind)
if nPutCash > 300 then
Say("��ng c� �n gian...:D",0)
return
end
if not self.tbPlayerList[szName] or self.tbPlayerList[szName].nIndex ~= nPlayerIndex then
callPlayerFunction(nPlayerIndex,Say,"C� l�i xay ra vui l�ng li�n h� GM �� bi�t th�m chi ti�t",0)
return
end
local pPlayer = self.tbPlayerList[szName]
local szChoice =""
if nChoice == 1 then
	szChoice = "B�u"
elseif nChoice == 2 then
	szChoice = "Cua"
elseif nChoice == 3 then
	szChoice = "T�m"
elseif nChoice == 4 then
	szChoice = "C�"
elseif nChoice == 5 then
	szChoice = "G�"
elseif nChoice == 6 then
	szChoice = "Nai"
end

if nKind == 1 then-- tien van
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCash and pPlayer.tbPut[szChoice].nCash + nPutCash >= 300 then
Say("Ng��i ��t qu� 300 v�n m�t c�a r�i. Th�ng ta qu�t ti�n lu�n ��:T...",0)
return
end
local nOwnCash = callPlayerFunction(nPlayerIndex,GetCash)
if nOwnCash < nPutCash * 10000 then
callPlayerFunction(nPlayerIndex,Say,"Kh�ng �� ti�n m� c�ng d�m ��t c�a. �i ch� kh�c ch�i gi�p k� ki�t x�c n�y",0)
return
end
callPlayerFunction(nPlayerIndex,Pay,nPutCash*10000)
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash + nPutCash	
logplayer("dulieu/baucua.txt",format("Nhan vat %s dat cua %s so tien %d v�n",szName,szChoice,nPutCash))
if nPutCash >= 1 then
Msg2SubWorld(format("Con b�c <color=green> %s <color> quy�t ch�i T�i b�n v�i Ch� S�ng B�i v�i  <color=yellow> %d v�n <color> ",szName,nPutCash))
end
self.nTotalCash = self.nTotalCash + nPutCash
else --tien dong
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCoin and pPlayer.tbPut[szChoice].nCoin + nPutCash >= 300 then
Say("Ng��i ��t qu� 300 ti�n ��ng m�t c�a r�i. ��ng kh� m�u nh� th� ch�..",0)
return
end
local nOwnCoin = callPlayerFunction(nPlayerIndex,CalcEquiproomItemCount,4, 417, 1, -1)
if nOwnCoin < nPutCash then
callPlayerFunction(nPlayerIndex,Say,"Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i",0)
return
end
if callPlayerFunction(nPlayerIndex,ConsumeEquiproomItem,nPutCash, 4, 417, 1, -1) ~= 1 then
callPlayerFunction(nPlayerIndex,Say,"Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
return
end
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin + nPutCash

logplayer("dulieu/baucua.txt",format("Nh�n v�t %s �� ��t %s s� ti�n %d ti�n ��ng"..tonumber(GetLocalDate("%Y%m%d%H%M")).."",szName,szChoice,nPutCash))
if nPutCash >= 1 then
Msg2SubWorld(format("Nh�n v�t <color=green> %s <color> mang <color=yellow> %d ti�n ��ng <color> ��t Tr� ch�i D�n Gian.",szName,nPutCash))
end
self.nTotalCoin = self.nTotalCoin + nPutCash
end
end

function FishGame:OnPlayerJoin(nPlayerIndex,szName)
if not self.tbPlayerList[szName] then
self:AddNewPlayer(nPlayerIndex,szName)
return
end

if self.tbPlayerList[szName].nAwardCash > 0 then-- tra lai tien thang truoc do
	callPlayerFunction(nPlayerIndex,Earn,self.tbPlayerList[szName].nAwardCash*10000 )
	callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� Tr� ch�i D�n Gian th�t may m�n",self.tbPlayerList[szName].nAwardCash))
	logplayer("dulieu/baucua.txt",format("Nhan vat %s th�ng so tien %d v�n",szName ,self.tbPlayerList[szName].nAwardCash))
	self.tbPlayerList[szName].nAwardCash = 0
end

if self.tbPlayerList[szName].nAwardCoin > 0 then-- tra lai tien thang truoc do
		local nCoin = self.tbPlayerList[szName].nAwardCoin
		if nCoin <= 300 then
			callPlayerFunction(nPlayerIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 300
			local nRound = nCoin/300
			for i=1,nRound do
				callPlayerFunction(nPlayerIndex,AddStackItem,300,4,417,1,1,0,0)
			end
			if mod(nCoin,300) > 0 then
				callPlayerFunction(nPlayerIndex,AddStackItem,mod(nCoin,300),4,417,1,1,0,0)
			end
		end
		self.tbPlayerList[szName].nAwardCoin = 0
		callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� Tr� ch�i D�n Gian th�t may m�n",nCoin))
		logplayer("dulieu/baucua.txt",format("Nh�n v�t %s th�ng %d ti�n ��ng"..tonumber(GetLocalDate("%Y%m%d%H%M")).."",szName ,nCoin))
end
self.tbPlayerList[szName].nIndex = nPlayerIndex-- tra lai index cho dung
end
function FishGame:AddNewPlayer(nPlayerIndex,szName)
self.tbPlayerList[szName] = {
nIndex = nPlayerIndex,
tbPut ={
},
nAwardCash = 0,
nAwardCoin = 0,
}
end
function FishGame:OnTime()-- moi 1 phut se chay 1 lan
print("BAU CUA DA CHAY")
local nMin = tonumber(GetLocalDate("%M")); -- lay so phut
local nX = mod(nMin,3)-- phut 1, 2 cho danh phut thu 3 ko cho danh
if nX == 0 then --dang tinh ket qua khong cho danh tranh bug
FishGame.nStatus = 0
if FishGame:GetNextResult() ~= 1 then --loi tinh toan
print("Ch��ng Tr�nh �� X�y Ra L�i...!")
return
end
FishGame:CalAwardForPlayer()
FishGame:AddAwardForPlayer()
else
FishGame.nStatus = 1
end
local nNowTime = tonumber(date( "%H%M"))
return 1
end

function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end