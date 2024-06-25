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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
end
local szTitle =  "Xin h·y Chän HKMP T­¬ng øng"

local tbOpt = 
{

{"Chän HKMP Lo¹i 1", hkmpvip1},

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
                {"V« Ma Hång Truy NhuyÔn Th¸p hµi", hkvipnmc}, 
                {"V« Gian CÇm VËn Hé UyÓn", hkvipnmk}, 
               --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 
function hkvipnmc()
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,579},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvipnmk() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,573},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Tª Hoµng B¨ng Tung CÈm uyÓn", hkviptyd}, 
                {"BÝch H¶i Hång Linh Kim Ti ®¸i", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,588},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptyc()
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1); 
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,592},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end
function hkmpdm()

if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c", hkvipbv}, 
                            {"S©m Hoang Tinh VÉn Phi Lý ", hkvippt}, 
                {"B¨ng Hµn HuyÒn Y Thóc Gi¸p", hkvippd}, 
                           --    {"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,618},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvippt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,624},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvippd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,611},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkvipbay() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"U Lung MÆc Thï NhuyÔn Lý", hkvipndc}, 
                 {"Minh ¶o Hñ Cèt Hé uyÓn", hkvipndd}, 
                --{"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,599},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipndd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,603},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipndb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"KÕ NghiÖp B¹ch Hæ V« Song khÊu", hkviptvt}, 
                {"H¸m Thiªn Thõa Long ChiÕn Ngoa", hkviptvc}, 
                {"Ngù Long TÊn Phong Hé yÓn", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,562},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptvc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,559},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptvd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,568},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Tø Kh«ng NhuyÔn B× Hé UyÓn", hkviptld}, 
                            {"Méng Long ChÝnh Hång T¨ng M·o", hkviptlb}, 
                {"Phôc Ma Phæ §é T¨ng hµi", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptld() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,553},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptlb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,540},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptlq() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,549},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi", hkvipvdc}, 
                            {"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,658},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipvdk() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,663},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ", hkvipcld}, 
                            {"L«i Khung Linh Ngäc UÈn L«i", hkvipclc}, 
                {"Vô ¶o Tung Phong TuyÕt ¶nh ngoa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,668},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipclc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,673},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipclb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,679},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);

end

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Ma S¸t Cö Háa Liªu Thiªn uyÓn", hkviptnt}, 
                 {"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn", hkviptnd}, 
               -- {"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,643},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptnd() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,650},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkviptnb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,578},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"§ång Cõu Phi Long §Çu hoµn", hkvipcbc}, 
                            {"§Þch Kh¸i TriÒn M·ng yªu ®¸i", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,630},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end

function hkvipcbb() 
	local nCount = CalcEquiproomItemCount(6,1,4437,-1);
	if nCount < 1 then
		Say("Bung h· chim cót !!",0);
		return
	end
ConsumeEquiproomItem(1,6,1,4437,-1);
tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,637},nCount=1,nQuality=1,nBindState =-2,nExpiredTime=5*60*24,CallBack=_Message},}, "test", 1);
end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ <color=cyan>B¶o R­¬ng HKMP 3 Ngµy", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end