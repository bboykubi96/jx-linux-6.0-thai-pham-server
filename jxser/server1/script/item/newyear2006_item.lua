
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online 2006 nguyªn ®¸n ho¹t ®éng minh chñ vâ l©m chiÕu s¸ch v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/12/22 PM 15:12 

-- script viet hoa By http://tranhba.com  ph¸o b«ng . ®ªm h«m ®ã ®İch ph¸o b«ng . 
-- script viet hoa By http://tranhba.com  nµng nhí h¾n ë m­a to ng­êi cña bÇy trung , ®øng ë sau l­ng cña nµng «m ë nµng . 
-- script viet hoa By http://tranhba.com  h¾n Êm ¸p ®İch da , h¾n mïi vŞ ®¹o quen thuéc . ph¸o b«ng chiÕu s¸ng ¸nh m¾t cña nµng . 
-- script viet hoa By http://tranhba.com  hÕt th¶y kh«ng thÓ v·n håi …… 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng kho ñng hé 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  häc vµo 2006 nguyªn ®¸n ho¹t ®éng ®Çu v¨n kiÖn 
Include("\\script\\event\\newyear_2006\\newyear_head.lua");

-- script viet hoa By http://tranhba.com  ngÉu nhiªn nhiÖm vô xö lı ñng hé 
Include("\\script\\task\\random\\task_head.lua");

function main() 

Say("Minh chñ vâ l©m chiÕu s¸ch # trong lóc lo¹n thÕ , c¸c vŞ vÉn v× ta vâ l©m minh tËn t©m tËn lùc , ®éc c« kiÕm v« cïng c¶m kİch . võa gÆp n«ng lŞch n¨m míi bu«ng xuèng , nguyªn ®¸n giai tiÕt , ®Æc ñy ph¸i m«n h¹ cña ta truyÒn nh©n v× c¸c vŞ ®­a lªn nguyªn ®¸n quµ tÆng , mäi ng­êi cã thÓ ë <color=yellow>12 th¸ng 30 ngµy tíi 1 th¸ng 1 ngµy <color> nhËn lÊy , cuèi cïng chóc hîp nhµ an khang , n¨m míi nh­ ı # —— ®éc c« kiÕm ", 
7, 
" nhËn lÊy mçi ngµy ®İch t¸m giê gÊp ®«i kinh nghiÖm /getDoubleExp", 
" nhËn lÊy mçi ngµy ®İch kinh nghiÖm t­ëng th­ëng /getMoreExp_Confirm", 
" nhËn lÊy mçi ngµy ®İch nhiÖm vô quyÓn trôc /getTaskBook", 
" liªn quan tíi ngÉu nhiªn nhiÖm vô xóc ph¸t x¸c suÊt gÊp béi ®İch tin tøc /getRandomTaskInfo", 
" cã liªn quan b¹ch c©u hoµn ®İch míi tin tøc /getBaijuInfo", 
" cã thÓ dïng ®ång tiÒn mua míi ®¹o cô /getCoppercashInfo", 
" ®äc xong /OnExit"); 

return 1; 

end; 


