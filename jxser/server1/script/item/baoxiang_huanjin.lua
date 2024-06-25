Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\objbuffer_head.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o r��ng ho�ng kim", GetName(), strItemName)
	-- Msg2SubWorld(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbBoxAward  = {
{tbProp={4,{777,782},1,1,0,0},nRate=8,CallBack = _Message},-- Nhu Tinh ao
{tbProp={4,{747,752},1,1,0,0},nRate=7,CallBack = _Message},-- An bang lien
{tbProp={4,{753,758},1,1,0,0},nRate=25,CallBack = _Message},-- M�nh C�c Hoa Th�ch Ch� ho�n
{tbProp={4,{765,770},1,1,0,0},nRate=25,CallBack = _Message},-- M�nh Huy�t Th�ch Gi�i Ch�
{tbProp={4,{759,764},1,1,0,0},nRate=100,CallBack = _Message},-- M�nh �i�n Ho�ng Th�ch Ng�c B�i
}
function main(nItemIdx)
if CalcFreeItemCellCount() < 10 then
Say("H�nh trang kh�ng �� 10 � tr�ng",0)
return 1
end
tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong hoang kim")
end

