-- script viet hoa By http://tranhba.com ==== phÇn th­ëng c¸ch thøc ====-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Award = {type, detail, amount} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  type: phÇn th­ëng lo¹i h×nh 
-- script viet hoa By http://tranhba.com  nil# nhiÒu phÇn th­ëng #0#function#1#AddItem#2#AddGoldItem#3# kh«ng ph¶i lµ vËt phÈm # 
-- script viet hoa By http://tranhba.com  4# ®Òu x¸c suÊt ngÉu nhiªn vËt phÈm #5# ®Şnh x¸c suÊt ngay sau ®ã vËt phÈm # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  detail: cô thÓ vËt phÈm bëi v× type ®İch bÊt ®ång mµ kh«ng cã cïng ı nghÜa cïng c¸ch thøc # 
-- script viet hoa By http://tranhba.com  khi type = nil lóc , detail v× # 
-- script viet hoa By http://tranhba.com  {Award1, Award2, ……} mét hµm h÷u nhiÒu Award ®İch ®Õm tæ , tr×nh tù sÏ theo thø tù ®Ó cho trong ®ã mçi phÇn th­ëng 
-- script viet hoa By http://tranhba.com  khi type = 0 lóc , detail cã thÓ cã hai lo¹i ph­¬ng thøc # 
-- script viet hoa By http://tranhba.com  function nªn hµm sè cã thÓ hoµn thµnh cho cïng ®Æc thï nµo ®ã ®İch t­ëng th­ëng ®İch chøc n¨ng 
-- script viet hoa By http://tranhba.com  {function, param1, param2, ……} hµm h÷u hµm sè cïng cÇn tham sæ ®İch ®Õm tæ 
-- script viet hoa By http://tranhba.com  khi type = 1 lóc , detail v× # 
-- script viet hoa By http://tranhba.com  {x1,x2,x3,x4,x5,x6} ngËm 6 c¸ nguyªn tè ®Õm tæ , bµy tá AddItem(x1,x2,x3,x4,x5,x6) ®İch 6 c¸ tham sæ 
-- script viet hoa By http://tranhba.com  khi type = 2 lóc , detail v× # 
-- script viet hoa By http://tranhba.com  {x1,x2} ngËm 2 c¸ nguyªn tè ®Õm tæ , bµy tá AddGoldItem(x1,x2) ®İch 2 c¸ tham sæ 
-- script viet hoa By http://tranhba.com  khi type = 3 lóc , detail v× # 
-- script viet hoa By http://tranhba.com  1#AddOwnExp# 
-- script viet hoa By http://tranhba.com  nh÷ng kh¸c trŞ sè l­u lµm ph¸t triÓn 
-- script viet hoa By http://tranhba.com  khi type = 4 lóc , detail v× # 
-- script viet hoa By http://tranhba.com  {Award1, Award2, ……} tr×nh tù sÏ dùa theo chia ®Òu ®İch x¸c suÊt tõ trong ngay sau ®ã lùa chän mét vËt phÈm 
-- script viet hoa By http://tranhba.com  khi type = 5 lóc , detail v× # 
-- script viet hoa By http://tranhba.com  {{p1, Award1}, {p2, Award2}, ……} tr×nh tù sÏ dùa theo chØ ®Şnh x¸c suÊt p tõ trong ngay sau ®ã lùa chän mét vËt phÈm 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  amount: nªn phÇn th­ëng sè l­îng # nÕu nh­ lµ AddOwnExp , lµ bµy tá lµ kinh nghiÖm trŞ gi¸ # nÕu nh­ lµ function , lµ bµy tá vËn hµnh sè lÇn # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  kh¸c # 
-- script viet hoa By http://tranhba.com  nÕu nh­ ®em Award = {Award1, Award2, ……} lµm phÇn th­ëng , 
-- script viet hoa By http://tranhba.com  tr×nh tù sÏ hiÓu v× type = nil; amount = 1 ®İch mét tæ phÇn th­ëng , lÊy nµy ph­¬ng tiÖn phÇn th­ëng ®Õm tæ s¸ch viÕt 
-- script viet hoa By http://tranhba.com  tøc lo¹i nµy viÕt ph¸p chê hiÖu v× #Award = {nil, {Award1, Award2, ……}, 0} 

Include("\\script\\task\\task_addplayerexp.lua")  -- script viet hoa By http://tranhba.com ¸øÍæ¼ÒÀÛ¼Ó¾­ÑéµÄ¹«¹²º¯Êı

__award_log_HEAD = {"[AWARD_GIVE]", {date, "%y-%m-%d,%H:%M"}, GetAccount, GetName} 
__award_log_HEAD.sep = "\t" 
__award_log_HEAD.bra = {"", "\t"} 

if (not AWARD_HEAD) then 
AWARD_HEAD = 1 

