-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##dabaijuwanlibao.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### r� r�ng c�u ho�n l� t�i t�p h�p ba r� r�ng c�u ho�n 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-12 10:38:31 

Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{ 
{szName = " r� r�ng c�u ho�n ", tbProp = {6,1,130,1,0,0}, nCount = 3}, 
} 


function main(nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 3 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V� b�o ��m ��i hi�p ��ch t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", nCount, nWidth, nHeight)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph�n �o�n t�i �eo l�ng kh�ng gian 
tbAwardTemplet:GiveAwardByList(%tbAward,"S� d�ng r� r�ng c�u ho�n l� t�i ", 1) 
return 0 
end
