--TÈy tñy ®¶o edit by McTeam

Include("\\script\\missions\\clearskill\\clearhole.lua");

function main() 
-- script viet hoa By http://tranhba.com  phi ph¸p tr¹ng th¸i 
if (CSP_CheckValid() == 0) then 
CSP_WriteLog("TiÕn vµo tÈy tñy ®¶o kh«ng b×nh th­êng . "); 
Say("GM: <color=red> ng­¬i kh«ng thÓ vµo tÈy tñy ®¶o , ®· bŞ hÖ thèng ghi chĞp , xin/mêi ®i t×m ng­êi phôc vô ®iÒu chØnh h¶o ! <color> ", 1,"Rêi khái ®¶o tÈy tuû /LeaveHere_yes") 
return -1; 
end 

nLevel = GetLevel(); 
if (nLevel < CSP_NEEDLEVEL) then 
Talk(1, "","CÊp bËc cña ng­¬i cßn ch­a ®¹t tíi "..CSP_NEEDLEVEL.." kh«ng thÓ rêi ®i ®¶o tÈy tuû . ") 
return -1; 
end 

nType = GetTask(CSP_TID_ClearType); 
if (nType == CSP_CTYPE_SKILL) then  
local tbOpt = 
{ 
" TÈy ®iÓm kü n¨ng /DoClearSkill", 
" TÈy ®iÓm tiÒm n¨ng /add_prop", 
" Kh«ng tÈy /OnCancel", 
" Liªn quan tíi tÈy tñy /Help", 
" Rêi khái n¬i quû qu¸i nµy /LeaveHere", 
} 
Say("Ng­¬i chØ cã thÓ tÈy <color=blue> ®iÓm kü n¨ng <color>. ®ång ı tÈy sao ? ", getn(tbOpt), tbOpt) 
elseif (nType == CSP_CTYPE_PROP) then 
local tbOpt = 
{ 
" TÈy ®iÓm tiÒm n¨ng /DoClearProp", 
" T¨ng ®iÓm tiÒm n¨ng /add_prop", 
" Kh«n tÈy /OnCancel", 
" Liªn quan tíi tÈy tñy /Help", 
" Rêi khái n¬i quû qu¸i nµy /LeaveHere", 
} 
Say("Ng­¬i chØ cã thÓ tÈy <color=blue> ®iÓm tiÒm n¨ng <color>. ®ång ı tÈy sao ? ", getn(tbOpt), tbOpt) 
else -- script viet hoa By http://tranhba.com  if (nType == CSP_NEEDJEWEL_ALL) then 
local tbOpt = 
{ 
" TÈy ®iÓm kü n¨ng /DoClearSkill", 
" TÈy ®iÓm tiÒm n¨ng /DoClearProp", 
" T¨ng ®iÓm tiÒm n¨ng /add_prop", 
" Kh«ng tÈy /OnCancel", 
" Liªn quan tíi tÈy tñy /Help", 
" Rêi khái n¬i quû qu¸i nµy /LeaveHere", 
} 
Say("Ng­¬i ®ång ı tÈy tñy sao ? ", getn(tbOpt),tbOpt) 
end; 
end 

function add_prop() 
Say("Nãi râ # ng­¬i nghÜ m×nh kü n¨ng g× trŞ gi¸ ?", 4, 
" T¨ng søc m¹nh /add_prop_str", 
" T¨ng th©n ph¸p /add_prop_dex", 
" T¨ng sinh khİ /add_prop_vit", 
" T¨ng néi c«ng /add_prop_eng") 
end 

function add_prop_str() 
AskClientForNumber("enter_str_num", 0, GetProp(),"Xin/mêi ®­a vµo lùc l­îng trŞ sè : "); 
end 

function add_prop_dex() 
AskClientForNumber("enter_dex_num", 0, GetProp(),"Xin/mêi ®­a vµo th©n ph¸p trŞ sè : "); 
end 

function add_prop_vit() 
AskClientForNumber("enter_vit_num", 0, GetProp(),"Xin/mêi ®­a vµo ngo¹i c«ng trŞ sè :"); 
end 

function add_prop_eng() 
AskClientForNumber("enter_eng_num", 0, GetProp(),"H«n ®­a vµo néi c«ng trŞ sè : "); 
end 

function enter_str_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddStrg(n_key); 
end 

function enter_dex_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddDex(n_key); 
end 

function enter_vit_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddVit(n_key); 
end 

function enter_eng_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddEng(n_key); 
end 

function DoClearSkill() 
Say("Ng­¬i ®ång ı tÈy kü n¨ng ®¸ng gi¸ sao ? ", 2,"TÈy kü n¨ng trŞ gi¸ /DoClearSkillCore","Kh«ng tÈy /OnCancel") 
end 
function DoClearSkillCore() 
-- script viet hoa By http://tranhba.com  if (Pay(100000) == 0) then 
-- script viet hoa By http://tranhba.com  Say("Thİch minh # thËt xin lçi , mçi lÇn tÈy tñy cÇn 10 v¹n l­îng , trªn ng­êi ng­¬i mang ®İch kh«ng ®ñ tiÒn . ", 0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c«ng kh¸c thao t¸c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” kh¸c thao t¸c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh trõ kü n¨ng còng trë vÒ tÊt c¶ kü n¨ng ®iÓm # bao gåm khinh c«ng chê ®Æc thï kü n¨ng # 
x = 0 
	if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
