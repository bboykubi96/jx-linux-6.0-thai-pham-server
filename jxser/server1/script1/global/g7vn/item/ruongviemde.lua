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
-----------------------------------------------------
--------------------------------------------------------

function main()
dofile("script/global/g7vn/item/ruongviemde.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end	
				if ConsumeEquiproomItem(1, 6,1, 4391,-1)>0 then
						tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,random(164,167)},nCount=1,nQuality=1},}, "test", 1);
				end
		return 1
end

function main111111()
dofile("script/global/g7vn/item/ruongviemde.lua")
local tbSay = {}

	tinsert(tbSay,"Ta Mu�n M�/nhanthuongrandom")
	tinsert(tbSay,"Tr� l�i/no")
	Say("Xin Ch�o  .\n", getn(tbSay), tbSay)
	return 1;
end

function nhanthuongrandom()

if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end

local tbVnNewItemDropAward = {
	[1] = {
	
	},
	[2] = {
{szName="To�i Nh�n X�ch Huy�t Nguy�n V� Gi�p",tbProp={0,	442	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To�i Nh�n B�ch Luy�n Kh�i",tbProp={0,	443	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To�i Nh�n Tr�c Thi�n Ngoa",tbProp={0,	445	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Th�n N�ng Ti�u D��ng ��a Ho�ng Y",tbProp={0,	482	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Ch�c Dung Li�t Di�m N� Phong Trang",tbProp={0,	472	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N� Oa H�ng Nhan Ph�t ��i",tbProp={0,	463	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Th�n N�ng N� L�i ��u Ho�n",tbProp={0,	483	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Ch�c Dung Kinh Ch�ch B�t Di�t Tr�o",tbProp={0,	476	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Th�n N�ng Ng� Phong L�",tbProp={0,	485	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N� Oa H�n T��ng",tbProp={0,	467	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Ch�c Dung Ph� Nh�t",tbProp={0,	477	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Th�n N�ng Tr�m Nh�c",tbProp={0,	487	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To�i Nh�n V� L�m Linh",tbProp={0,	448	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Ph�c Hi Kh�c Du Xu�n",tbProp={0,	458	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N� Oa Ni�m N� Ki�u",tbProp={0,	468	},nCount=1,nQuality=1,nRate=5.84,CallBack= _Message},
{szName="Ch�c Dung T�y Th�i B�nh",tbProp={0,	478	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Th�n N�ng Thi�n T�nh Sa",tbProp={0,	488	},nCount=1,nQuality=1,nRate=6,CallBack= _Message},
	},
	}
				if ConsumeEquiproomItem(1, 6,1, 4391,-1)>0 then
					--	tbAwardTemplet:GiveAwardByList({{szName="V�t Ph�m Gi� Tr�",tbProp={0,item},nCount=1,nQuality=1},}, "test", 1);
							tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n Th��ng")
				end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o  r��ng Vi�m ��", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end



