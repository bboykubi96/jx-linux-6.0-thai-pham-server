
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n chi Vi�t Nam b�n m�t m�i t�ng nam nh�c tr�n -- script viet hoa By http://tranhba.com > h�c sa ��ng 

-- script viet hoa By http://tranhba.com  Edited by t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  2008/06/26 15:51 

-- script viet hoa By http://tranhba.com  � nam nh�c tr�n ph�a ��ng c�a ��ng gia t�ng trap �i�m , �i tr��c h�c sa ��ng 
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
	local sz_trapscript = "\\script\\������\\������\\trap\\nanyuezhentoheishadong.lua";
local n_mapid = 54; -- script viet hoa By http://tranhba.com  nam nh�c tr�n 
local n_mapidx = SubWorldID2Idx(n_mapid); -- script viet hoa By http://tranhba.com  b�n �� t�c d�n 

if (n_mapidx >= 0) then 
for i = 1, getn(tb_trappos) do 
AddMapTrap(n_mapid, tb_trappos[i].xpos, tb_trappos[i].ypos, sz_trapscript); 
end 
end 
end 
