-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC mùc chu tr¹i chñ tang ch©u 10 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

-- script viet hoa By http://tranhba.com  söa ®æi sau cïng tµ gi¸o chñ tuyÕn t­¬ng quan tang ch©u ch©n vèn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/01/18 

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");

Include("\\script\\global\\skills_table.lua");

function main() 

-- script viet hoa By http://tranhba.com  nhiÖm vô míi hÖ thèng cïng tµ gi¸o chñ tuyÕn t­¬ng quan ch©n vèn -- script viet hoa By http://tranhba.com  

local myTaskValue = GetTask(1003) 
local myCamp = nt_getCamp() 


if (myTaskValue==150) then 
task_level30_14(); 
return 
end 


-- script viet hoa By http://tranhba.com  nhiÖm vô míi hÖ thèng cïng tµ gi¸o chñ tuyÕn t­¬ng quan ch©n vèn -- script viet hoa By http://tranhba.com  


UTask_wu = GetTask(10) 
if (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 10*256+10) then		-- script viet hoa By http://tranhba.com 10¼¶ÈÎÎñ½øÐÐÖÐ
i = GetItemCount(86) 
if (i >= 10) and (HaveItem(220) == 1) then 
Talk(1,"L10_prise","Tang tr¹i chñ , ®©y lµ ng­¬i muèn con nhÖn cïng tú s­¬ng ") 
else 
Talk(1,"","§éc vËt cßn ch­a ®ñ , thÕ nµo chËm nh­ vËy , nhanh lªn mét chót !") 
end 
elseif ((UTask_wu == 10*256) and (GetLevel() >= 10)) then -- script viet hoa By http://tranhba.com 10 cÊp nhiÖm vô 
Say(" l·o th©n luyÖn c«ng tµi liÖu kh«ng ®ñ , ng­¬i ®Õn Nh¹n §·ng s¬n th­îng cho ta b¾t m­êi con con nhÖn , l¹i ®i mua 10 tói tú s­¬ng tíi ",2,"Tu©n lÖnh !/L10_get_yes","T¹i h¹ cßn cã viÖc trong ng­êi !/L10_get_no") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","H¾n b¾t ®i con ta ®Ých t×nh c¶nh cßn së sê ë tr­íc m¾t . ®Ó cho ta b¾t ®­îc h¾n ta muèn rót h¾n cèt , sau dïng th©n thÓ cña h¾n tíi luyÖn con nhÖn ®éc . ta muèn cho h¾n thèng khæ , cÇu sinh kh«ng thÓ , muèn chÕt kh«ng ph¶i !") 
end 
else 
Talk(1,"","Kh«ng biÕt con ta b©y giê thÕ nµo , cã hay kh«ng b×nh an v« sù . ") 
end 

end; 

function L10_get_yes() 
Talk(1, "","Nhanh ®i mau trë l¹i # ta chê muèn !") 
	SetTask(10,10*256+10)
AddNote("Trî gióp tang ch©u t×m ®­îc 10 chØ con nhÖn cïng 100 tói tú s­¬ng .") 
Msg2Player("Trî gióp tang ch©u t×m ®­îc 10 chØ con nhÖn cïng 100 tói tú s­¬ng .") 
end; 

function L10_get_no() 
Talk(1,"","ThiÖt lµ ! thËt lµ kh«ng thÓ tin !") 
end; 

function L10_prise() 
Talk(1,"","RÊt tèt ! ng­¬i mau ®i ra ! kh«ng muèn lµm trë ng¹i sù luyÖn c«ng cña ta !") 
DelItem(220) 
for i = 1, GetItemCount(86) do DelItem(86) end 
SetTask(10,20*256) 
SetRank(50) 
-- script viet hoa By http://tranhba.com  AddMagic(62) 
-- script viet hoa By http://tranhba.com  AddMagic(60) 
-- script viet hoa By http://tranhba.com  AddMagic(67) 
add_wu(20) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i ! ng­¬i tÊn th¨ng lµm ®o¹t hån t¸n nh©n ! häc ®­îc vâ c«ng # n¨m ®éc ®ao ph¸p # n¨m ®éc ca tông ph¸p # n¨m ®éc ch­ëng ph¸p # cöu thiªn x©u l«i .") 
AddNote("Trî gióp tang ch©u t×m ®­îc con nhÖn cïng tú s­¬ng . bÞ ®ãng cöa v× ®o¹t hån t¸n nh©n . ") 
end; 