function getDoubleExp() 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhËt kú 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  nÕu nh­ nhËt kú kh«ng ®óng , trùc tiÕp trë vÒ 
if isNewYearTime()==0 then 
Say("B©y giê ®· kh«ng ph¶i lµ nguyªn ®¸n liÔu nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ cÊp bËc kh«ng ®¹t tíi 80 cÊp 
if GetLevel()<80 then 
Say("ChØ cã 80 cÊp trë lªn ng­êi míi cã thÓ nhËn lÊy gÊp ®«i kinh nghiÖm nga #", 0); 
return 
end; 

if nDate~= GetTask(ID_GETDOUBLEEXP_DATE) then 

SetTask(ID_GETDOUBLEEXP_DATE, nDate); 
SetTask(ID_GETDOUBLEEXP_NUM, 1); 

elseif GetTask(ID_GETDOUBLEEXP_NUM)>=1 then 

Say("Ng­¬i h«m nay ®· nhËn lÊy qua gÊp ®«i kinh nghiÖm nga #", 0); 
return 

else 

SetTask(ID_GETDOUBLEEXP_DATE, nDate); 
SetTask(ID_GETDOUBLEEXP_NUM, 1); 

end; 

-- script viet hoa By http://tranhba.com  80 cÊp trë lªn ng­êi mçi ngµy cã thÓ nhËn lÊy mét lÇn 8 giê kinh nghiÖm gÊp ®«i 
if GetLevel()>=80 then 

AddSkillState(531,10,1,8*60*60*18); 
AddSkillState(461,1, 1,8*60*60*18); 

Msg2Player("Ngµi lÊy ®­îc <color=green> 8 giê ®İch gÊp ®«i kinh nghiÖm #<color>"); 
WriteTaskLog(" lÊy ®­îc 8 giê ®İch gÊp ®«i kinh nghiÖm #"); 

else 
Say("ChØ cã 80 cÊp trë lªn ng­êi míi cã thÓ nhËn lÊy gÊp ®«i kinh nghiÖm nga #", 0); 
end; 

end; 


function getTaskBook() 

local nRandomTaskID, nRandomItemIndex = 0, 0; 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhËt kú 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  nÕu nh­ nhËt kú kh«ng ®óng , trùc tiÕp trë vÒ 
if isNewYearTime()==0 then 
Say("B©y giê ®· kh«ng ph¶i lµ nguyªn ®¸n liÔu nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ kh«ng ph¶i lµ h­íng t¹p dông hé 
if IsCharged()==0 then 
Say(" lÇn nµy nguyªn ®¸n ho¹t ®éng chØ cã h­íng t¹p dông hé míi cã thÓ tham dù nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ cÊp bËc kh«ng ®¹t tíi 80 cÊp 
if GetLevel()<80 then 
Say("ChØ cã 80 cÊp trë lªn ng­êi míi cã thÓ nhËn lÊy nhiÖm vô nµy quyÓn trôc nga #", 0); 
return 
end; 

if nDate~= GetTask(ID_GETTASKBOOK_DATE) then 

SetTask(ID_GETTASKBOOK_DATE, nDate); 
SetTask(ID_GETTASKBOOK_NUM, 1); 

elseif GetTask(ID_GETTASKBOOK_NUM)>=1 then 

Say("Ng­¬i h«m nay ®· nhËn lÊy qua mét c¸i nhiÖm vô quyÓn trôc nga #", 0); 
return 

else 

SetTask(ID_GETTASKBOOK_DATE, nDate); 
SetTask(ID_GETTASKBOOK_NUM, 1); 

end; 

-- script viet hoa By http://tranhba.com  lùa chän mét tÇng thø hai ®İch ngÉu nhiªn nhiÖm vô 
nRandomTaskID = TaskNo(selectNextTask()); 

-- script viet hoa By http://tranhba.com  sinh thµnh mét c¸i nhiÖm vô quyÓn trôc 
nRandomItemIndex = AddItem(6, 2, 2, 0, 1, 0, 0); 
SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID); 

-- script viet hoa By http://tranhba.com  cïng b­íc vËt phÈm ma ph¸p thuéc tİnh 
SyncItem(nRandomItemIndex); 

Msg2Player("Ngµi lÊy ®­îc <color=green> nhiÖm vô quyÓn trôc mét #<color>"); 

WriteTaskLog(" lÊy ®­îc mét c¸i nhiÖm vô quyÓn trôc , biªn sè v× #"..nRandomTaskID); 

end; 


-- script viet hoa By http://tranhba.com  hái th¨m nhµ ch¬i cã hay kh«ng nhËn lÊy kinh nghiÖm 
function getMoreExp_Confirm() 
Say("Ngµi ë <color=yellow>2005 n¨m 12 th¸ng 30 ngµy tíi 2006 n¨m 1 th¸ng 1 ngµy <color> trong lóc , mçi ngµy th­îng tuyÕn còng sÏ ®¹t ®­îc ®éc c« minh chñ tÆng ®İch nhãm lín kinh nghiÖm . <color=yellow> ba ngµy nay bªn trong mçi ngµy cã thÓ dÉn mét lÇn <color> , nh­ng hai lÇn nhËn lÊy kinh nghiÖm gi÷a c¸ch nhau cÇn <color=yellow> ë tuyÕn v­ît qua 1 giê <color> . ng­¬i muèn b©y giê nhËn lÊy sao ? ",2, 
" h¶o a , ta mÊu chèt lÊy /getMoreExpMain", 
" cßn lµ chê thªm chót n÷a ®i /OnExit"); 
return 
end; 


-- script viet hoa By http://tranhba.com  nhËn lÊy mçi ngµy ®İch kinh nghiÖm 
function getMoreExpMain() 

local nExp = countMoreExpNum(); 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhËt kú 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  nÕu nh­ nhËt kú kh«ng ®óng , trùc tiÕp trë vÒ 
if isNewYearTime()==0 then 
Say("B©y giê ®· kh«ng ph¶i lµ nguyªn ®¸n liÔu nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ kh«ng ph¶i lµ h­íng t¹p dông hé 
if IsCharged()==0 then 
Say(" lÇn nµy nguyªn ®¸n ho¹t ®éng chØ cã h­íng t¹p dông hé míi cã thÓ tham dù nga #", 0); 
return 
end; 

if canGetMoreExp()==1 then 
if GetLevel()<50 then 
addPlayerExpForLimit(nExp, 5); -- script viet hoa By http://tranhba.com  h¹n chÕ chØ cã thÓ th¨ng 5 cÊp 
else 
addPlayerExpForLimit(nExp, 0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ 
end; 

Msg2Player("Ngµi lÊy ®­îc nguyªn ®¸n ho¹t ®éng ®İch kinh nghiÖm t­ëng th­ëng #<color=yellow>"..nExp.."<color> chót kinh nghiÖm #"); 

writeMoreExpData(); -- script viet hoa By http://tranhba.com  ghi chĞp nhËn lÊy kinh nghiÖm t­¬ng quan sè liÖu 

WriteTaskLog(" lÊy ®­îc mçi ngµy ®İch t­ëng th­ëng kinh nghiÖm #"..nExp); 

else 
Say("Ng­¬i b©y giê ®İch ®iÒu kiÖn kh«ng thÓ nhËn lÊy mçi ngµy ®İch kinh nghiÖm , ë 12 th¸ng 30 ngµy tíi 1 th¸ng 1 nhËt kú ®ang lóc , mçi ngµy th­îng tuyÕn còng sÏ ®¹t ®­îc ®éc c« minh chñ tÆng ®İch nhãm lín kinh nghiÖm . <color=yellow> ba ngµy nay bªn trong mçi ngµy cã thÓ dÉn mét lÇn <color> , nh­ng hai lÇn nhËn lÊy kinh nghiÖm gi÷a c¸ch nhau cÇn <color=yellow> ë tuyÕn v­ît qua 1 giê <color> nga #", 0); 
return 
end; 


end; 


-- script viet hoa By http://tranhba.com  lÊy ®­îc ®ång tiÒn ®İch ®Ò kú 
function getCoppercashInfo() 

Say("Ngµy gÇn ®©y tr­íc khi an ®İch thuËt dŞch dung sÜ míi khai ph¸ liÔu gi¸ng sinh tinh linh # n¨m míi hiÖp kh¸ch # n¨m míi hiÖp n÷ # tuÇn léc chê mét nhãm mÆt n¹ , ®ång thêi c¸c n¬i ®İch ®­îc ch©n th­¬ng nh©n chç còng t©n tiÕn liÔu mµu xanh da trêi yªu c¬ hép quµ , ngµy lÔ lÔ hoa hép quµ cïng b«ng tuyÕt hép quµ , h¬n n÷a c¸c n¬i sè kh«ng phiÕn chç t©n tiÕn liÔu mét lo¹i cã thÓ m×nh biªn tËp chóc phóc ng«n ng÷ ®İch nh­ ı t¹p , hoan nghªnh mäi ng­êi ®i tr­íc chän mua . ", 0); 
return 

end; 


function getBaijuInfo() 

Say("Ngµi ë <color=yellow>2005 n¨m 12 th¸ng 30 ngµy tíi 2006 n¨m 1 th¸ng 1 ngµy <color> mçi ngµy <color=red>0#00~18#00<color> , sö dông b¹ch c©u hoµn treo ky ®¹t ®­îc ®İch kinh nghiÖm ®em gÊp béi # kü n¨ng b¹ch c©u hoµn treo ky ®¹t ®­îc ®é thuÇn thôc ®em lËt 1.5 lÇn . ", 0); 
return 

end; 


function getRandomTaskInfo() 

Say("Ngµi ë <color=yellow>2005 n¨m 12 th¸ng 30 ngµy tíi 2006 n¨m 1 th¸ng 1 ngµy <color> thu ®­îc ngÉu nhiªn nhiÖm vô xóc ph¸t x¸c suÊt gÊp béi ®İch quµ tÆng #", 0); 
return 

end; 



function OnExit() 

end;
