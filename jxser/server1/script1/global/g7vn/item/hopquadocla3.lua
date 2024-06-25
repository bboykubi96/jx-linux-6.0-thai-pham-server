
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
function main()
dofile("script/global/g7vn/item/hopquadocla3.lua")
if CalcFreeItemCellCount() < 10 then
Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
return 1
end
if CalcEquiproomItemCount(6,1,30037,-1)<1 then
	Say("CÇn 1 Ch×a Khãa V¹n N¨ng ®Ó më r­¬ng.")
	return 1
end
local rannnn=random(1,100)
if rannnn<=30 then
	local tbAward= {
	
					{szName="Thñy Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=7},	
					{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=1,nRate=7},	
					{szName="Ng©n L­îng",nJxb=20000,nCount=1,nRate=61},
					{szName="TiÒn §ång",tbProp={4,417,1,1},nCount=10,nRate=7},	
					{szName="D· TÈu Chi LÖnh",tbProp={6,1,4407,1,0,0},nCount=2,nRate=6},	
					{szName="Phóc Duyªn",tbProp={6,1,124,1,0,0},nCount=1,nRate=6},	
					{szName="M¶nh Vâ L©m MËt TÞch",tbProp={4,1643,1,1},nCount=1,nRate=3},	
					{szName="M¶nh TÈy Tñy Kinh",tbProp={4,1644,1,1},nCount=1,nRate=3},	
				
					
					
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")
else
local ranchung=random(1,9)
if ranchung==1 then
	local ranvk=random(1,3)
		if ranvk<=2 then
			AddItem(0, 0,random(0,5), 10,random(0,4), 100, 10) 
		else
			AddItem( 0, 1,random(0,2), 10,random(0,4), 100, 10) 
		end
elseif ranchung==2 then
			AddItem( 0, 2,random(0,13), 10,random(0,4), 100, 10) 
elseif ranchung==3 then
			AddItem( 0, 7,random(0,13), 10,random(0,4), 100, 10) 
elseif ranchung==4 then
			AddItem( 0, 8,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==5 then
			AddItem( 0, 6,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==6 then
			AddItem( 0, 5,random(0,3), 10,random(0,4), 100, 10) 
elseif ranchung==7 then
			AddItem( 0, 4,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==8 then
			AddItem( 0, 9,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==9 then
			AddItem( 0, 3,0, 10,random(0,4), 100, 10) 
end
end
ConsumeEquiproomItem(1,6,1,30037,-1)
--trangbixanh()
--return 1
end

tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y tiÕp tôc nhÐ !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end
tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "chän ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end
tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "chän ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh4, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh4, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh4, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh4, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh4, {nIndex, nType, 4}})
tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
if CalcEquiproomItemCount(6,1,4478,-1)<1 then
	return 1
end
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
 AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) 
ConsumeEquiproomItem(1,6,1,4478,-1)
ConsumeEquiproomItem(1,6,1,30037,-1)
return 1
end
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o  r­¬ng §å phæ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end
