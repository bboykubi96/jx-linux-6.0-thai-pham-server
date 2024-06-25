-- Tham cuu ba lang huyen edit by mcteam
-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 10 trÇm chİn ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # a ph­¬ng ®İch g¶ trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  chó ı # ViÖt Nam chØ cã mét lo¹i nguyªn b¶o , t­¬ng ®­¬ng víi chóng ta ng©n nguyªn b¶o , tªn gäi kim nguyªn b¶o , ngµn v¹n chó ı , biªn sè dïng 343 
Include("\\script\\global\\g7vn\\g7configall.lua")

function main()

--dofile("script/Á½ºşÇø/°ÍÁêÏØ/npc/°ÍÁêÏØ_Â·ÈË10ÉÌÈË¶Ô»°.lua");
--dofile("script/global/g7vn/g7configall.lua")

UTask_world20 = GetTask(48) 
if (CheckStoreBoxState(1) == 0 and UTask_world20 == 1) then -- script viet hoa By http://tranhba.com  phï hîp mua c¸i r­¬ng ®İch ®iÒu kiÖn , cho phĞp mua phô thªm tr÷ vËt r­¬ng 

if(morongruongthamcuu == 0) then
Say("Më réng r­¬ng t¹m thêi ch­a më.")
return 1;
end

Say("ThÈm cöu # gÇn nhÊt liÒn tõ ®¹i thùc n­íc vµo mét nhãm thÇn kú b¶o r­¬ng , ch¼ng nh÷ng cã thÓ ®Ó cho ng­¬i ë du lŞch giang hå lóc cÊt gi÷ nhiÒu h¬n vËt phÈm , cßn cã thÓ v× ng­¬i cung cÊp vËt phÈm phong táa b¶o vÖ . toµn Trung Nguyªn chØ nµy mét nhµ , tuyÖt kh«ng ph©n hµo . kh«ng muèn kh«ng nªn nh×n nh×n ? ",4,"Xem mét chót /buy_addibox","Muèn hái th¨m ng­¬i mét c¸i /task_ring","Liªn quan tíi ph¸t triÓn r­¬ng /box_help","Kh«ng cã høng thó /no") 
elseif (UTask_world20 == 1) then 
task_ring() 
elseif (CheckStoreBoxState(1) == 0) then 

if(morongruongthamcuu == 0) then
Say("T¹m thêi ch­a më.")
return 1;
end

Say("ThÈm cöu # gÇn nhÊt liÒn tõ ®¹i thùc n­íc vµo mét nhãm thÇn kú b¶o r­¬ng , ch¼ng nh÷ng cã thÓ ®Ó cho ng­¬i ë du lŞch giang hå lóc cÊt gi÷ nhiÒu h¬n vËt phÈm , cßn cã thÓ v× ng­¬i cung cÊp vËt phÈm phong táa b¶o vÖ . toµn Trung Nguyªn chØ nµy mét nhµ , tuyÖt kh«ng ph©n hµo . kh«ng muèn kh«ng nªn nh×n nh×n ? ",3,"Xem mét chót /buy_addibox", "Liªn quan tíi ph¸t triÓn r­¬ng /box_help","Kh«ng cã høng thó /no") 
else 

other_chat() 
end 
end; 

function task_ring() 
UTask_world20 = GetTask(48); 
if (UTask_world20 == 1) then 
Say("ThÈm cöu # ng­¬i cÊp cho c« n­¬ng nhµ mua g¶ trang nha , ta ®©y mµ ®İch hµng cßn d­ l¹i ®İch kh«ng nhiÒu l¾m , ®©y ®èi víi thuÇn kim ®İch vßng tai liÒn tiÖn nghi ®iÓm cho ngµi l©u , chØ cÇn v¨n ng©n hai tr¨m l­îng ",2,"Mua /yes","T¸n gÉu /other_chat","Kh tÇn g mua/no") 
end 
end 

