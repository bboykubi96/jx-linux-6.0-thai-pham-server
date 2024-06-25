-- script viet hoa By http://tranhba.com  ngµy nhÉn d¹y trî gióp NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " qu©n s­ " 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(210) == 1 then 
allbrother_0801_FindNpcTaskDialog(210) 
return 0; 
end 
UTask_tr = GetTask(4) 

if (UTask_tr < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng nhËn ngµy nhÉn d¹y nhËp m«n nhiÖm vô , kh«ng/ch­a vµo ngµy nhÉn d¹y 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ kh¸c mét m«n ph¸i 
Say("ChØ cÇn kh«ng thiÖp cËp bæn gi¸o c¬ mËt , hái c¸i g× ®Òu ®­îc !", 3,"HiÓu râ quı gi¸o /org","HiÓu râ c¸c vŞ cao thñ /member","HiÓu râ bè côc cña n¬i nµy /config") 
return 
else 
Say("ChØ cÇn kh«ng thiÖp cËp bæn gi¸o c¬ mËt , hái c¸i g× ®Òu ®­îc !", 4,"HiÓu râ quı gi¸o /org","HiÓu râ c¸c vŞ cao thñ /member","HiÓu râ bè côc cña n¬i nµy /config", " lµm sao cã thÓ nhËp m«n ?/task1") 
return 
end 
end; 

if (UTask_tr == 70*256) then -- script viet hoa By http://tranhba.com  ngµy nhÉn d¹y ®· xuÊt s­ 
Say("Ng­¬i kh«ng ph¶i lµ xuÊt s­ sao , cßn cã c¸i g× kh«ng hiÓu ?", 6,"TiÕp tôc mæ ngµy nhÉn d¹y /org","HiÓu râ tr­íc ®İch ®ång m«n /member", " lÇn n÷a hiÓu râ bè côc cña n¬i nµy /config","Cßn cã c¸i g× ph¶i lµm ®İch /task3","HiÓu râ luyÖn c«ng hØ h¶o /map_help","HiÓu râ luyÖn bæn m«n vâ nghÖ /skill_help") 
return 
end; 

Say("Cã chuyÖn g× cø hái .", 7,"Cïng long n¨m ®èi tho¹i /Uworld1000_word","HiÓu râ bæn gi¸o /org","HiÓu râ ®ång m«n /member","HiÓu râ bè côc cña n¬i nµy /config","HiÓu râ nhiÖm vô /task3","HiÓu râ luyÖn c«ng hØ h¶o /map_help","HiÓu râ luyÖn bæn m«n vâ nghÖ /skill_help") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("Cßn muèn biÕt g× n÷a ?", 4,"M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 


function member() 
Say("Muèn biÕt ng­êi nµo ?", 10,"Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 


function config() 
Say("Cßn muèn biÕt g× n÷a ?", 3,"Khu vùc phô cËn /c1","Bªn ngoµi bè côc /c2","Bªn trong bè côc /c3") 
end; 


function task1() 
Say("Bæn m«n chØ lÊy háa hÖ ®Ö tö , kh«ng ph©n biÖt nam n÷ . muèn nhËp m«n häc nghÖ , cÇn hoµn thµnh nhËp m«n nhiÖm vô .", 1,"HiÓu râ nhËp m«n cô thÓ nhiÖm vô /v1") 
end; 


function task2() 
Say("<#> ng­¬i ®· xuÊt s­ , kh«ng cÇn lµm tiÕp bæn gi¸o nhiÖm vô , tr­íc m¾t ®· # "..UTask_tr.."<#>.", 0) 
end; 


function task3() 

UTask_tr = GetTask(4) 

if (UTask_tr > 5*256) and (UTask_tr < 10*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"NhËp m«n nhiÖm vô /v1") 
end; 

if (UTask_tr == 10*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, b©y giê ®· nhËp m«n , kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"ThÊt s¸t ®éng nhiÖm vô /v2") 
end; 

if (UTask_tr > 10*256) and (UTask_tr < 20*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"ThÊt s¸t ®éng nhiÖm vô /v2") 
end; 

if (UTask_tr == 20*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"Th«ng minh ®øa trÎ nhiÖm vô /v3") 
end; 

if (UTask_tr > 20*256) and (UTask_tr < 30*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"Th«ng minh ®øa trÎ nhiÖm vô /v3") 
end; 

if (UTask_tr == 30*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"B¶o th¹ch nhiÖm vô /v4") 
end; 

if (UTask_tr > 30*256) and (UTask_tr < 40*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"B¶o th¹ch nhiÖm vô /v4") 
end; 

if (UTask_tr == 40*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"Hµnh thİch nhiÖm vô /v5") 
end; 

if (UTask_tr > 40*256) and (UTask_tr < 50*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"Hµnh thİch nhiÖm vô /v5") 
end; 

if (UTask_tr == 50*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"Cøu ng­êi nhiÖm vô /v6") 
end; 

if (UTask_tr > 50*256) and (UTask_tr < 60*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"Cøu ng­êi nhiÖm vô /v6") 
end; 

if (UTask_tr == 60*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, kÕ tiÕp cã thÓ tiÕn hµnh :", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tr > 60*256) and (UTask_tr < 70*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tr >= 70*256) and (UTask_tr < 80*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , ®Çu tiªn cÇn th«ng qua hoµn thµnh nhËp m«n nhiÖm vô . sau ®ã theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô . ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô sau lµ ®­îc nghÖ xuÊt s­ . tr­íc m¾t # "..UTask_tr.."<#>, ®ang tiÕn hµnh ®İch nhiÖm vô v× ", 1,"Trë l¹i s­ m«n /v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("Bæn gi¸o ë ®¹i kim thµnh lËp , v× ®èi phã trong chèn vâ l©m nguyªn , bŞ tin/th¬ v× n­íc d¹y , gi¸o chñ hoµn nhan hång liÖt còng lµ ®¹i kim ®İch quèc s­ .", 4,"BiÕt /ok","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o2() 
Say("§©y lµ bæn gi¸o tæng ®µn , ë vµo biÖn kinh phİa ®«ng bİ mËt vŞ trİ .", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o3() 
Say("Bæn gi¸o ®İch bèi c¶nh ch¸nh trŞ rÊt phøc t¹p , môc ®İch lµ trî gióp kim quèc xu«i nam diÖt tèng , võa th«ng suèt thiªn h¹ ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o4() 
Say("Bæn gi¸o thay v× bän hä ph¸i lín nhÊt sù kh¸c biÖt lµ # bæn gi¸o bëi v× chİnh trŞ môc ®İch mµ thµnh lËp . gia nhËp bæn gi¸o ng­êi cña kh«ng ph¶i lµ v× häc nghÖ , mµ lµ bëi v× chİnh trŞ , nh÷ng ng­êi nµy ë ®©y bæn gi¸o ®İch ®Şa vŞ rÊt cao . bæn gi¸o h×nh thøc nghiªm mËt , ®ãng quy nghiªm cÈn , ®èi víi ph¶n ®å ®em nghiªm trŞ kh«ng tha .", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>215,195<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter> kim quèc quèc s­ , mét ®êi kiªu hïng , nhiÒu m­u ch©n trİ , nh­ng lµ , ng¹o m¹n v« cïng .", 10,"BiÕt /ok","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m2() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>225,199<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, v¨n vâ song toµn , phong l­u thİch th¶ng , nöa ch¸nh nöa tµ ", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m3() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>207,189<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, gian tr¸ gi¶o ho¹t , kh«ng chõa thñ ®o¹n nµo ®¹t môc ®İch ", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m4() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>213,201<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, kim quèc ThÊt c«ng chóa , v¨n vâ song toµn , th«ng minh lanh lîi , gia nhËp ngµy nhÉn d¹y lµ v× gi¸m thŞ hoµn nhan hång liÖt !", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m5() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>205,197<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, tİnh t×nh nãng n¶y , trùc tû sè !", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m6() 
Say("VŞ trİ <color=blue> qu¶ng tr­êng <color> täa ®é : <color=blue>200,198<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, vâ nghÖ cao c­êng , cã lóc ®Ó cho ®ång m«n dë khãc dë c­êi ", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m7() 
Say("VŞ trİ <color=blue> tiÕn vµo mËt thÊt ®­êng <color> täa ®é : <color=blue>207,195<color> phô tr¸ch : <color=blue> nhiÖm vô color><enter>, mét b×nh th­êng ®Ö tö , kh«ng cã xuÊt s¾c biÓu hiÖn ", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Trong th¸p må h«i /m8","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m8() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>207,199<color> phô tr¸ch : <color=blue> giao dŞch binh khİ color>", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Vò ®Şch /m9","Kú h÷u /m10") 
end; 

function m9() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>208,198<color> phô tr¸ch : <color=blue> giao dŞch trang bŞ color>", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Kú h÷u /m10") 
end; 

function m10() 
Say("VŞ trİ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> täa ®é : <color=blue>210,198<color> phô tr¸ch : <color=blue> giao dŞch thuèc men <color>", 10,"BiÕt /ok","Gi¸o chñ hoµn nhan hång liÖt /m1","T¶ hé ph¸p ®oan méc duÖ /m2","H÷u hé ph¸p còng luËt İch c¸ch /m3","Phong ®­êng ®­êng chñ hoµn nhan tuyÕt y /m4", " löa ®­êng ®­êng chñ ngét ngao /m5","NhËt nguyÖt ®µn chñ « hîp t¸t /m6","Ngµy nhÉn tö sÜ /m7","Trong th¸p må h«i /m8","Vò ®Şch /m9") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("H­íng nam chİnh lµ biÖn kinh ", 3,"BiÕt /ok","Bªn ngoµi bè côc /c2","Bªn trong bè côc /c3") 
end; 

function c2() 
Say("Qu¶ng tr­êng cã ra vµo mËt thÊt ®İch ®­êng ", 3,"BiÕt /ok","Khu vùc phô cËn /c1","Bªn trong bè côc /c3") 
end; 

function c3() 
Say("MËt thÊt cã 3 tÇng , tÇng thø nhÊt cã nói ®éng , tÇng thø hai cã thÊt s¸t ®éng (190,190) ; tÇng thø ba cã th¸nh ®éng (218,192) . tæng ®µn ë vµo tÇng thø ba .", 3,"BiÕt /ok","Khu vùc phô cËn /c1","Bªn ngoµi bè côc /c2") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(4, "","Th«ng qua hoµn thµnh nhiÖm vô , ng­¬i cã thÓ gia nhËp ngµy nhÉn d¹y , trë thµnh <color=blue> s¸t thñ color>, häc ®­îc vâ c«ng <color=blue> tµn d­¬ng nh­ m¸u <color>.<enter> tiÕp nhËn vô , cÇn ®¹t tíi 10 cÊp bËc : kh«ng lµm nh÷ng kh¸c bÊt kú m«n ph¸i nµo ®İch nhËp m«n nhiÖm vô ","B­íc ®Çu tiªn : ®Õn <color=blue> tiÕn vµo mËt thÊt ®İch ®­êng tiÕn vµo mËt thÊt <color> thÊy <color=blue> ngµy nhÉn tö sÜ color>. tiÕp nhËn vô , ®Õn <color=blue> Hoa S¬n <color> ë <color=red> Vò v­¬ng kiÕm <color>.","B­íc thø hai : ®Õn <color=blue> Hoa S¬n <color> ®¸nh b¹i <color=blue> ®¹i ho¸n hïng , ®¹i heo rõng color> hoÆc lµ <color=blue> ®¹i con nhİm color> ®em ®¹t ®­îc <color=red> Vò v­¬ng kiÕm <color>.","B­íc thø ba : trë vÒ ngµy nhÉn d¹y , giao <color=red> Vò v­¬ng kiÕm <color> cho <color=blue> ngµy nhÉn tö sÜ color>, nhiÖm vô hoµn thµnh , nÕu nh­ h¾n Vò v­¬ng kiÕm mÊt , cÇn b¾t ®Çu l¹i tõ ®Çu nhiÖm vô !") 
end; 


function v2() 
Talk(4, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue> v« ¶nh s¸t thñ color>, häc ®­îc vâ c«ng <color=blue> ngµy nhÉn ®ao ph¸p , ngµy nhÉn m©u ph¸p , háa liªn ®èt löa <color>.<enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 10 cÊp trë lªn ","B­íc ®Çu tiªn : ®Õn <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> thÊy <color=blue> löa ®­êng ®­êng chñ ngét ngao <color>. tiÕp nhËn vô , tiÕn vµo <color=blue> thÊt s¸t ®éng <color> cÇm <color=red>3 tÊm lÖnh bµi <color>.","B­íc thø hai : ®Õn tÇng thø hai , tiÕn vµo <color=blue> thÊt s¸t ®éng <color>, ®¸nh b¹i <color=blue>7 tö tï color> ®em ®¹t ®­îc <color=red>3 tÊm lÖnh bµi <color>.","B­íc thø ba : trë vÒ <color=blue> tÇng thø ba <color> ®ãng <color=red> lÖnh bµi <color> cho <color=blue> löa ®­êng ®­êng chñ ngét ngao <color>, nhiÖm vô hoµn thµnh . ") 
end; 


function v3() 
Talk(5, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue>T?S?<color>, häc ®­îc vâ c«ng <color=blue> ¶o ¶nh bay hå color>.<enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 20 cÊp cïng hoµn thµnh nhiÖm vô thÊt s¸t lµm .","B­íc ®Çu tiªn : ®Õn <color=blue> qu¶ng tr­êng <color> thÊy <color=blue> nhËt nguyÖt ®µn chñ « hîp t¸t <color>, tiÕp nhËn vô , tr¶ lêi vÊn ®Ò , ®i t×m <color=blue> nam hµi <color> cÇm trë vÒ <color=red> nhËt nguyÖt song ®æi phiªn <color>","B­íc thø hai : ®Õn phİa ®«ng rõng c©y t×m <color=blue> nam hµi (213,203)<color>, tr¶ lêi chİnh x¸c mª ng÷ , l¹i tiÕp nhËn vô ®i t×m <color=red> tiÓu Hoµng chã <color> v?<color=red> tiÓu bôi l­ color>","B­íc thø ba : ®Õn phİa t©y rõng c©y t×m ®­îc <color=red> tiÓu Hoµng chã (210,191)<color> cïng <color=red> tiÓu bôi l­ (196,195)<color>, giao cho <color=blue> nam hµi <color> ®æi lÊy <color=red> nhËt nguyÖt song ®æi phiªn <color>.","Thø 4 b­íc : trë vÒ ®ãng <color=red> nhËt nguyÖt song ®æi phiªn <color> cho <color=blue « hîp t¸t <color>, nhiÖm vô hoµn thµnh . nÕu nh­ nhËt nguyÖt song ®æi phiªn mÊt , cÇn b¾t ®Çu l¹i tõ ®Çu nhiÖm vô !") 
end; 


function v4() 
Talk(5, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue> u minh tö sÜ color>, häc ®­îc vâ c«ng <color=blue> liÖt háa t×nh thiªn , ®Èy s¬n ®iÒn h¶i , bay hång v« cùc <color>.<enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 30 cÊp cïng hoµn thµnh th«ng minh ®øa trÎ nhiÖm vô .","B­íc ®Çu tiªn : ®Õn <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> thÊy <color=blue> löa ®­êng ®­êng chñ hoµn nhan tuyÕt y <color>. tiÕp nhËn vô ®Õn <color=blue> tÇn l¨ng <color> t×m lo¹i b¶o th¹ch : <color=red> c¸p m¸u ®á , b¨ng tinh lam , tæ mÉu xanh biÕc , v©n méng tö color>.","B­íc thø hai : ®Õn <color=blue> tÇn l¨ng <color>, ®¸nh b¹i <color=blue> ®¹o b¶o tÆc <color>, ®em ®¹t ®­îc 3 khèi : <color=red> c¸p m¸u ®á , b¨ng tinh lam , tæ mÉu xanh biÕc <color>.","B­íc thø ba : ®i tÇn l¨ng bªn ngoµi t×m mét <color=blue> n«ng phu (296,158)<color>, ®em mua ®­îc <color=red> v©n méng tö color>.","Thø 4 b­íc : trë vÒ <color=blue> ngµy nhÉn d¹y tÇng thø ba <color>, ®ãng bèn lo¹i b¶o th¹ch cho <color=blue> hoµn nhan tuyÕt y <color>, nhiÖm vô hoµn thµnh . ") 
end; 


function v5() 
Talk(4, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue> ch­ëng kú khiÕn cho color>, häc ®­îc vâ c«ng <color=blue> bi t« giã m¸t <color>.<enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 40 cÊp cïng hoµn thµnh b¶o th¹ch nhiÖm vô .","B­íc ®Çu tiªn : ®Õn <color=blue> tÇng thø ba <color> thÊy <color=blue> H÷u hé ph¸p còng luËt İch c¸ch <color>. tiÕp nhËn vô ®Õn <color=blue> ( kiÕm c¸c thôc ®¹o ) ngåi v©n ®éng <color> ¸m s¸t gi¸n ®iÖp <color=blue> liªu kú color>.","B­íc thø hai : ®Õn <color=blue> ngåi v©n ®éng <color> ®¸nh b¹i <color=blue> liªu kú color> b¾t ®­îc mét bøc <color=red> ngµy nhÉn bİ th­ color>.","B­íc thø ba : trë vÒ <color=blue> tÇng thø ba <color> ®ãng <color=red> ngµy nhÉn bİ th­ color> cho <color=blue> còng luËt İch c¸ch <color>, nhiÖm vô hoµn thµnh . nÕu nh­ ngµy nhÉn bİ th­ mÊt , cÇn lÇn n÷a b¾t ®Çu nhiÖm vô !") 
end; 


function v6() 
Talk(6, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue> hé gi¸o khiÕn cho color>, häc ®­îc vâ c«ng <color=blue> lùc ma ®o¹t hån <color>.<enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 50 cÊp cïng hoµn thµnh hµnh thİch nhiÖm vô .","B­íc ®Çu tiªn : ®Õn <color=blue> tÇng thø ba <color> thÊy <color=blue> T¶ hé ph¸p ®oan méc duÖ color>. tiÕp nhËn vô ®Õn <color=blue> biÖn kinh thiÕt th¸p <color> cøu ph­îng hÊp nh­ ","B­íc thø hai : ®Õn <color=blue> thiÕt th¸p tÇng thø nhÊt <color>, ®¸nh b¹i <color=blue> ®ao binh ®éi tr­ëng , th­¬ng binh ®éi tr­ëng <color> hoÆc lµ <color=blue> cung binh ®éi tr­ëng <color> ®em ®¹t ®­îc <color=red> c¸i ch×a khãa <color>, më ra <color=blue> tÇng thø nhÊt ®İch b¶o r­¬ng <color>, më ra <color=blue> thø nhÊt c¬ quan <color>.","B­íc thø ba : ®Õn <color=blue> thiÕt th¸p tÇng thø hai <color>, ®¸nh b¹i <color=blue> ®ao binh thèng lÜnh <color> hoÆc lµ <color=blue> cung binh thèng lÜnh <color> ®em ®¹t ®­îc <color=red> c¸i ch×a khãa <color>, ®iÓm kİch <color=blue> tÇng thø hai ®İch b¶o r­¬ng <color>, më ra <color=blue> thø hai c¬ quan <color>.","Thø 4 b­íc : ®Õn <color=blue> thiÕt th¸p tÇng thø ba <color>, ®¸nh b¹i <color=blue> Tæng binh <color> b¾t ®­îc <color=red> c¸i ch×a khãa <color>, ®iÓm kİch <color=blue> tÇng thø ba b¶o r­¬ng <color>, më ra <color=blue> ng­êi thø ba c¬ quan <color> cøu ®­îc ph­îng hÊp nh­ ","Thø 5 b­íc : trë vÒ <color=blue> ngµy nhÉn d¹y <color>, thÊy <color=blue> ®oan méc duÖ color> phôc mÖnh , nhiÖm vô hoµn thµnh . ") 
end; 


function v7() 
Talk(10, "","Hoµn thµnh nhiÖm vô sau , bŞ ®ãng cöa v× <color=blue> t¸t m·n ph¸p v­¬ng <color>, thuËn lîi xuÊt s­ <enter> nhËn nªn nhiÖm vô cÇn ®¹t tíi 50 cÊp cïng hoµn thµnh cøu ng­êi nhiÖm vô .","B­íc ®Çu tiªn : ®Õn <color=blue> tÇng thø ba <color> thÊy <color=blue> gi¸o chñ hoµn nhan hång liÖt <color>. tiÕp nhËn vô , ®i t×m <color=red>5 ®em ®o¹n kiÕm <color>, ®Õn <color=blue> ngµy nhÉn th¸nh ®éng <color> cÇm trë vÒ <color=red> da dª s¸ch color>.","B­íc thø hai : ®Õn <color=blue> biÖn kinh <color> t×m <color=red>5 ®em ®o¹n kiÕm <color>:<enter> thanh thø nhÊt # ®Õn thî rÌn chç thÊy <color=blue> khóc thiÕt gièng nh­ 218,190?<color>, tiÕp nhËn vô mang <color=red> ng©n tr©m <color> cho Tr­¬ng qu¶ phô , ®Õn phİa ®«ng t×m <color=blue> Tr­¬ng qu¶ phô 213,199?<color>, ®ãng ng©n tr©m , ®¹t ®­îc <color=red> h­¬ng nang <color>. ®ãng h­¬ng nang cho khóc thiÕt gièng nh­ , ®¹t ®­îc <color=red># giÊu ngµy ®o¹n kiÕm <color>.","Thø hai ®em : ®Õn <color=blue> b¾c m«n <color> t×m <color=blue> t«n tó tµi (229,184)<color>, tr¶ lêi chİnh x¸c mª ng÷ ®em ®¹t ®­îc <color=red># ®o¹n n­íc ®o¹n kiÕm '<color>.","Thø ba ®em : ®Õn <color=blue> sßng b¹c <color> t×m <color=blue> ®¸nh cuéc ®å (201,194)<color>, mua ®­îc <color=red># chuyÓn hån ®o¹n kiÕm '<color>.","Thø t­ ®em : ®Õn <color=blue> ®«ng b¾c bªn <color> t×m <color=blue> ®«ng mai (230,190)<color>, tiÕp nhËn vô trî gióp nµng t×m tiÓu H¶i . ®Õn <color=blue> qu¶ng tr­êng <color> t×m ®­îc <color=blue> tiÓu H¶i (220,192)<color>, khuyªn h¾n vÒ nhµ , ®¹t ®­îc <color=red># ®i bªn tr¸i ®o¹n kiÕm <color>.","Thø n¨m ®em : ®Õn <color=blue> t­íng qu©n tù color> t×m <color=blue># tªn khÊt c¸i (210,187)<color>, liªn tôc bè thİ 3 lÇn ®em ®¹t ®­îc <color=red># diÖt hån ®o¹n kiÕm ' <color>.","B­íc thø ba : trë vÒ ngµy nhÉn d¹y , tiÕn vµo <color=blue> th¸nh ®éng tÇng thø nhÊt <color>, ®¸nh b¹i 4 c¸ <color=blue> r¾n ®éc tinh , con nhÖn tinh , h¹t tö tinh , con bß c¹p v­¬ng <color>, theo thø tù ®¹t ®­îc <color=blue> thiªn ®Şa huyÒn hoµng # thÇn tóc nhãm tê # giang hå x· t¾c # duy ta d¹y v­¬ng khÈu quyÕt <color>, tiÕp tôc ®Õn thø 2 tÇng ","Thø 4 b­íc : tiÕn vµo <color=blue> th¸nh ®éng tÇng thø hai <color>, ®¸nh b¹i <color=blue> con bß c¹p v­¬ng <color> ®em ®¹t ®­îc <color=red> c¸i ch×a khãa <color>, ®iÓm kİch <color=blue> b¶o r­¬ng (233,197)<color> ®em ®¹t ®­îc <color=red> da dª s¸ch color>.","Thø 5 b­íc : ®ãng <color=red> da dª s¸ch color> cho <color=blue> hoµn nhan hång liÖt <color>, nhiÖm vô hoµn thµnh . nÕu nh­ da dª s¸ch mÊt , cÇn lÇn n÷a b¾t ®Çu nhiÖm vô !") 
end; 

function v8() 
Talk(3,"","Th«ng qua trë l¹i s­ m«n , bŞ ®ãng cöa v× <color=blue> th¸nh gi¸o tr­ëng l·o <color>, häc ®­îc trÊn ph¸i tuyÖt häc <color=blue> thiªn ma gi¶i thÓ , th©u thiªn ho¸n nhËt vâ c«ng , ma diÔm thÊt s¸t <color>.","B­íc ®Çu tiªn : ®¹t tíi 60 cÊp sau , ®Õn <color=blue> ngµy nhÉn d¹y tÇng thø ba <color> thÊy <color=blue> gi¸o chñ color>, th©n thØnh trë l¹i ngµy nhÉn d¹y .","B­íc thø hai : ®­a cho m«n ph¸i <color=red>50000 ng©n l­îng <color> trë l¹i ngµy nhÉn d¹y .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