Include("\\script\\lib\\basic.lua");
IL("FILESYS") 

-- script viet hoa By http://tranhba.com  ghi chĞp ngµy chİ 
function __award_log(str) 
-- script viet hoa By http://tranhba.com Msg2Player("<color=white>"..str.."<color>") 
if __award_log_HEAD then 
str = totext(__award_log_HEAD)..str 
end 
WriteLog(str) 
-- script viet hoa By http://tranhba.com print(str) 
end 

-- script viet hoa By http://tranhba.com  nh­ng th¨ng cÊp ®İch thªm kinh nghiÖm 
function award_addexp( awardexp ) 
tl_addPlayerExp(awardexp) 
end 

-- script viet hoa By http://tranhba.com  cho cïng phÇn th­ëng 
function award_give(tb_award) 
local n_type, var_detail, n_count 
if (type(tb_award[1]) == "table") then 
n_type = nil 
var_detail = tb_award 
n_count = 1 
else 
n_type = tb_award[1] 
var_detail = tb_award[2] 
n_count = tb_award[3] 
end 
local all_count = 0 
if (n_type == nil) then -- script viet hoa By http://tranhba.com  nhiÒu phÇn th­ëng 
while (n_count > 0) do 
for i = 1, getn(var_detail) do 
				all_count = all_count + award_give(var_detail[i])
end 
n_count = n_count - 1 
end 
elseif (n_type == 0) then -- script viet hoa By http://tranhba.com function 
while (n_count > 0) do 
if (type(var_detail) == "table") then 
__award_log("function("..join(pack(unpack(var_detail,2)))..")") 
				all_count = all_count + tonum(var_detail[1](unpack(var_detail,2)))
else 
__award_log(tostring(var_detail)) 
				all_count = all_count + tonum(var_detail())
end 
n_count = n_count - 1 
end 
elseif (n_type == 1) then -- script viet hoa By http://tranhba.com  vËt phÈm b×nh th­êng 
all_count = n_count 
while (n_count > 0) do 
__award_log("AddItem("..join(var_detail)..")") 
AddItem(unpack(var_detail)) 
n_count = n_count - 1 
end 
elseif (n_type == 2) then -- script viet hoa By http://tranhba.com  hoµng kim vËt phÈm 
all_count = n_count 
while (n_count > 0) do 
__award_log("AddGoldItem("..join(var_detail)..")") 
AddGoldItem(unpack(var_detail)) 
n_count = n_count - 1 
end 
elseif (n_type == 3) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ vËt phÈm 
all_count = 1 
if (var_detail == 1) then -- script viet hoa By http://tranhba.com AddOwnExp 
__award_log("AddOwnExp("..n_count..")") 
award_addexp(n_count) 
else -- script viet hoa By http://tranhba.com  l­u lµm ph¸t triÓn 
__award_log("award_give : error var_detail:"..tostring(var_detail)) 
end 
elseif (n_type == 4) then -- script viet hoa By http://tranhba.com  ngÉu nhiªn vËt phÈm 
while (n_count > 0) do 
local giveindex = random(getn(var_detail)) 
			all_count = all_count + award_give(var_detail[giveindex])
n_count = n_count - 1 
end 
else 
__award_log("award_give : error n_type:"..tostring(n_type)) 
end 
return all_count 
end 

-- script viet hoa By http://tranhba.com  tİnh to¸n toµn bé t­ëng th­ëng vËt phÈm chiÕm c¸ch tö ®Õm # kh«ng cho phĞp # 
function award_count(tb_award) 
local n_type, var_detail, n_count 
if (type(tb_award[1]) == "table") then 
n_type = nil 
var_detail = tb_award 
n_count = 1 
else 
n_type = tb_award[1] 
var_detail = tb_award[2] 
n_count = tb_award[3] 
end 
local all_count = 0 
if (n_type == nil) then -- script viet hoa By http://tranhba.com  nhiÒu phÇn th­ëng 
while (n_count > 0) do 
for i = 1, getn(var_detail) do 
				all_count = all_count + award_count(var_detail[i])
end 
n_count = n_count - 1 
end 
elseif (n_type == 0) then -- script viet hoa By http://tranhba.com function 
all_count = n_count 
elseif (n_type == 1) then -- script viet hoa By http://tranhba.com  vËt phÈm b×nh th­êng 
all_count = n_count 
elseif (n_type == 2) then -- script viet hoa By http://tranhba.com  hoµng kim vËt phÈm 
all_count = n_count * 2 
elseif (n_type == 3) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ vËt phÈm 
all_count = 0 
elseif (n_type == 4) then -- script viet hoa By http://tranhba.com  ngÉu nhiªn vËt phÈm 
all_count = 2 
else 
__award_log("award_count : error n_type:"..tostring(n_type)) 
end 
return all_count 
end 


end 
