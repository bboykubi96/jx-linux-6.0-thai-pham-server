Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main(nIndex)
-- Msg2Player("its ok"..nIndex)
tbAwardTemplet:GiveAwardByList({szName = "LÔ bao chiÕn c«ng",tbProp = {6,1,2009,1,0,0},}, "Nhan ho tro tan thu them")
-- local szTitle = "<npc>Server Vâ l©m håi øc t¸i hiÖn ch©n thùc bøc tranh Vâ l©m truyÒn kú 2007"
-- local tbOpt ={}
	-- tinsert(tbOpt, 1, {"Thoat",no})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Long §µi",GetGoldItem,{168,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long B¹ch Long Tøc",GetGoldItem,{169,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long TrÊn Minh Liªn",GetGoldItem,{170,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Cöu HiÖn chØ",GetGoldItem,{171,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Ngäc Tiªu Diªu",GetGoldItem,{172,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Hoµng Kim L©n",GetGoldItem,{173,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Bµn Long c«i",GetGoldItem,{174,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Long Khèc Thiªn Lý",GetGoldItem,{175,nIndex}})
	-- tinsert(tbOpt, 1, {"Thiªn Hoµng Long Né Long §ång",GetGoldItem,{176,nIndex}})
-- CreateNewSayEx(szTitle, tbOpt)
-- return 1
end
-- function GetGoldItem(nGoldIdx,nIndex)
-- tbAwardTemplet:GiveAwardByList({szName = "Thiªn hoµng",tbProp = {0,nGoldIdx},nBindState=-2,nQuality=1}, "Nhan ho tro tan thu them")
-- RemoveItemByIndex(nIndex)
-- end