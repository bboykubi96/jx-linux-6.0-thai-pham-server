if (not _H_DIALOG_FESTIVAL2006_H_) then 
_H_DIALOG_FESTIVAL2006_H_ = 1; 
Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\springfestival\award.lua]]); 
Include([[\script\missions\springfestival\signin.lua]]); 

-- script viet hoa By http://tranhba.com  ®èi víi ®æi hµm sè chñ nhËp khÈu 
function sf06_mainentrance() 
local tab_Content = { 
" kh«ng thµnh vÊn ®Ò !/signin_temp", 
" ta ®· ®em “30 tuæi ng­êi ” ®uæi ®i !/sf07_getaward", 
" quan hÖ ®Õn ®uæi ®i “30 tuæi ng­êi ” ho¹t ®éng /sf07_detail", 
" gÇn nhÊt ta qu¸ bËn rén , t×m ng­êi kh¸c ®i !/no" 
} 
Describe("ChØ cÇn xu©n trë vÒ <color=yellow>30 tuæi ng­êi <color> còng tíi b¸ch h¹i th«n d©n . v× trî gióp th«n d©n gi¶i quyÕt c¸i nµy gieo häa , minh chñ vâ l©m tËp hîp c¸c vÞ vâ l©m nh©n sÜ trî gióp th«n d©n xua ®uæi <color=yellow>30 tuæi ng­êi <color>, trî gióp bän hä cã mét b×nh an n¨m míi . v× b¸o ®¸p minh chñ vâ l©m cao th­îng ®Ých hµnh ®éng , quan phñ d¸n ra khái xua ®uæi 30 tuæi ng­êi nhiÖm vô t­ëng th­ëng <color=yellow> <color>. ë nªn nhiÖm vô trung , nhµ ch¬i ®em muèn sö dông ngµy lÔ roi ph¸o ®¹o cô tíi xua ®uæi 30 tuæi ng­êi . 30 tuæi ng­êi còng cã thÓ sö dông ®¹o cô tiÕn c«ng nhµ ch¬i . c¸c vÞ nh©n sÜ cã thÓ tíi ®©y ghi danh <color=yellow># xua ®uæi 30 tuæi ng­êi <color>. ng­¬i nghÜ tham gia sao ?", getn(tab_Content), tab_Content); 
end; 

function signin_temp() 
Say("# xua ®uæi 30 tuæi ng­êi cøu trî th«n d©n lµ mét cao quý hµnh ®éng , thÓ hiÖn liÔu yªu mÕn ®éng vËt tinh thÇn .", 2,"Ha ha , mau dÉn ta ®· cã '30 tuæi ng­êi ' ®Ých ®Þa ph­¬ng ®i ./signin","Chê mét chót , ta muèn chuÈn bÞ . /no"); 
end; 

-- script viet hoa By http://tranhba.com  giíi thiÖu hµm sè 
function sf07_detail() 
Describe("Mçi lÇn ' xua ®uæi 30 tuæi ng­êi ' ho¹t ®éng ®em ë <color=yellow> 15 phót bªn trong cö hµnh <color>, trong ®ã , cã <color=yellow>5 phót <color> tíi chuÈn bÞ . ghi danh sau , ng­¬i sÏ bÞ ®­a ®Õn chuÈn bÞ khu vùc , khi ho¹t ®éng lóc b¾t ®Çu , ng­¬i sÏ bÞ mang tíi ho¹t ®éng khu vùc . <color=yellow>15 gi©y <color> ho¹t ®éng b¾t ®Çu sau , ë tham gia ng­êi trong , sÏ cã 1 ®Õn 2 ng­êi sÏ hãa th©n lµm ' 30 tuæi ng­êi '. nhµ ch¬i biÕn thµnh '30 tuæi ng­êi ' cÇn ph¸c b¾t <color=yellow> heo rõng <color> xuÊt hiÖn ë khu vùc bªn trong ®Ých . cßn thõa l¹i nhµ ch¬i ®em muèn dïng <color=yellow> ph¸o tr­îng <color> tíi ' xua ®uæi ' 30 tuæi ng­êi , ng¨n trë '30 tuæi ng­êi ' b¾t heo rõng . ho¹t ®éng sau khi kÕt thóc , <color=yellow> nha m«n sai dÞch <color> ®em c¨n cø sö dông <color=yellow> ph¸o tr­îng <color> ®Ých sè l­îng tíi nÐm '30 tuæi ng­êi ' dÉn t­ëng . .", 1,"Ta biÕt ./sf06_mainentrance"); 
end; 

-- script viet hoa By http://tranhba.com  cho t­ëng th­ëng chñ hµm sè 
function sf07_getaward() 
local nCount = GetTask(TK_CO_COUNT_ONETIME); 
local nRank = GetTask(TK_CO_RANK); 

if (nCount == 0 or nRank == 0) then 
Say("Gièng nh­ ng­¬i cßn ch­a ®i ' xua ®uæi 30 tuæi ng­êi '. muèn dÉn t­ëng , nhanh ®i xuÊt lùc ®i ."..CO_ANIMALNAME.." ch¹y ®i .", 0); 
return 
end; 

if (CalcFreeItemCellCount() < 2) then 
Say("Kh«ng ®ñ ®Þa ph­¬ng ®Ó , xin/mêi söa sang l¹i trang bÞ .", 0); 
return 
end; 
SetTask(TK_CO_COUNT_ONETIME, 0); 
SetTask(TK_CO_RANK, 0); 
nRank1 = festival_award_rank(nRank); 
festival_expaward(nRank1); 
festival_goodsaward(nRank1); 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
Say("Ha ha , rÊt tèt . ! míi võa ng­¬i t×m ®­îc <color=yellow>"..nCount.." c¸ <color>"..CO_MOUSENAME..", ®øng hµng thø <color=yellow>"..nRank.."<color>, ®©y lµ ng­¬i ®Ých t­ëng th­ëng , cÇm ®i ®i !", 0) 
else 
Say("Ha ha , lµm h¶o . ng­¬i ®¸nh tróng tæng céng <color=yellow>"..nCount.." lÇn <color>"..CO_ANIMALNAME..", ®øng hµng thø <color=yellow>"..nRank.."<color>, ®©y lµ ng­¬i ®Ých t­ëng th­ëng , cÇm ®i ®i !", 0) 
end; 
end; 

end; -- script viet hoa By http://tranhba.com  end of _H_DIALOG_FESTIVAL2006_H_
