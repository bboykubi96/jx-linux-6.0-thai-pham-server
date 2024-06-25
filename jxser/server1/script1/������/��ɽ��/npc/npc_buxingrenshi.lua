-- script viet hoa By http://tranhba.com  t©y s¬n th«n bÊt tØnh nh©n sÜ ®èi tho¹i ch©n vèn 
-- script viet hoa By http://tranhba.com  lı h©n 2005-01-25 

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\xishancun\\xishancun_head.lua")

COUNT_SHENMI_JUANZHOU = 100; 

function main() 
-- script viet hoa By http://tranhba.com  Uworld1064 = nt_getTask(1064) -- script viet hoa By http://tranhba.com  t©y s¬n th«n t©y s¬n tù nhiÖm vô 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if ( GetLevel() >= 100) then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if ( Uworld1064 == 0 ) then -- script viet hoa By http://tranhba.com  tiÕp nhËn vô tr­íc ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Describe(DescLink_BuXingRenShi.."<#># ®­êng hå l« , ¨n ngon ®­êng hå l« n÷a/råi # tiÖn nghi l¹i ¨n ngon ®­êng hå l« n÷a/råi , vŞ kh¸ch quan kia , xem ng­¬i rÊt l¹ mÆt , kh«ng ph¶i chóng ta t©y s¬n th«n ng­êi cña ®i # tíi chuçi ®­êng hå l« ®i ? <enter>", 
-- script viet hoa By http://tranhba.com  2,"H­íng h¾n dß xĞt t©y s¬n tù ®İch bİ mËt /task002","Cßn lµ tíi chuçi ®­êng hå l« ®i /task001"); 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 1 ) then -- script viet hoa By http://tranhba.com  tiÕp nhËn vô sau ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Describe(DescLink_BuXingRenShi..format("<#>#%d c¸ thÇn bİ quyÓn trôc ng­¬i ®· thu tËp ®ñ sao ? <enter>", COUNT_SHENMI_JUANZHOU), 
-- script viet hoa By http://tranhba.com  2,"§em thÇn bİ quyÓn trôc giao cho bÊt tØnh nh©n sÜ /task004","Ta cßn lµ qu¸ trËn tö l¹i tíi t×m ng­¬i /no") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 >= 2 ) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh nhiÖm vô 
-- script viet hoa By http://tranhba.com  Say("BÊt tØnh nh©n sÜ # ng­¬i ®i t©y s¬n tù sau , nhÊt ®Şnh ph¶i kh¾p n¬i ®Ó ı nha . ",0) 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  else 
Describe(DescLink_BuXingRenShi.."<#>: ®­êng hå l« tiÖn nghi b¸n ! vŞ kh¸ch quan kia nh×n mÆt sinh , kh«ng ph¶i chóng ta t©y s¬n th«n ng­êi cña ®i # tíi chuçi ®­êng hå l« ®i #<enter>", 
1,"Mua ®­êng hå l« /task001"); 
-- script viet hoa By http://tranhba.com  end 

end; 

function task001() 
local name = GetName() 
Talk(1,"",name..": c¸i nµy ®­êng hå l« ¨n ngon thËt !") 
end; 
function task002() 
local name = GetName() 
Describe(DescLink_BuXingRenShi.."<#>: ng­¬i t×m ®Õn ta cã chuyÖn g× kh«ng <enter>" 
..name..format("<#>: ta nghe nãi chung quanh ®©y cã ng­êi biÕt t©y s¬n ®¶o ®İch vŞ trİ . cã thÓ chØ cho ta ®i vi s¬n ®¶o ®İch ph­¬ng ph¸p sao <enter> bÊt tØnh nh©n sÜ # c¸i nµy h¸ cã thÓ lµ trong th«n rÊt nhiÒu ng­êi còng biÕt ®İch , xem ra chuyÖn nµy ®· truyÒn ra giang hå . ®©y lµ mÊy tr¨m n¨m tr­íc chuyÖn , ®¹i hiÖp muèn thu tËp ®ñ % thÇn bİ mËt ®å cho ta ta ®o¸n nghÜ ®Õn khëi <enter>", COUNT_SHENMI_JUANZHOU), 
2,"Tèt , ta lËp tøc ®i t×m /task003","Ta kh«ng cã høng thó /no") 
end; 

