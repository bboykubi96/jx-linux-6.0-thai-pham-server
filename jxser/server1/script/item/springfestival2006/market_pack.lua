-- Script edit by McTeam mo vat pham ky tran cac
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")

Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");


Include("\\script\\global\\tieungao\\quanlygame.lua");
Include("\\script\\global\\tieungao\\superquanlygame.lua");

IncludeLib("ITEM")

Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");

function main(nItemIndex)
	
	
	dofile("script/item/market_pack.lua");
	--dofile("script/global/tieungao/quanlygame.lua");
	--dofile("script/global/tieungao/superquanlygame.lua");
	--dofile("script/global/tieungao/hotrothemtieungao.lua");

	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();


	--Msg2Player("G= "..G.." D= "..D.." P= "..P.." nLevel ="..nLevel.." nExPiredTime= "..nExPiredTime.."nLeftTime="..nLeftTime.."")


	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("VËt phÈm ®· qu¸ h¹n sö dông")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 6 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
	
	-- ÔÀÍõ½£
	if P == 2340 then
		local tbAwardItem = {tbProp={4,195,1,1,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end	
	
	-- ÑªÕ½ÁîÆì
	if P == 2401 then
		local tbAwardItem = {tbProp={6,1,2212,1,0,0},nExpiredTime=nLeftTime,}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end	
	
	--Thanh TuyÖt Y lÔ hép
	if P == 2335 then
		local tbAwardItem = {tbProp={0,2,28,3,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return
	end	
	
	--Thanh TuyÖt Y lÔ hép
	if P == 2336 then
		local tbAwardItem = {tbProp={0,2,28,6,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return
	end	
		
	--Thanh TuyÖt Y lÔ hép
	if P == 2337 then
		local tbAwardItem = {tbProp={0,2,28,2,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return
	end	
		
	--Thanh TuyÖt Y lÔ hép
	if P == 2338 then
		local tbAwardItem = {tbProp={0,2,28,5,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return
	end	
	
	-- Mo sat thu gian le hop
	if P == 2339 then
		SelectSeries(P)
		return 1;
	end

	-- Phi van
	if P == 2396 then
		local tbAwardItem = {tbProp={0,10,8,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Xich tho
	if P == 2328 then
		local tbAwardItem = {tbProp={0,10,5,2,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end
	
	--  Bon tieu
	if P == 2333 then
		local tbAwardItem = {tbProp={0,10,6,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end
	-- sat thu gian
	if P == 4348 then
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 5}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end
	-- O van dap tuyet
	if P == 2331 then
		local tbAwardItem = {tbProp={0,10,5,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Chieu da ngoc su tu
	if P == 2332 then
		local tbAwardItem = {tbProp={0,10,5,5,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Ngua Phien vu
	if P == 2334 then
		local tbAwardItem = {tbProp={0,10,7,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Dich lo
	if P == 2338 then
		local tbAwardItem = {tbProp={0,10,5,4,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Tuyet anh
	if P == 2330 then
		local tbAwardItem = {tbProp={0,10,5,3,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	-- Dich lo
	if P == 2329 then
		local tbAwardItem = {tbProp={0,10,5,4,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		return 0;
	end

	return 1
end

-- Ñ¡ÔñÎåÐÐ
function SelectSeries(nP)
	local tbTaskSay = {}
	tinsert(tbTaskSay,"Kim ./#GetSeries(nP, 0)")
	tinsert(tbTaskSay,"Méc ./#GetSeries(nP, 1)")
	tinsert(tbTaskSay,"Thuû ./#GetSeries(nP, 2)")
	tinsert(tbTaskSay,"Ho¶ ./#GetSeries(nP, 3)")
	tinsert(tbTaskSay,"Thæ ./#GetSeries(nP, 4)")

	tinsert(tbTaskSay,"§Ó sau ./Quit")

	Say("Chän ngò hµnh:", getn(tbTaskSay), tbTaskSay)
end

function GetSeries(nP, nSeries)
	--if ConsumeItem(3, 1, 6, 1, nP, 1) ~= 1 then
	--	Msg2Player("KhÊu trõ ®¹o cô thÊt b¹i")
	--	return
--	end
		
	-- Sat thu gian le hop
	--if nP == 2339 then
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 5}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");
		ConsumeEquiproomItem(1,6,1,2339,-1)
	--	return
	--end	
end
