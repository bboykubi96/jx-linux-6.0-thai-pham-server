-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu long m«n trÊn Hoµng Hµ bÕn tµu thuyÒn phu ®èi tho¹i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com 20031029 

CurWharf = 10; 
Include("\\script\\global\\station.lua")

function main(sel) 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp n¨m 
Say("Chóng ta ë n¬i nµy trªn thuyÒn lµm thî thËt rÊt khæ cùc # ngµy ph¬i giã thæi ®İch , b©y giê l¹i gÆp giã lín l·ng , sî r»ng còng kh«ng sèng ®­îc liÔu !", 2,"Ngåi thuyÒn /WharfFun","Kh«ng ngåi /OnCancel") 
else 
Talk(1,"","Bªn ngoµi qu¸ rèi lo¹n , xem ng­¬i tay trãi gµ kh«ng chÆc # võa ra th«n bªn ngoµi ta lo l¾ng ng­¬i liÒn ®Çu ng­êi khã gi÷ ®­îc liÔu !") 
end 
end; 

function OnCancel() 
Talk(1,"","Kh«ng cã tiÒn kh«ng thÓ ngåi ! ") 
end;