rollback_point = n - x -- script viet hoa By http://tranhba.com  ®em kü n¨ng ®iÓm lµm ë kh«ng ®iÓm ®Õm hoµn tr¶ , nh­ng tr­íc khÊu trõ khinh c«ng chê 
	if (rollback_point + GetMagicPoint() < 0) then		-- script viet hoa By http://tranhba.com  Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£Áô£©
rollback_point = -1 * GetMagicPoint() 
end 
AddMagicPoint(rollback_point) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua khinh c«ng lµ thªm trë vÒ nguyªn cã cÊp bËc 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” gièng nhau xö lı 
Msg2Player("TÈy tñy thµnh c«ng # ng­¬i ®· cã thÓ ph©n phèi ®iÓm "..rollback_point.."# kü n¨ng ®iÓm cã thÓ lÇn n÷a ph©n phèi . ") 
Talk(1,"KickOutSelf","TÈy tñy thµnh c«ng # ng­¬i ®· cã thÓ ph©n phèi ®iÓm "..rollback_point.." kü n¨ng ®iÓm cã thÓ lÇn n÷a ph©n phèi . ") 
end; 

function DoClearProp() 
Say("Ng­¬i ®ång ı tÈy ®iÓm tiÒm n¨ng sao ? ", 2,"TÈy ®iÓm tiÒm n¨ng /DoClearPropCore","Kh«ng tÈy /OnCancel") 
end 

function DoClearPropCore() 
base_str = {35,20,25,30,20} -- script viet hoa By http://tranhba.com  ngò hµnh nh©n vËt trêi sanh thuéc tİnh trŞ gi¸ 
base_dex = {25,35,25,20,15} 
base_vit = {25,20,25,30,25} 
base_eng = {15,25,25,20,40} 
		player_series = GetSeries() + 1

Utask88 = GetTask(88) 
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- script viet hoa By http://tranhba.com  ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖĞÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end; 

function OnCancel() 
end; 

function Help() 
strHelp = 
{ 
" TÈy tñy sau , ng­¬i cã thÓ ®i ra bªn ngoµi ®¸nh méc nh©n , hoÆc lµ ®oµn thÓ cïng nhau vµo s¬n ®éng thùc hµnh chiÕn ®Êu , sau ®ã rêi ®i ®¶o míi cã thÓ coi nh­ lµ hoµn thµnh . ", 
" ChØ cÇn ng­¬i kh«ng rêi ®i ®¶o , ta ®em trî gióp ng­¬i tÈy tñy ?", 
" Bªn ngoµi cã c¸i céc gç (3000 sinh lùc ) ; bao c¸t (10000 sinh lùc ) ; méc nh©n #30000 sinh lùc ) ®Ó cho ng­êi ta thùc hµnh tÈy tñy hiÖu qu¶ !", 
" NÕu nh­ muèn tranh tµi , cã thÓ vµo nói ®éng , mÆc dï cã thÊt b¹i , còng sÏ kh«ng cã c¸i g× tæn thÊt ", 
" NÕu nh­ trong s¬n ®éng còng rÊt hÑp , nhiÒu nhÊt còng chØ chøa 20 ng­êi , cho nªn nÕu nh­ ®· ®ñ ng­êi còng kh«ng cÇn tiÕn vµo . ", 
" NÕu nh­ trong s¬n ®éng còng rÊt hÑp , nhiÒu nhÊt còng chØ chøa 20 ng­êi , cho nªn nÕu nh­ ®· ®ñ ng­êi còng kh«ng cÇn tiÕn vµo . ", 
" Cuèi cïng , lóc nµo c¶m gi¸c kü n¨ng ®iÓm ®ñ råi sÏ tíi t×m ta , ta sÏ dÉn ng­¬i trë vÒ chç cò " 
} 
Talk(7, "", strHelp[1], strHelp[2], strHelp[3], strHelp[4], strHelp[5], strHelp[6], strHelp[7]); 
end; 

function LeaveHere() 
Say("Ng­¬i cho r»ng ®· tÈy tñy xong råi a ? cã muèn rêi ®i sao ? ",2,"Muèn rêi ®i /LeaveHere2","NhiÖm vô nghiªm tóc suy nghÜ mét chót /OnCanCel") 
end 

function LeaveHere2() 
Say("Rêi ®i tÈy tñy ®¶o , nÕu nh­ muèn trë vÒ ®em rÊt khã , ng­¬i nh­ cò kiªn quyÕt rêi ®i a ? ", 2,"Ta thËt muèn rêi ®i c¸i nµy ®Şa ph­¬ng quû qu¸i /LeaveHere_yes","§Ó ta suy nghÜ l¹i /OnCanCel") 
end 

function LeaveHere_yes() 
W,X,Y = GetWorldPos(); 
LeaveTeam() 
CSP_LeaveClearMap(W); 
end 
