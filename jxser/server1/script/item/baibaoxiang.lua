Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main(nIndex)
-- Msg2Player("its ok"..nIndex)
tbAwardTemplet:GiveAwardByList({szName = "L� bao chi�n c�ng",tbProp = {6,1,2009,1,0,0},}, "Nhan ho tro tan thu them")
-- local szTitle = "<npc>Server V� l�m h�i �c t�i hi�n ch�n th�c b�c tranh V� l�m truy�n k� 2007"
-- local tbOpt ={}
	-- tinsert(tbOpt, 1, {"Thoat",no})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long Long ��i",GetGoldItem,{168,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long B�ch Long T�c",GetGoldItem,{169,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long Tr�n Minh Li�n",GetGoldItem,{170,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long C�u Hi�n ch�",GetGoldItem,{171,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long Ng�c Ti�u Di�u",GetGoldItem,{172,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long Ho�ng Kim L�n",GetGoldItem,{173,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long B�n Long c�i",GetGoldItem,{174,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long Long Kh�c Thi�n L�",GetGoldItem,{175,nIndex}})
	-- tinsert(tbOpt, 1, {"Thi�n Ho�ng Long N� Long ��ng",GetGoldItem,{176,nIndex}})
-- CreateNewSayEx(szTitle, tbOpt)
-- return 1
end
-- function GetGoldItem(nGoldIdx,nIndex)
-- tbAwardTemplet:GiveAwardByList({szName = "Thi�n ho�ng",tbProp = {0,nGoldIdx},nBindState=-2,nQuality=1}, "Nhan ho tro tan thu them")
-- RemoveItemByIndex(nIndex)
-- end