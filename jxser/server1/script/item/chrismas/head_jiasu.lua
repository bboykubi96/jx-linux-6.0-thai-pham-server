-- script viet hoa By http://tranhba.com ITEMTYPE 
-- script viet hoa By http://tranhba.com SKILLTYPE 
-- script viet hoa By http://tranhba.com SKILLLEVEL2 
-- script viet hoa By http://tranhba.com SKILLLEVEL3 
-- script viet hoa By http://tranhba.com SKILLLEVEL41 
-- script viet hoa By http://tranhba.com SKILLLEVEL42 
-- script viet hoa By http://tranhba.com SKILLEFECT 

Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx and race_ItemMapCheck() == 0) then 
Talk(1, "","N�i ��y �� kh�ng th� s� d�ng ."); 
return 1; 
end; 
AddSkillState(SKILLTYPE, SKILLLEVEL2, SKILLLEVEL3, SKILLLEVEL41 * SKILLLEVEL42); -- script viet hoa By http://tranhba.com  th� hai tham s� l� k� n�ng ��ch c�p b�c # 
Msg2Player("<#> ng��i thu ���c <color=0xB5FDD7>"..SKILLEFECT.."<color>"); 
end;
