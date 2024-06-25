-- script viet hoa By http://tranhba.com description: tÇn l¨ng n«ng phu # ngµy nhÉn 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if ((UTask_tr == 30*256+20) and (HaveItem(62) == 0)) then			-- script viet hoa By http://tranhba.com  ÈÎÎñ×´Ì¬¶Ô»°
Talk(3, "select","Ta ngµy h«m qua ë ®iÒn lý ®µo ®Þa ®Ých thêi ®iÓm , ®µo ®­îc liÔu mét t¶ng ®¸ , chiÕu lÊp l¸nh ®Ých tr¸ch ®Ñp m¾t , nh­ng lµ còng kh«ng cã thÓ ¨n l¹i kh«ng thÓ xuyªn , cã Ých lîi g× ? th¸ng tr­íc cïng th«n ®Ých v­¬ng b¶y ®µo ®­îc liÔu mét ®¹i b¹c , ng­êi ta ®µo ®­îc chÝnh lµ b¹c , ta l¹i chØ ®µo ®­îc mét t¶ng ®¸ , thËt lµ xui xÎo !", " ( ®©y kh«ng ph¶i lµ v©n méng tö sao ?!) ®¹i thóc , ta muèn mua ng­¬i t¶ng ®¸ kia , cã thÓ kh«ng ?","Kh«ng nghe lÇm chø , ng­¬i thËt muèn mua ? # ta thËt may m¾n , gÆp ph¶i mét ®¹i ngu muéi # , h¶o h¶o h¶o , chØ cÇn ng­¬i cÇm mét tr¨m l­îng b¹c tíi , c¸i nµy t¶ng ®¸ sÏ lµ cña ng­¬i ") 
	elseif (UTask_tr >=30*256+20) then								-- script viet hoa By http://tranhba.com Ö´ÐÐÍê30¼¶ÈÎÎñ
Talk(1,"","Ng­¬i cßn ph¶i mua c¸i g× sao ? lÇn sau ta ®µo ®­îc liÒn tiÖn nghi b¸n cho ng­¬i !") 
else -- script viet hoa By http://tranhba.com  thiÕu tØnh ®èi tho¹i 
Talk(1,"","Trång c¶ ®êi ®Ých ®Þa , kh«ng biÕt lóc nµo míi ®µo lÊy ®­îc tr©n b¶o ph¸t ®¹i tµi a !") 
end 
end; 

function select() 
if (GetCash() >= 100) then 
Pay(100) 
AddEventItem(62) 
Msg2Player(" lÊy ®­îc v©n méng tö b¶o th¹ch ") 
AddNote(" ë tÇn l¨ng bªn ngoµi ®Ých ®iÒn lý t×m ®­îc n«ng phu , mua ®­îc v©n méng tö b¶o th¹ch ") 
else 
Talk(1,"","Chê tiÒn ®ñ råi tíi t×m ta n÷a . ") 
end 
end; 
