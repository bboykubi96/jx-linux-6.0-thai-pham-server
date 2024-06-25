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
		tinsert(tbSay,"S½n sµng ®i ./#GMGoiTaSanSangDi(nW, nX, nY,trangthai)")
		tinsert(tbSay,"Cã viÖc kh¸c råi ./KhongDi")
		Say("Admin ph¸t ®éng lÖnh tËp trung, ng­¬i cã muèn ®i?", getn(tbSay), tbSay)
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
		tinsert(tbSay,"S½n sµng ®i ./#TaSanSangDi(PlayerIndexOld,PlayerIndex)")
		tinsert(tbSay,"Cã viÖc kh¸c råi ./KhongDi")
		Say("Bang chñ ®ang cã lÖnh triÖu håi toµn bé Huynh §Ö trong bang, ng­¬i cã muèn ®i?", getn(tbSay), tbSay)
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
			Say("Ng­¬i ®· bá lì lêi triÖu håi cña Bang Chñ, ®îi ®ît sau ®i")
			return 1;
		end

		if(gmkiemtrataptrung(nW) ~= 1) then
			Say("Bang chñ ®ang ë khu vùc ®Æc thï kh«ng thÓ di chuyÓn ®Õn")
			return 1;
		end

		if (nW >= 935 and nW <= 947) then --thien tri tang x
			local diempdht = FuYuan_Get();
			if diempdht < 40 then
				Say("Bang chñ ®ang ë thiªn tr×, muèn ®Õn ®­îc cÇn 40 ®iÓm phóc duyªn")
				return 1
			end
			FuYuan_Reduce(40);
		end

		if (nW >= 917 and nW <= 924) then --map 13x
			local nTransLife = ST_GetTransLifeCount()
			if nTransLife < 1 then
				Say("Bang chñ ®ang ë Map 13x Nh©n vËt trïng sinh "..nTransLife.." kh«ng thÓ ®Õn khu vùc nµy")
				return 1;
			end

			if nTransLife < 2 and GetLevel() < 150 then
				Say("Bang chñ ®ang ë Map 13x §¼ng cÊp cña ng­¬i ch­a ®ñ 150 kh«ng thÓ ®Õn khu vùc nµy")
				return 1;
			end

			if GetCash() < 5000000 then
				Say("Bang chñ ®ang ë Map 13x muèn ®Õn ®ã ph¶i cã 5 v¹n l­îng")
				return 1
			end

			Pay(5000000)
		end

		NewWorld(nW, nX, nY)
		SetFightState(trangthai);
end;
