-- script viet hoa By http://tranhba.com  t¾m kü n¨ng ®iÓm ®İch ph¶n béi t¨ng ## bªn trong tr¾c chuyªn dông b¶n # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-29) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-12-10) 

function main() 
Say("Ng­¬i nghÜ tÈy tñy sao ! cã thÓ # tr­íc cho ta chñy ®Êm l­ng # biÕt ph¶i lµm sao sao ?",2,"§©y lµ 10 v¹n l­îng , xin/mêi ®¹i s­ nhËn lÊy /pay_yes","Tİnh / chän ®i /rollback_no") 
end; 

function pay_yes() 
if (GetCash() >= 100000) then 
Pay(100000) 
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c«ng kh¸c thao t¸c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” kh¸c thao t¸c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh trõ kü n¨ng còng trë vÒ tÊt c¶ kü n¨ng ®iÓm # bao gåm khinh c«ng chê ®Æc thï kü n¨ng # 
x = 0 
		if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
		if (j ~= -1) then x = x + j end
rollback_point = n - x -- script viet hoa By http://tranhba.com  ®em kü n¨ng ®iÓm lµm ë kh«ng ®iÓm ®Õm hoµn tr¶ , nh­ng tr­íc khÊu trõ khinh c«ng chê 
AddMagicPoint(rollback_point) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua khinh c«ng lµ thªm trë vÒ nguyªn cã cÊp bËc 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” gièng nhau xö lı 
if (GetTask(13) > 256) then -- script viet hoa By http://tranhba.com  lµ dïng b¶o th¹ch t¾m ®İch ®iÓm 
Msg2Player("Dïng 3 viªn thñy tinh t¾m kü n¨ng ®iÓm . ng­¬i h¼n vÒ nhµ nghØ ng¬i mét chót !") 
Say("Dïng 3 viªn thñy tinh t¾m kü n¨ng ®iÓm . nh­ng lµ kü muèn tiªu hao 3 c¸ kü n¨ng ®iÓm . ng­¬i h¼n vÒ nhµ nghØ ng¬i mét chót .",1,"Tèt /KickOutSelf") 
else 
Msg2Player("Dïng 3 viªn thñy tinh t¾m kü n¨ng ®iÓm . nh­ng lµ kü muèn tiªu hao 3 c¸ kü n¨ng ®iÓm . ng­¬i h¼n vÒ nhµ nghØ ng¬i mét chót !") 
Say("Dïng 3 viªn thñy tinh t¾m kü n¨ng ®iÓm . nh­ng lµ kü muèn tiªu hao 3 c¸ kü n¨ng ®iÓm . ng­¬i h¼n vÒ nhµ nghØ ng¬i mét chót !",1,"Tèt /KickOutSelf") 
end 
else 
Talk(1,"","§©y chİnh lµ ng­¬i thµnh ı sao ? lêi nh­ vËy ng­¬i cßn lµ trë vÒ ®i th«i ! ") 
end 
end 

function no() 
end 
