Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\objbuffer_head.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>ChÛc mıng <color=yellow>%s<color=green> Æ∑ nhÀn Æ≠Óc vÀt ph»m <color=yellow>%s<color=green> tı b∂o r≠¨ng hoµng kim", GetName(), strItemName)
	-- Msg2SubWorld(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbBoxAward  = {
{tbProp={4,{777,782},1,1,0,0},nRate=8,CallBack = _Message},-- Nhu Tinh ao
{tbProp={4,{747,752},1,1,0,0},nRate=7,CallBack = _Message},-- An bang lien
{tbProp={4,{753,758},1,1,0,0},nRate=25,CallBack = _Message},-- M∂nh CÛc Hoa Thπch Chÿ hoµn
{tbProp={4,{765,770},1,1,0,0},nRate=25,CallBack = _Message},-- M∂nh Huy’t Thπch GiÌi Chÿ
{tbProp={4,{759,764},1,1,0,0},nRate=100,CallBack = _Message},-- M∂nh ßi“n Hoµng Thπch Ng‰c BÈi
}
function main(nItemIdx)
if CalcFreeItemCellCount() < 10 then
Say("Hµnh trang kh´ng ÆÒ 10 ´ trËng",0)
return 1
end
tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong hoang kim")
end

