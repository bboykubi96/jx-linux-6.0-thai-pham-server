-- script viet hoa By http://tranhba.com description: vÜnh nh¹c trÊn _ bß bß mÑ 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com modify 2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/22 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main(sel) 
UTask_world37=GetTask(65) 
if ((UTask_world37==0) and (GetLevel() >= 2)) then -- script viet hoa By http://tranhba.com  yªu cÇu cÊp bËc v­ît qua 2 cÊp 
Say("Nhµ ta bß bß c¶ ngµy lÉn ®ªm nãi muèn ®i khi ®¹i hiÖp , b©y giê l¹i kh«ng biÕt ch¹y ®Õn ®i ®©u råi , thËt lµ cÊp ng­êi chÕt nhµ ta bß bß c¶ ngµy lÉn ®ªm nãi muèn ®i khi ®¹i hiÖp , b©y giê l¹i kh«ng biÕt ch¹y ®Õn ®i ®©u råi , thËt lµ cÊp ng­êi chÕt ",2,"§¹i tÈu ®õng lo l¾ng , ta gióp ng­¬i t×m /yes","Kh«ng ®i t×m /no") 
elseif (UTask_world37==2) then 
Talk(1,"","§¹i tÈu ®õng lo l¾ng , ta gióp ng­¬i t×m ") 
else 
Talk(1,"","Kh¾p n¬i ®Òu kh«ng yªn æn , hµi tö l¹i kh«ng nghe lêi , thËt lµ quan t©m a !") 
end 
end; 

function yes() 
Talk(1,"","Ng­¬i thËt lµ ng­êi tèt , liÒn lµm phiÒn ng­¬i hç trî ") 
SetTask(65,2) 
AddNote("TiÕp nhËn vô # gióp bß bß mÑ t×m hµi tö ") 
Msg2Player("TiÕp nhËn vô # gióp bß bß mÑ t×m hµi tö ") 
end 

function no() 
end 
