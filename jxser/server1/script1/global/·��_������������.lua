--Than bi thuong nhan tuong duong: edit by mcteam

Include( "\\script\\global\\fuyuan.lua" )
Include([[\script\event\mid_autumn06\head.lua]]); 
Include("\\script\\vng_feature\\thuongnhanthanbi\\moruongfour\\openchestfour.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

--dofile("script/global/Â·ÈË_ÉñÃØÉÌÈËÁøÒÒ.lua");
--dofile("script/global/g7vn/g7configall.lua")

local tab_Content = { 
"Liªn quan tíi phóc duyªn /OnAbout",
"KÕt thóc ®èi tho¹i /OnCancel",
}; 

if ditruongbach == 1 then
tinsert(tab_Content,"H·y ®­a ta ®i ngän nói Tr­êng B¹ch /GotoHuanZhuan")
end
if shopphucduyen == 1 then
tinsert(tab_Content,"Giao dŞch /OnBuy"); 
--tinsert(tab_Content,"KÕt thóc ®èi tho¹i /OnCancel"); 
end

if (au06_is_inperiod() == 1) then 
tinsert(tab_Content,"Trung thu ho¹t ®éng /au06_lpaw_entrance"); 
end; 

if ruongso4 == 1 then
tinsert(tab_Content,"Khai r­¬ng 4/#tbChectfour:main()")
end

Say ("Kh¸ch quan muèn mua g× ? bæn ®iÕm kh«ng thiÕu hµng nga !", getn(tab_Content), tab_Content); 
end 

function OnBuy() 
Sale( 93, 2 ); 
end 

function OnBuyNew() 
Sale( 181, 2 ); 
end 

function OnAbout() 
Talk( 3, "","Phóc duyªn ®iÓm ®Õm # th«ng qua tİch lòy ë tuyÕn thêi gian tíi ®æi ®İch mét lo¹i h­ nghÜ ®iÓm ®Õm , cã thÓ dïng tíi cïng t­¬ng d­¬ng ®İch thÇn bİ th­¬ng nh©n liÔu Êt ®æi c¸c lo¹i ®Æc thï vËt phÈm . ","Phóc duyªn ®æi # tİch lòy hai giê trë lªn ë tuyÕn thêi gian sau , ®i c¸c ®¹i thµnh thŞ t×m vâ l©m minh truyÒn nh©n lµ ®­îc ®æi . mét ngµy bªn trong nÕu nh­ hai lÇn thµnh c«ng ®æi phóc duyªn , cã ng¹ch ngo¹i t­ëng th­ëng . tİch lòy ë tuyÕn thêi gian 4 giê lÊy bªn trong , mçi giê ®æi 1 ®iÓm phóc duyªn , 4 giê trë lªn , tr­íc 4 giê mçi giê ®æi 1 ®iÓm , sau mçi hai giê ®æi 1 ®iÓm . häp thµnh ®éi lóc , trong ®éi ngò tïy ı mét thµnh viªn cã thÓ gióp toµn ®éi ®éi viªn nhËn lÊy phóc duyªn . ","H¹n chÕ ®iÒu kiÖn # ngåi tï trong lóc kh«ng gia t¨ng cã thÓ ®æi lÊy phóc duyªn ®İch ë tuyÕn thêi gian . " ); 
end 

function au06_lpaw_entrance() 
if (au06_IsPayed_player() == 0) then 
Say("ChØ cã sung trŞ gi¸ nhµ ch¬i míi cã thÓ tham gia trung thu ho¹t ®éng ", 0); 
return 
end; 
Say("NÕu nh­ ng­¬i cã <color=yellow> 10 th­¬ng cæ lÖnh bµi <color> ta sÏ cho ng­¬i ®æi mét <color=yellow> phông th¸ng qu¶ dong <color> ®­a kü n¨ng trŞ gi¸ hoÆc lµ 1 <color=yellow> cèng th¸ng phï dung <color> ®­a tiÒm n¨ng trŞ gi¸ .", 3, "1 c¸ th­¬ng cæ lÖnh bµi ®æi lÊy t­ëng th­ëng /#shangjialingpai(1)", "10 c¸ th­¬ng cæ lÖnh bµi ®æi lÊy t­ëng th­ëng /#shangjialingpai(2)","KÕt thóc ®èi tho¹i /oncancel"); 
end; 

function shangjialingpai(nIndex) 
if (CalcEquiproomItemCount(6, 1, 1252, -1) < 10) then 
Say("CÇn 10 c¸ th­¬ng cæ lÖnh bµi míi cã thÓ ®æi lÊy t­ëng th­ëng #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  khÊu trõ vËt phÈm 
if (ConsumeEquiproomItem(10, 6, 1, 1252, -1) ~= 1) then 
return 
end 

-- script viet hoa By http://tranhba.com  cho t­ëng th­ëng 
local str = "<color=yellow> phông th¸ng qu¶ dong <color>"; 
if (nIndex == 1) then -- script viet hoa By http://tranhba.com  gia t¨ng mét kü n¨ng ®iÓm 
AddItem(6, 1, 127, 1, 0, 0, 0); 
else -- script viet hoa By http://tranhba.com  gia t¨ng 5 c¸ tiÒm n¨ng ®iÓm 
AddItem(6, 1, 128, 1, 0, 0, 0); 
str = "<color=yellow> cèng th¸ng phï dung <color>"; 
end; 

-- script viet hoa By http://tranhba.com  cho ®Ò kú 
Say("H¶o a # xin/mêi tiÕp nhËn mét chót lÔ vËt !", 0); 
Msg2Player("Ng­¬i ®¹t tíi "..str); 
end; 

function OnCancel() 
end 
function GotoHuanZhuan() 
NewWorld(934, 49632 / 32, 105696 /32) 
end 
