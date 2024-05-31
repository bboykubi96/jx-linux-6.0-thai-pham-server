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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
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

	tinsert(tbSay,"Ta Muèn Më/nhanthuongrandom")
	tinsert(tbSay,"Trë l¹i/no")
	Say("Xin Chµo  .\n", getn(tbSay), tbSay)
	return 1;
end

function nhanthuongrandom()

if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end

local tbVnNewItemDropAward = {
	[1] = {
	
	},
	[2] = {
{szName="To¹i Nh©n XÝch HuyÕt Nguyªn Vò Gi¸p",tbProp={0,	442	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To¹i Nh©n B¸ch LuyÖn Kh«i",tbProp={0,	443	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To¹i Nh©n Trôc Thiªn Ngoa",tbProp={0,	445	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="ThÇn N«ng Tiªu D­¬ng §Þa Hoµng Y",tbProp={0,	482	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Chóc Dung LiÖt DiÖm Né Phong Trang",tbProp={0,	472	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N÷ Oa Hång Nhan Ph¸t §¸i",tbProp={0,	463	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="ThÇn N«ng Né L«i §Çu Hoµn",tbProp={0,	483	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Chóc Dung Kinh ChÝch BÊt DiÖt Tr¶o",tbProp={0,	476	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="ThÇn N«ng Ngù Phong L÷",tbProp={0,	485	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N÷ Oa Hµn T­¬ng",tbProp={0,	467	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Chóc Dung Ph¸ NhËt",tbProp={0,	477	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="ThÇn N«ng Tr¶m Nh¹c",tbProp={0,	487	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="To¸i Nh©n Vò L©m Linh",tbProp={0,	448	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="Phôc Hi Khóc Du Xu©n",tbProp={0,	458	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="N÷ Oa NiÖm N« KiÒu",tbProp={0,	468	},nCount=1,nQuality=1,nRate=5.84,CallBack= _Message},
{szName="Chóc Dung Tóy Th¸i B×nh",tbProp={0,	478	},nCount=1,nQuality=1,nRate=5.8,CallBack= _Message},
{szName="ThÇn N«ng Thiªn TÞnh Sa",tbProp={0,	488	},nCount=1,nQuality=1,nRate=6,CallBack= _Message},
	},
	}
				if ConsumeEquiproomItem(1, 6,1, 4391,-1)>0 then
					--	tbAwardTemplet:GiveAwardByList({{szName="VËt PhÈm Gi¸ TrÞ",tbProp={0,item},nCount=1,nQuality=1},}, "test", 1);
							tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn Th­ëng")
				end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o  r­¬ng Viªm §Õ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end



