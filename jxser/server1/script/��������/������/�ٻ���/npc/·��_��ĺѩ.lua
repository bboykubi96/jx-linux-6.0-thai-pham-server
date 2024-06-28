-- script viet hoa By http://tranhba.com  thóy khãi cöa hµ mé tuyÕt 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 
-- script viet hoa By http://tranhba.com  update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  update by xiaoyang (2004\4\20) 

Include("\\script\\global\\skills_table.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(5) == 1 then 
allbrother_0801_FindNpcTaskDialog(5) 
return 0; 
end 
UTask_cy = GetTask(6) 
Uworld121 = GetTask(121) 
if (GetSeries() == 2) and (GetFaction() == "cuiyan") then 
		if (UTask_cy == 30*256+40) and (HaveItem(2) == 1) and (HaveItem(3) == 1) and (HaveItem(4) == 1) then
L30_prise() 
elseif ((UTask_cy == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 cÊp nhiÖm vô khëi ®éng 
Talk(1,"L30_get","Tr­íc ®©y kh«ng l©u ta c¬ duyªn x¶o hîp , lÊy ®­îc mét lo¹i gäi lµ “ vò y nghª th­êng ” ®Ých trµ hoa ®Ých mÇm mãng , lo¹i trµ nµy hoa phÈm lo¹i hÕt søc tr©n quý , båi dôc ®øng lªn còng hÕt søc khã kh¨n . nÕu nh­ kh«ng cã n¾m gi÷ bÝ quyÕt , lµ rÊt khã thµnh c«ng ®Ých , ta b©y giê ®ang ph¹m sÇu ®©y ! ") 
elseif (UTask_cy > 30*256) and (UTask_cy < 40*256) then 
Talk(1,"","ThÕ nµo ? «ng néi ta ®· nãi cho ng­¬i biÕt lo¹i ' vò y nghª th­êng ' ®Ých ph­¬ng ph¸p ?") 
elseif (UTask_cy >= 40*256) then 
Talk(1,"","Vò y nghª th­êng hoa në rÊt nhanh , ®Òu lµ sau cïng nhau nh×n trµ hoa ") 
else 
Talk(1,"","Gia gia h¾n còng thÝch xem trµ hoa sao ?") 
end 
elseif(Uworld121 == 10) and (HaveItem(373) == 1) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhiÖm vô cã hay kh«ng khëi ®éng cïng víi trong tói ®eo l­ng thêi ®iÓm cã chu tiÓu tuyÒn c©y kÐo 
Talk(8,"Uworld121_lose","Hµ tiªn tö # n¬i nµy cã mét thanh tê tiÓu tuyÒn c©y kÐo ","C¸m ¬n #","Kh«ng kh¸ch khÝ # cã thÓ thÊy tiªn tö ®Ých dung m¹o lµ cña ta vinh h¹nh .","( ng­¬i cßn ph¶i nãi tiÕp , nh×n thÊy mé tuyÕt cÇm kÐo lªn , gièng nh­ v©n tó mét d¹ng kÐo liÔu mÊy lÇn )","Hµ c« n­¬ng # ng­¬i lµm c¸i g× ? ","Ta vµ ng­¬i l¹i kh«ng quen biÕt , ng­¬i xa nh­ vËy véi tíi ta ®­a c©y kÐo , lµ h¾n cã ®óng hay kh«ng ? ","H¾n lµ ai ?","…… cã thÓ gióp mé tuyÕt mét chuyÖn sao ?") 
elseif(Uworld121 == 10 ) then -- script viet hoa By http://tranhba.com  nÕu nh­ ®ãn nhËn nhiÖm vô nh­ng kh«ng cã nhiÖm vô ®¹o cô c©y kÐo 
Talk(1,"","C¸i thanh nµy c©y kÐo lµ ta khæ cùc cÇu xin tê tiÓu tuyÒn s­ b¸ lµm , ng­¬i xem mét chót cã thÓ hay kh«ng t×m ®­îc chç ë cña h¾n ?.") 
elseif (Uworld121 == 20) and (HaveItem(10) == 0) then -- script viet hoa By http://tranhba.com  tãc mÊt 
AddEventItem(10) 
Msg2Player(" l¹i t×m ®­îc mét to¸t tãc ") 
Talk(1,"","Quªn dÉn ®Çu ph¸t .") 
elseif (Uworld121 >= 20) and (Uworld121 < 30) then -- script viet hoa By http://tranhba.com  ®ang cïng d­¬ng hå ®èi tho¹i tr­íc 
Talk(1,"","Mêi/xin ng­¬i truyÒn lêi cho mé tuyÕt . ®a t¹ ") 
elseif(Uworld121 == 30) then 
Talk(8,"Uworld121_Step4","Hµ c« n­¬ng # kh«ng nªn nãi n÷a , ta biÕt .","Hµ c« n­¬ng ng­¬i hiÓu lÇm , C«n L«n ý ®å b¸ v­¬ng , d­¬ng hå lµ ph¶i ®îi tÊt c¶ mäi chuyÖn kÕt thóc trë/mang lªn thóy khãi gÆp ng­¬i .","H¾n thËt ®¸p øng yªu cÇu cña ta liÔu sao ?","..... chuyÖn nµy h¾n sÏ kh«ng nãi .","Ha ha ha # hµ mé tuyÕt a hµ mé tuyÕt , ng­¬i thÕ nµo nh­ vËy ng©y th¬ a ?","Hµ c« n­¬ng .....","H¾n xuÊt th©n lµ cßn kh«ng cã ta ®©y , cã ta lµ h¾n ®· giµ råi !.....") 
elseif(Uworld121 == 40) and (HaveItem(376) == 0) then 
Talk(1,"","Kh«ng cã cÇm tó quyªn , kh©u anh nhÊt ®Þnh sÏ kh«ng hµi lßng .") 
AddEventItem(376) 
Msg2Player("§o¹t tíi tó quyªn . ") 
else 
Talk(1,"","Ta m¬ ­íc lín nhÊt chÝnh lµ trång ra thiªn h¹ ®Ñp nhÊt ®Ých trµ hoa ") 
end 
end; 

function L30_get() 
Say("Nghe nãi thµnh §¹i Lý cã mét hä §oµn ®Ých hoa n«ng , lµ lo¹i trµ hoa ®Ých n¨ng thñ , nh­ng lµ h¾n tÝnh t×nh cæ qu¸i , rÊt nhiÒu ng­êi thØnh gi¸o h¾n còng kh«ng cã c«ng mµ ph¶n ",2,"Chê ta suy nghÜ mét chót biÖn ph¸p gióp ng­¬i /L30_get_yes","Mçi ng­êi còng sÏ gÆp ph¶i trë ng¹i , chØ sî ta còng kh«ng cã nh÷ng biÖn ph¸p kh¸c . /L30_get_no") 
end; 

function L30_get_yes() 
Talk(1,"","ThËt c¶m t¹ ng­¬i !") 
	SetTask(6,30*256+10)
AddNote(" ë §¹i Lý thÊy §oµn l·o n«ng thØnh gi¸o trång trät vò y nghª th­êng ®Ých ph­¬ng ph¸p . ") 
Msg2Player(" ë §¹i Lý thÊy §oµn l·o n«ng thØnh gi¸o trång trät vò y nghª th­êng ®Ých ph­¬ng ph¸p . ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","Th× ra lµ cßn cã nh­ vËy bÝ quyÕt , thËt lµ c¸m ¬n ng­¬i . ta th¨ng ng­¬i lµm mét phÈm hoa khiÕn cho ®i ") 
SetTask(6,40*256) 
SetRank(34) 
DelItem(2) 
DelItem(3) 
DelItem(4) 
-- script viet hoa By http://tranhba.com  AddMagic(105) 
-- script viet hoa By http://tranhba.com  AddMagic(113) 
add_cy(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i # bÞ ®ãng cöa lµm mét phÈm hoa khiÕn cho # häc ®­îc vâ c«ng m­a ®¸nh lª hoa , m©y tr«i t¸n tuyÕt . ") 
AddNote("§o¹t ®­îc lo¹i vò y nghª th­êng ®Ých bÝ quyÕt , hoµn thµnh nhiÖm vô , bÞ ®ãng cöa v× # nhÊt phÈm hoa khiÕn cho ") 
end; 

function Uworld121_lose() 
Talk(5,"","C« n­¬ng nãi th¼ng .","KÝnh xin ng­¬i ®em tãc nµy mang cho Thiªn v­¬ng gióp ®Ých bªn ph¶i khiÕn cho d­¬ng hå , nãi cho h¾n biÕt nÕu nh­ 7 th¸ng tr­íc kh«ng ®Õn thóy khãi t×m ta lêi cña tõ nay vÒ sau ta cïng h¾n còng ch­a cã c¬ héi gÆp l¹i sau .","Qu¶ nhiªn lµ d­¬ng hå # d­¬ng bªn ph¶i khiÕn cho v¨n míi vâ ®øc ch¼ng qua lµ nhÊt thêi ®Ých lùa chän , lµ ng­êi trung long ph­îng , Hµ c« n­¬ng nghØ ng¬i mét chót ","Ta còng kh«ng muèn gióp ng­¬i , h« ....","§­îc råi # ta ®i .") 
DelItem(373) 
AddEventItem(10) 
Msg2Player("Thay hµ mé tuyÕt ®¸i tho¹i cho d­¬ng hå , lÊy ®­îc hµ mé tuyÕt ®Ých mét thÊt t¬ lôa . ") 
AddNote("Gióp hµ mé tuyÕt ®¸i tho¹i cho d­¬ng hå ") 
SetTask(121,20) -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng thiÕt trÝ v× 20 
end 

function Uworld121_Step4() 
Talk(4,"Uworld121_sijin",".....?","MÆc dï ng­¬i bÊt nh©n nh­ng lµ ta còng kh«ng cã thÓ bÊt nghÜa . n¬i nµy cã mét khèi tó quyªn , ng­¬i dÉn h¾n ®i t×m C«n L«n ®Ých kh©u anh . ta ®· gióp h¾n mét lÇn cuèi cïng . ","Ta ®i ..... hy väng tiªn c« hiÓu râ së .","Chí nhiÒu lêi !") 
end 

function Uworld121_sijin() 
AddEventItem(376) 
Msg2Player("TiÕp nhËn tó quyªn . ") 
AddNote("B¾t ®­îc hµ mé tuyÕt ®Ých tó quyªn , mang theo ®i t×m C«n L«n ®Ých kh©u anh . ") 
SetTask(121,40) -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng thiÕt trÝ v× 40 
end 
