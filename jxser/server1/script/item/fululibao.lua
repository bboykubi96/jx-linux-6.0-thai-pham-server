-- script viet hoa By http://tranhba.com  vâng kiÕm ba chu niªn ho¹t ®éng 
-- script viet hoa By http://tranhba.com  phóc léc lÔ tói 
-- script viet hoa By http://tranhba.com  thËp lÊy lóc ngÉu nhiªn ®¹t ®­îc b¹ch bét g¹o # b¹ch sa ®­êng # ®Ëu sa # hång t¶o 4 lo¹i tµi liÖu trung ®Ých mét lo¹i 
-- script viet hoa By http://tranhba.com  h¹n chÕ 80 cÊp trë lªn nhµ ch¬i , h­íng trÞ gi¸ dông hé 

Include("\\script\\event\\jxanniversary3\\head.lua");

function PickUp(nItemIndex, nPlayerIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 0; 
end; 

local nrand = random(100); 
local naddrate = 0; 
for i = 1, getn(tb_JXAN_RESOURCERATE) do 
		naddrate = naddrate + tb_JXAN_RESOURCERATE[i][3];
if (naddrate >= nrand) then 
AddItem(tb_JXAN_RESOURCERATE[i][1][1],tb_JXAN_RESOURCERATE[i][1][2],tb_JXAN_RESOURCERATE[i][1][3],1,1,1); 
Msg2Player("Ng­¬i thu ®­îc mét "..tb_JXAN_RESOURCERATE[i][2]); 
break 
end; 
end; 
end 

function IsPickable(nItemIndex, nPlayerIndex) 
-- script viet hoa By http://tranhba.com  ho¹t ®éng kú kÕt thóc thËp lÊy vËt phÈm kh«ng hÒ n÷a h÷u hiÖu 
local nCurDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nCurDate > JXANNIVERSARY3_ENDDATE) then 
Say(" lÇn nµy ho¹t ®éng ®· kÕt thóc , c¸m ¬n sù tham dù cña ngµi #", 0); 
return 1; 
end; 

if (JxAn_cloud_join() ~= 1) then 
return 0; 
end; 

return 1; 
end;