function other_chat() 
Talk(3,"","ThÈm cöu # ta lµ tõ Tø Xuyªn tíi , däc theo con ®­êng nµy ®¹o phØ rÊt nhiÒu , rÊt kh«ng yªn æn . ","Còng kh«ng nghÜ ®Õn kÓ tõ vµo §éng ®×nh hå khu , liÒn n÷a kh«ng cã gÆp gì c¸i g× c­êng ®¹o tÆc nh©n , ng­¬i nãi cã kú qu¸i hay kh«ng ? ","Sau khi nghe ngãng , míi biÕt th× ra lµ n¬i nµy ch©n chİnh qu¶n sù ®İch kh«ng ph¶i lµ quan phñ , mµ lµ mét ng­êi tªn lµ c¸i g× “ Thiªn v­¬ng gióp ” ®İch tæ chøc , khã tr¸ch cã thÓ nh­ vËy th¸i b×nh ®©y #") 
end 

function yes() 
if(GetCash() >= 200)then 
Talk(1,"","ThÈm cöu # vßng tai ®· cho ng­¬i gãi kü liÔu , hµng kho¶n hai cËt , ng­¬i cÇm ch¾c . ") 
Pay(200); 
AddEventItem(181); 
Msg2Player("Ng­¬i lÊy ®­îc mét ®«i vßng tai "); 
AddNote("Ng­¬i lÊy ®­îc mét ®«i vßng tai ") 
-- script viet hoa By http://tranhba.com  SetTask(48, 2); 
else 
Talk(1,"","ThÈm cöu # ngµi tiÒn trªn ng­êi kh«ng ®ñ , quyªn gãp ®ñ tiÒn trë l¹i ®i . ") 
end 
end; 

function buy_addibox() 
local szMsg = 
{ 
"ThÈm cöu # gÇn nhÊt míi tõ ®¹i thùc n­íc vµo mét nhãm thÇn kú b¶o r­¬ng , ch¼ng nh÷ng cã thÓ ®Ó cho ng­¬i ë du lŞch giang hå lóc cÊt gi÷ cµng nhiÒu h¬n vËt phÈm , cßn cã thÓ v× ng­¬i cung cÊp vËt phÈm phong táa b¶o vÖ . toµn Trung Nguyªn chØ nµy mét nhµ , tuyÖt kh«ng ph©n hµo . cã muèn nh×n mét chót hay kh«ng ? ", -- script viet hoa By http://tranhba.com 1 
"400 ®ång tiÒn mua ph¸t triÓn r­¬ng /#buy_addibox_yes(400)", -- script viet hoa By http://tranhba.com 2 
--"200 ®ång tiÒn mua ph¸t triÓn r­¬ng /#buy_addibox_yes(200)", -- script viet hoa By http://tranhba.com 3 
"400 v¹n l­îng mua ph¸t triÓn r­¬ng /#buy_addibox_yes(400)", -- script viet hoa By http://tranhba.com 3 
"Ta kh«ng cã høng thó /no", -- script viet hoa By http://tranhba.com 4 
}; 

local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate >= 20080202 and nDate <= 20080302) then -- script viet hoa By http://tranhba.com  mïa xu©n ho¹t ®éng trong lóc bªn trong 
Say(szMsg[1], 2, szMsg[3], szMsg[4]); 
else 
-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
-- script viet hoa By http://tranhba.com Say(szMsg[1], 2, szMsg[2], szMsg[4]); 
Say(szMsg[1], 2, szMsg[3], szMsg[4]); 
end; 

end 

function buy_addibox_yes(nNedCount) 
if (nNedCount < 1 or nNedCount == nil) then 
print("Fail!!!!"); 
return 
end; 

--local nCount = CalcEquiproomItemCount(4, 417, 1, 1) 

--if (nCount < nNedCount) then 
if GetCash() < 4000000 then
Talk(1,"","Ngµi tiÒn trªn ng­êi kh«ng ®ñ 400 v¹n , quyªn gãp ®ñ tiÒn trë l¹i ®i .") 
return 1; 
end 
--ConsumeEquiproomItem(nNedCount, 4, 417, 1, 1) 

--WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName()..format("]: tèn hao %d ®ång tiÒn , lÊy ®­îc 1 c¸ ph¸t triÓn r­¬ng .",nNedCount),-2,0,0,0); 
OpenStoreBox(1) 

Pay(4000000)
--UseSilver(1, 2, nNedCount); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o ®æi v× ®ång tiÒn ®İch tiªu hao thèng kª ( trùc tiÕp tiªu hao nguyªn b¶o ng©n phiÕu , cïng ®ång tiÒn ®æi chê cïng xö lı ) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 

Talk(1,"","Mua ph¸t triÓn r­¬ng thµnh c«ng , ®ång thêi ®¹t ®­îc <color=yellow> trang bŞ trãi ®Şnh <color> chøc n¨ng #") 
Msg2SubWorld("§¹i hiÖp <color=white>"..GetName().."<color> ®· ®­îc tr÷ vËt r­¬ng thiÕt trİ <color=green>ph¸t triÓn r­¬ng<color> ®İch míi b¾t ®Çu mËt m· .") 
end 


function box_help() 
str= 
{ 
"<#>ThÈm cöu # mét vai trß chØ cã thÓ mua mét ph¸t triÓn r­¬ng . ph¸t triÓn r­¬ng cã thÓ lÊy cung cÊp ng­¬i chung th©n sö dông , lín nhá v× 60 c¸ch , cã thÓ cïng nguyªn cã tr÷ vËt r­¬ng gièng nhau , ch¼ng qua lµ kh«ng thÓ cÊt gi÷ kim tiÒn . ", 
"<#> mua ph¸t triÓn vÒ phİa sau , ng­¬i cßn cã thÓ lÊy ®­îc mét mËt m· khãa , dïng cho nguyªn cã tr÷ vËt r­¬ng # ph¸t triÓn r­¬ng cïng trªn ng­êi trang bŞ ®İch phong táa b¶o vÖ . ", 
"<#> phong táa ë thiÕt ®Şnh mËt m· sau míi cã thÓ t¹o t¸c dông . khi xö vu phong táa tr¹ng th¸i lóc , trªn ng­êi trang bŞ kh«ng thÓ mÆc th­îng hoÆc th¸o xuèng , nh­ng sÏ kh«ng ¶nh h­ëng nguyªn cã c«ng cã thÓ # nh­ PK trŞ gi¸ qu¸ cao lóc vÉn sÏ r¬i trªn ng­êi trang bŞ # . ", 
"<#> liªn quan tíi thiÕt ®Şnh mËt m· # ®iÓm kİch tr÷ vËt r­¬ng giíi mÆt ®İch <color=yellow> thiÕt ®Şnh mËt m· <color> lu«n lu«n , b¾n ra tiÓu bµn gâ , phİa trªn cã 0-9 h¼n 10 c¸ con sè . ", 
"<#> lÇn ®Çu thiÕt trİ mËt m· , ®iÓm kİch nªn h¹ng lµ v× thiÕt ®Şnh kú míi b¾t ®Çu mËt m· # nÕu ®· thiÕt trİ qu¸ mËt m· , ®iÓm kİch nªn h¹ng lµ v× söa ®æi mËt m· . ", 
"<#> söa ®æi mËt m· tr­íc , cÇn tr­íc ®­a vµo cùu mËt m· , n÷a ®­a vµo hai lÇn míi thiÕt mËt m· , míi cã thÓ x¸c ®Şnh söa ®æi mËt m· thµnh c«ng . mËt m· chiÒu dµi İt nhÊt lµ 1 con sè ch÷ , dµi nhÊt v× 9 vŞ . ", 
}; 
Talk(6,"",str[1],str[2], str[3], str[4], str[5], str[6]); 
end 


function no() 
end; 
