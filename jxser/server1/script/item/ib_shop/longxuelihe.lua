-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##longxuelihe.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### long huy�t h�p qu� s� d�ng nh�ng ��t ���c 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-11 11:54:21 

Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{ 
{szName = " long huy�t ho�n ", tbProp = {6,1,2117,1,0,0}, nCount = 3}, 
{szName = " t�ng kim nhanh ch�ng ho�n ", tbProp = {6,1,190,1,0,0}, nCount = 5}, 
{szName = " t�ng kim b�n ngo�i ph� ho�n ", tbProp = {6,1,178,1,0,0}, nCount = 5}, -- script viet hoa By http://tranhba.com  v�t ph�m ID kh�ng x�c ��nh 
} 


function main(nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 5 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V� b�o ��m ��i hi�p ��ch t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", nCount, nWidth, nHeight)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph�n �o�n t�i �eo l�ng kh�ng gian 
tbAwardTemplet:GiveAwardByList(%tbAward,"S� d�ng long huy�t h�p qu� ", 1) 
return 0 
end
