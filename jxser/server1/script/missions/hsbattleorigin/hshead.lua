-- script viet hoa By http://tranhba.com  thËi lui ra trﬂ ch¨i sau Æ›ch sËng lπi Æi”m ID, cÚng ch›nh lµ ghi danh Æ›ch chÁ Æ„ Æi 
CS_RevId = 2 
CS_RevData = 72; 

-- script viet hoa By http://tranhba.com  rÍi Æi l«n nµy trﬂ ch¨i sau Æ›ch vﬁ tr› worldid, x, y, mÈt loπi ch›nh lµ ghi danh Æi”m 
-- script viet hoa By http://tranhba.com CS_LeavePos = {20, 3546, 6226}; 

-- script viet hoa By http://tranhba.com  b™n ngoµi hÈi tr≠Íng Æ›ch vﬁ tr› 
CS_OuterPos = {209, 1568, 3278}; 

-- script viet hoa By http://tranhba.com  gia nhÀp song ph≠¨ng trÀn doanh lÛc Æ›ch vﬁ tr› 
CS_CampPos0 = {209, 1631, 3203}; -- script viet hoa By http://tranhba.com  mµu træng 
CS_CampPos1 = {209, 1608, 3167}; -- script viet hoa By http://tranhba.com  mµu vµng 
CS_CampPos2 = {209, 1674, 3246}; -- script viet hoa By http://tranhba.com  lan sæc 
CS_CampPos4 = {212, 1577, 3288}; -- script viet hoa By http://tranhba.com  mµu Æ· 


-- script viet hoa By http://tranhba.com  trﬂ ch¨i lÌn nh t nh©n sË 
MAX_MEMBER_COUNT = 100; 

MS_CAMP1 = 1; -- script viet hoa By http://tranhba.com  song ph≠¨ng trÀn doanh sË 
MS_CAMP2 = 2; 

MS_SIGN_MONEY = 10000; -- script viet hoa By http://tranhba.com  ti“n ghi danh 
MS_WIN_MONEY = 6000; -- script viet hoa By http://tranhba.com  mÁi l«n thæng lÓi lÛc , Æπt Æ≠Óc Æ›ch thu vµo 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 
