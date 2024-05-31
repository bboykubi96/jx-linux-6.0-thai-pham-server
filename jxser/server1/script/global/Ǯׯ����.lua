-- script viet hoa By http://tranhba.com  tiÒn trang chøc n¨ng .lua b¸n bao tiÒn l× x× ®İch tiªu chuÈn v¨n kiÖn 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-12-31) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-01-06) ®em ng©n phiÕu chøc n¨ng dêi ra ®Õn tr­íc khi an tiÒn trang cã mét 
Include("\\script\\global\\head_qianzhuang.lua") -- script viet hoa By http://tranhba.com  Ç®×¯Í·ÎÄ¼ş
IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main_proc() 
if (GetSex() == 0) then 
Say("TiÒn Trang l·o b¶n # ®óng råi vŞ thiÓu hiÖp kia muèn c¸i g× phôc vô ? ",3,"N¬i nµy cã kh«ng cã bao tiÒn l× x× ? /buy_sele","Ta muèn ®æi nguyªn b¶o thµnh ®ång tiÒn /change_ingot_to_coin","Tïy tiÖn ®i d¹o mét chót /no") 
else 
Say("TiÒn Trang l·o b¶n # ®óng råi vŞ c« n­¬ng nµy muèn c¸i g× phôc vô ? ",3,"N¬i nµy cã kh«ng cã bao tiÒn l× x× ? /buy_sele","Ta muèn ®æi nguyªn b¶o thµnh ®ång tiÒn /change_ingot_to_coin","Tïy tiÖn ®i d¹o mét chót /no") 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  mua bao tiÒn l× x× -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function buy_sele() 
-- script viet hoa By http://tranhba.com Say("TiÒn Trang l·o b¶n # ta chç nµy ®İch bao tiÒn l× x× phó lÖ ung vinh , lÔ träng t×nh nÆng h¬n , nhÊt lµ ®­a lÔ th­îng phÈm , tiÓu hång bao 10000 hai , ®¹i bao tiÒn l× x× 100000 hai , cïng víi <color=green> nh­ ı bao tiÒn l× x× cïng h¹ tuæi bao tiÒn l× x× . \n nh­ ı bao tiÒn l× x× <color> lµ do kh¸ch quan chİnh ngµi quyÕt ®Şnh tói bao nhiªu tiÒn ®İch bao tiÒn l× x× . \n<color=green> h¹ tuæi bao tiÒn l× x× <color> lµ cã thÓ tói <color=yellow> ®ång tiÒn <color> ®İch bao tiÒn l× x× , dÜ nhiªn bao tiÒn l× x× trung ®ång tiÒn sè l­îng cßn lµ tõ ngµi ®Şnh . ",5,"Muèn c¸ tiÓu hång bao ®i /buy1","Tíi c¸ ®¹i bao tiÒn l× x× /buy2","Muèn nh­ ı bao tiÒn l× x× /ruyi_hongbao","Muèn h¹ tuæi bao tiÒn l× x× /hesui_hongbao","Kh«ng cÇn /no") 
Say("TiÒn Trang l·o b¶n # h¶o a h¶o a , ta chç nµy ®İch bao tiÒn l× x× phó lÖ ung vinh , lÔ träng t×nh nÆng h¬n , nhÊt lµ ®­a lÔ th­îng phÈm , tiÓu hång bao 10000 hai , ®¹i bao tiÒn l× x× 100000 hai , kh«ng biÕt kh¸ch quan ngµi muèn lo¹i nµo ? ",3,"Muèn c¸ tiÓu hång bao ®i /buy1","Tíi c¸ ®¹i bao tiÒn l× x× /buy2","Kh«ng cÇn /no") 
end 

function buy1() 
if (GetCash() >= 10000) then 
Pay(10000) 
AddItem(6,1,14,1,0,0,0) 
Talk(1,"","TiÒn Trang l·o b¶n # tiÓu hång bao nhÊt c¸ , ngµi cÊt xong liÔu #") 
else 
Talk(1,"","TiÒn Trang l·o b¶n # tiÒn cña ngµi d­êng nh­ kh«ng qu¸ ®ñ a . ") 
end 
end 

function buy2() 
if (GetCash() >= 100000) then 
Pay(100000) 
AddItem(6,1,13,1,0,0,0) 
Talk(1,"","TiÒn Trang l·o b¶n # ®¹i bao tiÒn l× x× nhÊt c¸ , ngµi cÊt xong liÔu #") 
else 
Talk(1,"","TiÒn Trang l·o b¶n # tiÒn cña ngµi d­êng nh­ kh«ng qu¸ ®ñ a . ") 
end 
end 

function no() 
end 

function hesui_hongbao() -- script viet hoa By http://tranhba.com  tù ®Şnh nghÜa ®ång tiÒn 
AskClientForNumber("Package_Hesui", 1, 100,"Xin/mêi ®­a vµo ®ång tiÒn mai ®Õm :"); 
end 
function Package_Hesui(nMoney) 
if (CalcEquiproomItemCount(4, 417, 1, 1) < nMoney) then 
Talk(1,"","TiÒn Trang l·o b¶n # ngµi mang ®İch ®ång tiÒn d­êng nh­ kh«ng ®ñ "..nMoney.." mai nga . ") 
else 
ConsumeEquiproomItem(nMoney, 4, 417, 1, -1) 
local nItem = AddItem(6,1,1052,1,0,0,0) 
SetSpecItemParam(nItem, 1, nMoney) 
SyncItem(nItem) 
Talk(1,"","TiÒn Trang l·o b¶n # h¹ tuæi bao tiÒn l× x× nhÊt c¸ , ngµi cÊt xong liÔu #") 
end 
end 


function ruyi_hongbao() -- script viet hoa By http://tranhba.com  tù ®Şnh nghÜa kim tiÒn 
AskClientForNumber("Package_Ruyi", 1, 10000000,"Xin/mêi ®­a vµo bao tiÒn l× x× sè tiÒn :"); 
end 
function Package_Ruyi(nMoney) 
if (GetCash() < nMoney) then 
Talk(1,"","TiÒn Trang l·o b¶n # tiÒn cña ngµi d­êng nh­ kh«ng ®ñ "..nMoney.." hai nga . ") 
else 
Pay(nMoney) 
local nItem = AddItem(6,1,1051,1,0,0,0) 
SetSpecItemParam(nItem, 1, nMoney) 
local nM1 = floor(nMoney / 1000000) 
local nM2 = floor(mod(nMoney, 1000000) / 1000) 
local nM3 = mod(nMoney, 1000) 
SetSpecItemParam(nItem, 2, nM1) 
SetSpecItemParam(nItem, 3, nM2) 
SetSpecItemParam(nItem, 4, nM3) 
SyncItem(nItem) 
Talk(1,"","TiÒn Trang l·o b¶n # nh­ ı bao tiÒn l× x× nhÊt c¸ , ngµi cÊt xong liÔu #") 
end 
end
