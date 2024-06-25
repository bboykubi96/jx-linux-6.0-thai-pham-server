-- script viet hoa By http://tranhba.com  §¹i Lý chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> ta lß rÌn v× häc vâ chÕ t¹o binh khÝ mµ x©y , ®ao kiÕm c«n sóng , m­êi t¸m mãn binh khÝ ®Òu cã , ®¹i hiÖp muèn mua lo¹i nµo ?" 

function main(sel) 
tiejiang_city(TIEJIANG_DIALOG); 
end; 

function yes() 
Sale(16); -- script viet hoa By http://tranhba.com  t¹m thêi ®Þnh v× 25 
end; 
