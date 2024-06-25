
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n chi ViÖt Nam b¶n mét míi t¨ng nam nh¹c trÊn -- script viet hoa By http://tranhba.com > h¾c sa ®éng 

-- script viet hoa By http://tranhba.com  Edited by tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  2008/06/26 15:51 

-- script viet hoa By http://tranhba.com  ë nam nh¹c trÊn phÝa ®«ng cöa ®éng gia t¨ng trap ®iÓm , ®i tr­íc h¾c sa ®éng 
-- script viet hoa By http://tranhba.com  ====================================================== 


function add_heisha_entertrap() 
local tb_trappos = { 
{xpos= 55584 ,ypos= 100736 }, 
{xpos= 55616 ,ypos= 100736 }, 
{xpos= 55648 ,ypos= 100736 }, 
{xpos= 55584 ,ypos= 100768 }, 
{xpos= 55616 ,ypos= 100768 }, 
{xpos= 55648 ,ypos= 100768 }, 
{xpos= 55616 ,ypos= 100800 }, 
{xpos= 55648 ,ypos= 100800 }, 
{xpos= 55680 ,ypos= 100800 }, 
{xpos= 55648 ,ypos= 100832 }, 
{xpos= 55680 ,ypos= 100832 }, 
{xpos= 55712 ,ypos= 100832 }, 
{xpos= 55648 ,ypos= 100864 }, 
{xpos= 55680 ,ypos= 100864 }, 
{xpos= 55712 ,ypos= 100864 }, 
{xpos= 55680 ,ypos= 100896 }, 
{xpos= 55712 ,ypos= 100896 }, 
{xpos= 55744 ,ypos= 100896 }, 
{xpos= 55712 ,ypos= 100928 }, 
{xpos= 55744 ,ypos= 100928 }, 
}; 
	local sz_trapscript = "\\script\\Á½ºþÇø\\ÄÏÔÀÕò\\trap\\nanyuezhentoheishadong.lua";
local n_mapid = 54; -- script viet hoa By http://tranhba.com  nam nh¹c trÊn 
local n_mapidx = SubWorldID2Idx(n_mapid); -- script viet hoa By http://tranhba.com  b¶n ®å t¸c dÉn 

if (n_mapidx >= 0) then 
for i = 1, getn(tb_trappos) do 
AddMapTrap(n_mapid, tb_trappos[i].xpos, tb_trappos[i].ypos, sz_trapscript); 
end 
end 
end 
