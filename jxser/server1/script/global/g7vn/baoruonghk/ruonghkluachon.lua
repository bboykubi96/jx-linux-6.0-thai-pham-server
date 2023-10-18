Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\battles\\battlehead.lua")







function main(nItemIndex)
if ITEM_GetExpiredTime(nItemIndex) ==0 then
binstate=0
	else
	binstate=-2
end
dofile("script/global/g7vn/baoruonghk/ruonghkluachon.lua")
local szTitle =  "Xin h�y Ch�n HKMP T��ng �ng"

local tbOpt = 
{

{"Ch�n HKMP", hkmpvip1},

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
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
               --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipnmc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvipnmk() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,570-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipnmk",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipnmbuff()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1); 
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipnmbuff",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,585-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptyd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptyc()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1); 
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,590-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptyc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
function hkmpdm()

if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                           --    {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,615-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipbv",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvippt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,620-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvippt",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvippd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,610-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvippd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvipbay() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipbay",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                 {"Ng� ��c �ao", hkvipndd}, 
                --{"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,595-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmpnd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipndd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,600-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipndd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipndb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipndb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,560-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmptv",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptvc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,555-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptvc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptvd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,565-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptvd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,550-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmptl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptlb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,545-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptlb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptlq() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,541-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptlq",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,655-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmpvd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipvdk() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,660-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipvdk",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"C�n L�n B�a", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,665-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmpcl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipclc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,670-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipclc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipclb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,675-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipclb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                           {"Thi�n Nh�n Ch��ng", hkviptnd}, 
               -- {"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,640-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmptn",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptnd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,654-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptnd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptnb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkviptnb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,633-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkmpcb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipcbb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h� chim c�t !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,635-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng hkvipcbb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end




function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

