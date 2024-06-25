--thu vien trieu hoi huynh de edit by mcteam
Include( "\\script\\missions\\leaguematch\\head.lua" )
Include( "\\script\\missions\\leaguematch\\npc\\head.lua" )
Include("\\script\\lib\\log.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

function gmkiemtrataptrung(nSubWorldID)
print("Trieu hoi nSubWorldID"..nSubWorldID)
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

if (nSubWorldID == 325 or nSubWorldID == 323 or nSubWorldID == 324) then --chien truong tong kim
	return 0
end

if (nSubWorldID >= 242 and nSubWorldID <= 318) then --dao tay tuy
	return 0
end

if (nSubWorldID >= 926 and nSubWorldID <= 932) then --chien truong that thanh dai chien
	return 0
end

--if (nSubWorldID >= 935 and nSubWorldID <= 947) then --thien tri tang x
--	return 0
--end

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

function gmGiaiKetNhanVat()
local PlayerIndexOld = PlayerIndex
nW, nX, nY =GetWorldPos()
trangthai = GetFightState()

for i=1, GetPlayerCount() do
	PlayerIndex = i
	nW1, nX1, nY1 =GetWorldPos()
	if(PlayerIndexOld ~= PlayerIndex) then
		local tbSay = {}
		tinsert(tbSay,"S�n s�ng �i ./#GMGoiTaSanSangDi(nW, nX, nY,trangthai)")
		tinsert(tbSay,"C� vi�c kh�c r�i ./KhongDi")
		Say("Admin ph�t ��ng l�nh t�p trung, ng��i c� mu�n �i?", getn(tbSay), tbSay)
	end
end
end

function GMGoiTaSanSangDi(nW, nX, nY,trangthai)
		NewWorld(nW, nX, nY)
		SetFightState(trangthai)
end

function gmtaptrungcongbk()
local PlayerIndexOld = PlayerIndex
for i=1, GetPlayerCount() do
	if i ~= PlayerIndexOld then
		PlayerIndex = i
		local nW, nX, nY =GetWorldPos()
		if gmkiemtrataptrung(nW) == 1 then
			NewWorld(37, 1584, 3240)
			SetFightState(1);
		end
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
PlayerIndexOld = PlayerIndex
nW, nX, nY =GetWorldPos()
trangthai = GetFightState()
nTongName, nTongID = GetTongName()

for i=1, GetPlayerCount() do
	PlayerIndex = i
	local nTongName_i, nTongID_i = GetTongName()
	nW1, nX1, nY1 =GetWorldPos()
	if(nTongID ~=0 and nTongID_i == nTongID and PlayerIndexOld ~= PlayerIndex and gmkiemtrataptrung(nW1) == 1) then
		local tbSay = {}
		tinsert(tbSay,"S�n s�ng �i ./#TaSanSangDi(PlayerIndexOld,PlayerIndex)")
		tinsert(tbSay,"C� vi�c kh�c r�i ./KhongDi")
		Say("Bang ch� �ang c� l�nh tri�u h�i to�n b� Huynh �� trong bang, ng��i c� mu�n �i?", getn(tbSay), tbSay)
	end
end

PlayerIndex = PlayerIndexOld
end;

Include("\\script\\global\\fuyuan.lua")

function TaSanSangDi(PlayerIndexBC,PlayerIndexTV)
		PlayerIndex = PlayerIndexBC
		local nTongName_BC, nTongID_BC = GetTongName()
		nW, nX, nY =GetWorldPos()
		trangthai = GetFightState()
		PlayerIndex = PlayerIndexTV
		local nTongName_TV, nTongID_TV = GetTongName()
		if (nTongID_TV ~= nTongID_BC) then
			Say("Ng��i �� b� l� l�i tri�u h�i c�a Bang Ch�, ��i ��t sau �i")
			return 1;
		end

		if(gmkiemtrataptrung(nW) ~= 1) then
			Say("Bang ch� �ang � khu v�c ��c th� kh�ng th� di chuy�n ��n")
			return 1;
		end

		if (nW >= 935 and nW <= 947) then --thien tri tang x
			local diempdht = FuYuan_Get();
			if diempdht < 40 then
				Say("Bang ch� �ang � thi�n tr�, mu�n ��n ���c c�n 40 �i�m ph�c duy�n")
				return 1
			end
			FuYuan_Reduce(40);
		end

		if (nW >= 917 and nW <= 924) then --map 13x
			local nTransLife = ST_GetTransLifeCount()
			if nTransLife < 1 then
				Say("Bang ch� �ang � Map 13x Nh�n v�t tr�ng sinh "..nTransLife.." kh�ng th� ��n khu v�c n�y")
				return 1;
			end

			if nTransLife < 2 and GetLevel() < 150 then
				Say("Bang ch� �ang � Map 13x ��ng c�p c�a ng��i ch�a �� 150 kh�ng th� ��n khu v�c n�y")
				return 1;
			end

			if GetCash() < 5000000 then
				Say("Bang ch� �ang � Map 13x mu�n ��n �� ph�i c� 5 v�n l��ng")
				return 1
			end

			Pay(5000000)
		end

		NewWorld(nW, nX, nY)
		SetFightState(trangthai);
end;
