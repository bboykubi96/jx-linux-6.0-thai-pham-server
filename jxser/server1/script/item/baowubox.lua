Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\objbuffer_head.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o r­¬ng thÇn bÝ", GetName(), strItemName)
	-- Msg2SubWorld(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbBoxAward  = {

{tbProp={4,{771,776},1,1,0,0},nRate=5,CallBack = _Message},-- hiep cot tinh y ket
{tbProp={4,{783,788},1,1,0,0},nRate=5,CallBack = _Message},-- mu dinh quoc
{tbProp={4,{903,906},1,1,0,0},nRate=5,CallBack = _Message},-- ao hiep cot
{tbProp={4,{907,910},1,1,0,0},nRate=11,CallBack = _Message},-- hiep cot da tinh hoan
{tbProp={4,{911,914},1,1,0,0},nRate=11,CallBack = _Message},-- hiep cot dan tam gioi
{tbProp={4,{915,918},1,1,0,0},nRate=11,CallBack = _Message},--nhu Tinh thuc nu hang lien
{tbProp={4,{919,922},1,1,0,0},nRate=11,CallBack = _Message},-- nhu tinh nhan
{tbProp={4,{923,926},1,1,0,0},nRate=5,CallBack = _Message},-- nhu tinh ngoc boi
{tbProp={4,{927,930},1,1,0,0},nRate=9,CallBack = _Message},-- dinh quoc sam
{tbProp={4,{931,934},1,1,0,0},nRate=9,CallBack = _Message},-- dinh quoc ngoa
{tbProp={4,{935,938},1,1,0,0},nRate=9,CallBack = _Message},-- dinh quoc ho uyen
{tbProp={4,{939,942},1,1,0,0},nRate=9,CallBack = _Message},-- dinh quoc yeu dai
-- {tbProp={4,{747,752},1,1,0,0},nRate=1,CallBack = _Message},-- An bang lien
-- {tbProp={4,{753,770},1,1,0,0},nRate=3,CallBack = _Message},-- An bang cui
}
function GetKimPhong(nIndex)
-- Msg2Player("its ok"..nIndex)
local szTitle = "<npc>Server Vâ l©m bÝ sö t¸i hiÖn ch©n thùc bøc tranh Vâ l©m truyÒn kú 2007"
local tbOpt ={}
	tinsert(tbOpt, 1, {"Thoat",no})
	tinsert(tbOpt, 1, {"Kim Phong Thanh D­¬ng Kh«i",GetGoldItem,{177,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong Kú L©n HuyÕt",GetGoldItem,{178,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong Tr¹c Liªn Quang",GetGoldItem,{179,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong C«ng CÈn Tam Th¸n",GetGoldItem,{180,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong §o¹t Hån Ngäc ®¸i",GetGoldItem,{181,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong HËu NghÖ dÉn cung",GetGoldItem,{182,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong Lan §×nh Ngäc",GetGoldItem,{183,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong Thiªn Lý Th¶o Th­îng Phi",GetGoldItem,{184,nIndex}})
	tinsert(tbOpt, 1, {"Kim Phong §ång T­íc Xu©n Th©m",GetGoldItem,{185,nIndex}})
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function GetRandomPiece(nIndex)
tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong facebook")
RemoveItemByIndex(nIndex)
end
function GetGoldItem(nGoldIdx,nIndex)
tbAwardTemplet:GiveAwardByList({szName = "Kim Phong",tbProp = {0,nGoldIdx},nQuality=1}, "Nhan ho tro tan thu them")
RemoveItemByIndex(nIndex)
end
-- mu dq 5
-- áo dq 5
-- dai lung dq 10
-- gi?y dq 10
-- bao tay dq 5
-- áo hc 5
-- dây chuy?n hc 10
-- nh?n hc 10
-- ng?c b?i hc 5
-- nh?n nt 10
-- ng?c b?i nt 5
-- dây chuy?n nt 10
function main(nItemIdx)
-- do return 1 end
-- dofile ([[script/item/baowubox.lua]])
local szTitle = "Server Vâ l©m bÝ sö t¸i hiÖn ch©n thùc bøc tranh Vâ l©m truyÒn kú 2007"
local tbOpt ={}
tinsert(tbOpt, 1, {"Thoat",no})
tinsert(tbOpt, 1, {"Chän 1 mãn Kim Phong",GetKimPhong,{nItemIdx}})
tinsert(tbOpt, 1, {"NgÉu nhiªn 1 m¶nh ®å Hoµng Kim",GetRandomPiece,{nItemIdx}})
CreateNewSayEx(szTitle, tbOpt)
-- tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong facebook")
return 1
end

