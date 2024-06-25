
-- script viet hoa By http://tranhba.com  thèi lui ra trß ch¬i sau ®Ých sèng l¹i ®iÓm ID, còng chÝnh lµ ghi danh ®Ých chç ®ã ®i 
CS_RevId = 80; 
CS_RevData = 36; 

-- script viet hoa By http://tranhba.com  rêi ®i lÇn nµy trß ch¬i sau ®Ých vÞ trÝ worldid, x, y, mét lo¹i chÝnh lµ ghi danh ®iÓm 
-- script viet hoa By http://tranhba.com CS_LeavePos = {20, 3546, 6226}; 

-- script viet hoa By http://tranhba.com  bªn ngoµi héi tr­êng ®Ých vÞ trÝ 
CS_OuterPos = {209, 1548, 3297}; 


-- script viet hoa By http://tranhba.com  gia nhËp song ph­¬ng trËn doanh lóc ®Ých vÞ trÝ 
CS_CampPos0 = {209, 1631, 3203}; -- script viet hoa By http://tranhba.com  mµu tr¾ng 
CS_CampPos1 = {209, 1608, 3167}; -- script viet hoa By http://tranhba.com  mµu vµng 
CS_CampPos2 = {209, 1674, 3246}; -- script viet hoa By http://tranhba.com  mµu ®á 


-- script viet hoa By http://tranhba.com  trß ch¬i mçi mét trËn doanh ®Ých lín nhÊt nh©n sè 
MAX_MEMBER_COUNT = 20; 



MS_CAMP1 = 1; -- script viet hoa By http://tranhba.com  song ph­¬ng trËn doanh sè 
MS_CAMP2 = 2; 

MS_SIGN_MONEY = 5000; -- script viet hoa By http://tranhba.com  tiÒn ghi danh 
MS_WIN_MONEY = 3000; -- script viet hoa By http://tranhba.com  mçi lÇn th¾ng lîi lóc , ®¹t ®­îc ®Ých thu vµo 


function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 
