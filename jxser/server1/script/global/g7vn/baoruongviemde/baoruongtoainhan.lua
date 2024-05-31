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
dofile("script/global/g7vn/baoruongviemde/baoruongtoainhan.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
end
local szTitle =  "Xin h�y Ch�n HKMP T��ng �ng"

local tbOpt = 
{

{"Ch�n HKMP Lo�i 1", hkmpvip1},

{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end
function hkmpvip1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2","K�t th�c ��i tho�i/no") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1","K�t th�c ��i tho�i/no") 
end
function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"V� Ma H�ng Truy Nhuy�n Th�p h�i", hkvipnmc}, 
                {"V� Gian C�m V�n H� Uy�n", hkvipnmk}, 
               --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 
function hkvipnmc()
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,579},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvipnmk() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,573},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"T� Ho�ng B�ng Tung C�m uy�n", hkviptyd}, 
                {"B�ch H�i H�ng Linh Kim Ti ��i", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,588},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptyc()
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1); 
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,592},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end
function hkmpdm()

if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"Thi�n Quang Song B�o H�n Thi�t Tr�c", hkvipbv}, 
                            {"S�m Hoang Tinh V�n Phi L� ", hkvippt}, 
                {"B�ng H�n Huy�n Y Th�c Gi�p", hkvippd}, 
                           --    {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,618},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvippt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,624},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvippd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,611},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvipbay() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"U Lung M�c Th� Nhuy�n L�", hkvipndc}, 
                 {"Minh �o H� C�t H� uy�n", hkvipndd}, 
                --{"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,599},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipndd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,603},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipndb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"K� Nghi�p B�ch H� V� Song kh�u", hkviptvt}, 
                {"H�m Thi�n Th�a Long Chi�n Ngoa", hkviptvc}, 
                {"Ng� Long T�n Phong H� y�n", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,562},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptvc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,559},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptvd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,568},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"T� Kh�ng Nhuy�n B� H� Uy�n", hkviptld}, 
                            {"M�ng Long Ch�nh H�ng T�ng M�o", hkviptlb}, 
                {"Ph�c Ma Ph� �� T�ng h�i", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,553},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptlb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,540},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptlq() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,549},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"L�ng Nh�c V� C�c Huy�n Ng�c B�i", hkvipvdc}, 
                            {"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,658},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipvdk() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,663},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"S��ng Tinh Thi�n Tinh B�ng Tinh th� ", hkvipcld}, 
                            {"L�i Khung Linh Ng�c U�n L�i", hkvipclc}, 
                {"V� �o Tung Phong Tuy�t �nh ngoa", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,668},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipclc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,673},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipclb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,679},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);

end

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Ma S�t C� H�a Li�u Thi�n uy�n", hkviptnt}, 
                 {"Ma Th� Li�t Di�m Qu�n Mi�n", hkviptnd}, 
               -- {"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,643},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptnd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,650},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptnb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"��ng C�u Phi Long ��u ho�n", hkvipcbc}, 
                            {"��ch Kh�i Tri�n M�ng y�u ��i", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,630},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipcbb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,637},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� <color=cyan>B�o R��ng HKMP 3 Ng�y", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end