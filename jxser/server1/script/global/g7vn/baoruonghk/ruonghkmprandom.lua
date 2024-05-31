Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruonghk/ruonghkmprandom.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
sethkmp()
return 1; 	
end

function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u l�m/#AddHoangKim(1,15)",
		"Thi�n V��ng/#AddHoangKim(16,30)",
		"Nga My/#AddHoangKim(31,45)",
		"Th�y Y�n/#AddHoangKim(46,55)",
		"Ng� ��c/#AddHoangKim(56,70)",
		"���ng M�n/#AddHoangKim(71,90)",
		"C�i Bang/#AddHoangKim(91,100)",
		"Thi�n Nh�n/#AddHoangKim(101,115)",
		"V� �ang/#AddHoangKim(116,125)",
		"C�n L�n/#AddHoangKim(126,140)",
		"Hoa S�n/#AddHoangKim(682,685)",
			"R�i kh�i/no",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end




function AddHoangKim(x,y)
tbCD_ID = {2,5,6,7,11,12,16,21,26,31,32,35,38, 39, 41,44,45,46,51,56,61,63,66,68,70,71,76,81,86,87,88,89,90,94,96,101,105,106,108,110,112,113,115,116,121,126,131,136,137,138}
	if CalcFreeItemCellCount() < 4 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 4 � tr�ng r�i h�y m�.",0);
		return 1;
	end
local item = random(x,y)
		for i = 0, getn(tbCD_ID) do			
			if (item == tbCD_ID[i]) then
			Msg2Player("M� l�n n�y th�t b�i, xin h�y th� l�i");
			return 1	
		end
		end
local tbVnNewItemDropAward = {

			{szName="",tbProp={0,item},nCount=1,nQuality=1,CallBack = _Message},

	}
	if ConsumeEquiproomItem(1, 6,1, 4381,-1)>0 then
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng");
	return 0;
	end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o  r��ng HKMP", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

