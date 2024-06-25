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
local szTitle =  "Xin h·y Chän HKMP T­¬ng øng"

local tbOpt = 
{

{"Chän HKMP", hkmpvip1},

{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end





function hkmpvip1() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2","KÕt thóc ®èi tho¹i/no") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
               --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 

function hkvipnmc()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipnmc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvipnmk() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,570-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipnmk",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipnmbuff()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1); 
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipnmbuff",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,585-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptyd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptyc()
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1); 
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,590-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptyc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
function hkmpdm()

if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                            {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n B¨ng Hµn", hkvippd}, 
                           --    {"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,615-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipbv",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvippt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,620-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvippt",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvippd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,610-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvippd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkvipbay() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipbay",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                 {"Ngò §éc §ao", hkvipndd}, 
                --{"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,595-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmpnd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipndd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,600-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipndd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipndb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipndb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,560-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmptv",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptvc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,555-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptvc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptvd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,565-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptvd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptld() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,550-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmptl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptlb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,545-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptlb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptlq() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,541-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptlq",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,655-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmpvd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipvdk() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,660-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipvdk",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                {"C«n L«n Bïa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,665-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmpcl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipclc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,670-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipclc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipclb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,675-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipclb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                           {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
               -- {"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,640-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmptn",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptnd() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,654-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptnd",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkviptnb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,578-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkviptnb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                            {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,633-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkmpcb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function hkvipcbb() 
	local nCount = CalcEquiproomItemCount(6,1,4402,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4402,-1);
tbAwardTemplet:GiveAwardByList({{szName="HKMP",tbProp={0,635-539},nCount=1,nQuality=1,nBindState =binstate},}, "test", 1);
logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng g­¬ng hkvipcbb",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end




function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