function task003() 
Uworld1064 = nt_getTask(1064) 
nt_setTask(1064,1) 
end; 

-- script viet hoa By http://tranhba.com  thÇn bİ quyÓn trôc giao phã giíi mÆt 
function task004() 
GiveItemUI("§ãng mËt ®å tiÕp gi¸p ", format("BÊt tØnh nh©n sÜ # ng­¬i ®Ó %d thÇn bİ mËt ®å t¹i h¹ mÆt ®İch v« İch c¸ch . chó ı # nÕu nh­ ®Ó h¬n víi hoÆc lµ İt h¬n so víi %d thÇn bİ mËt ®å ta ®em kh«ng chÊp nhËn .", COUNT_SHENMI_JUANZHOU,COUNT_SHENMI_JUANZHOU), "juanzhou", "no" ); 
end; 

-- script viet hoa By http://tranhba.com  x¸c ®Şnh thÇn bİ quyÓn trôc sè l­îng hµm sè 
function juanzhou(ncount) 
Uworld1064 = nt_getTask(1064) 
local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==196) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Say("ThÇn bİ mËt ®å kh«ng ®ñ , ng­¬i n÷a kiÓm tra xem mét chót !", 2,"A # nguyªn lai lµ ®Ó sai lÇm råi , ta lÇn n÷a ®Ó ./task004","Ta kiÓm tra nh×n thÕ nµo /no") 
return 
end 
if (scrollcount > COUNT_SHENMI_JUANZHOU) then 
Say(format("Ta chØ cÇn %d thÇn bİ mËt ®å , ng­¬i kh«ng cÇn cho ta nh­ vËy .", COUNT_SHENMI_JUANZHOU), 2,"Nga , nguyªn lai lµ ®Ó sai lÇm råi , ta thö l¹i lÇn n÷a ./task004","Ta kiÓm tra xem mét chót lµ thÕ nµo /no") 
return 
end 
if (scrollcount < COUNT_SHENMI_JUANZHOU) then 
Say("Ng­¬i cho ta thÇn bİ mËt ®å kh«ng ®ñ , n÷a kiÓm tra xem mét chót !", 2,"Nga , nguyªn lai lµ ®Ó sai lÇm råi , ta thö l¹i lÇn n÷a ./task004","Ta kiÓm tra xem mét chót lµ thÕ nµo /no") 
return 
end 
if (scrollcount == COUNT_SHENMI_JUANZHOU) then 
for i = 1, y do 
RemoveItemByIndex(scrollidx[i]) 
end 
nt_setTask(1064,2) 
task005() 
end; 
end; 

function task005() 
local name = GetName() 
Describe(DescLink_BuXingRenShi..format("<#>: thËt kh«ng nghÜ tíi ng­¬i ®· gãp nhÆt %d thÇn bİ mËt ®å , ta mét mùc ®inh ninh ng­¬i c¶m gi¸c khã kh¨n ®Ó l¹i khİ . t©y s¬n ®¶o hÕt søc nguy hiÓm , ng­¬i kh«ng ®i t­¬ng ®èi kh¸ <enter>",COUNT_SHENMI_JUANZHOU) 
..name..format("<#>: kh«ng muèn lo l¾ng cho ta , ta ®· t×m ®­îc %d thÇn bİ mËt ®å liÔu , ta ®­êng ®­êng ®¹i tr­îng phu lµm sao sÏ sî h·i chİnh lµ mét vi s¬n ®¶o . ng­¬i chØ cÇn nãi cho ta biÕt thÕ nµo ®i .<enter> bÊt tØnh nh©n sÜ # ng­¬i cã thÓ ë th«n chóng ta ®İch t©y s¬n t×m tiÓu nhŞ (214, 195) sau ®ã nãi cho h¾n biÕt lµ ta cho ng­¬i biÕt ®i , h¾n th× sÏ biÕt lµm g× liÔu . nhí muèn ngµn v¹n cÈn thËn <enter>",COUNT_SHENMI_JUANZHOU), 
1,"KÕt thóc ®èi tho¹i /no") 
end; 

function no() 
end; 
