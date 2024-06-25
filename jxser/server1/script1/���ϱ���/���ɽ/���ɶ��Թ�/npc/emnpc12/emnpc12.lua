-- script viet hoa By http://tranhba.com description: ph¸i Nga Mi cao nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/5 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 

if allbrother_0801_CheckIsDialog(1) == 1 then 
allbrother_0801_FindNpcTaskDialog(1) 
return 0; 
end 


UTask_em = GetTask(1) 
	if (UTask_em == 40*256+10) then
Talk(1,"","Cã chuyÖn g× , tr­íc ®¸nh b¹i ta nu«i ®Ých <color=Red> linh thó <color> l¹i nãi .") 
AddNote("T×m ®­îc mét Èn c­ cao nh©n , muèn ®¹t ®­îc sù gióp ®ë cña h¾n , muèn ®¸nh b¹i h¾n nu«i ®Ých linh thó ") 
	elseif (UTask_em == 40*256+20) then
Say("Muèn khóc phæ , cÇm huy t«ng danh t¸c <color=Red># phï dung cÈm gµ ®å #<color> ®Ó ®æi . bøc häa nµy hiÖn r¬i vµo thµnh ®« phñ th¸i b×nh tiªu côc trong tay , cã b¶n l·nh ng­¬i liÒn lÊy tíi ") 
		SetTask(1, 40*256+40)
AddNote("§¸nh b¹i linh thó , tiÕp nhËn vô ®Õn tiªu côc ®em phï dung cÈm gµ ®å mang vÒ ") 
Msg2Player("Cao nh©n yªu cÇu dïng phï dung cÈm gµ ®å ®æi tr¨m ®iÓu h­íng ph­îng khóc phæ ") 
	elseif ((UTask_em == 40*256+60) and (HaveItem(21) == 1)) then						-- script viet hoa By http://tranhba.com µÃµ½Ü½ÈØ½õ¼¦Í¼
Talk(6, "select","C¸i nµy thËt sù lµ phï dung cÈm gµ ®å .","§©y thËt lµ huy t«ng thËt tÝch , ha ha ha , ta triªu t­ mé t­ëng , rèt côc lÊy ®­îc n÷a/råi !","B©y giê ng­¬i cã thÓ ®em # tr¨m ®iÓu h­íng ph­îng # ®Ých khóc phæ cho ta liÔu ®i ?","C¸i nµy ...","Ng­¬i lµ tiÒn bèi cao nh©n , còng kh«ng thÓ nãi kh«ng gi÷ lêi , nÕu kh«ng sÏ bÞ ng­êi trong thiªn h¹ nh¹o b¸ng ®Ých .","Ta l¹i kh«ng nãi kh«ng cho , ®©y chÝnh lµ khóc phæ , ng­¬i cÇm ®i ®i !") 
	elseif ((UTask_em == 40*256+80) and (HaveItem(22) == 0)) then
AddEventItem(22) 
Talk(3,"","Kh«ng thÊy tr¨m ®iÓu h­íng ph­îng khóc phæ a ? bëi v× ng­¬i kh«ng cÇm , kh«ng cÇm tr¸ch ta ","TiÒn bèi cao nh©n cßn tíi lõa g¹t v·n bèi , nÕu nh­ c¸i nµy truyÒn ®i , danh dù sÏ ","§­îc råi , ta sî ng­¬i , mau cÇm khóc phæ ®i ") 
	elseif (UTask_em >= 40*256+40) and (UTask_em < 40*256+80) then
Talk(1,"","Muèn khóc phæ a ? cÇm <color=Red>' phï dung cÈm gµ ®å #'<color> ®Ó ®æi .") 
	elseif (UTask_em >= 40*256+80) then
Talk(1,"","Phï dung cÈm gµ ®å thËt lµ hay , nh×n c¶ ®êi còng kh«ng nÞ .") 
else 
Talk(1,"","Ng­êi rçi r·nh chí quÊy rÇy ta !") 
end 
end; 

function select() 
DelItem(21) 
AddEventItem(22) 
	SetTask(1, 40*256+80)
AddNote("Phï dung cÈm gµ ®å ®æi tr¨m ®iÓu h­íng ph­îng khóc phæ . ") 
Msg2Player("§¹t ®­îc tr¨m ®iÓu h­íng ph­îng khóc phæ ") 
end; 
