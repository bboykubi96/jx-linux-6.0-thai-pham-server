-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##yirongmishu.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### d�ch dung b� thu�t bao h�m nhi�u m�t n� ��ch l� t�i lo�i v�t ph�m 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-11 09:36:28 

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

local tbMask = 
{ 
{szName = " b�ch y�u ki�u m�t n� ", tbProp = {0,11,496,1,0,0}, nExpiredTime = 48*60}, 
{szName = " b�ch th�nh Qu�n ch�a m�t n� ", tbProp = {0,11,497,1,0,0}, nExpiredTime = 48*60}, 
{szName = " chung linh t� m�t n� ", tbProp = {0,11,498,1,0,0}, nExpiredTime = 48*60}, 
{szName = " c� b�ch m�t n� ", tbProp = {0,11,499,1,0,0}, nExpiredTime = 48*60}, 
{szName = " �ao song ph��ng m�t n� ", tbProp = {0,11,500,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ��o thanh ch�n nh�n m�t n� ", tbProp = {0,11,501,1,0,0}, nExpiredTime = 48*60}, 
{szName = " hay nh� m�t n� ", tbProp = {0,11,502,1,0,0}, nExpiredTime = 48*60}, 
{szName = " �oan m�c du� m�t n� ", tbProp = {0,11,503,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ��ng t� m�t n� ", tbProp = {0,11,504,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ���ng b�t nhi�m m�t n� ", tbProp = {0,11,505,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  10 
{szName = " ���ng th�n m�t n� ", tbProp = {0,11,506,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ���ng thi�n t�m m�t n� ", tbProp = {0,11,507,1,0,0}, nExpiredTime = 48*60}, 
{szName = " nh� lu�t trong m�i m�t n� ", tbProp = {0,11,508,1,0,0}, nExpiredTime = 48*60}, 
{szName = " h� linh phi�u m�t n� ", tbProp = {0,11,509,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ng��i n�o ta m�t n� ", tbProp = {0,11,510,1,0,0}, nExpiredTime = 48*60}, 
{szName = " h� th�nh m�t n� ", tbProp = {0,11,511,1,0,0}, nExpiredTime = 48*60}, 
{szName = " b�ch heo m�t n� ", tbProp = {0,11,512,1,0,0}, nExpiredTime = 48*60}, 
{szName = " mai hoa l�c m�t n� ", tbProp = {0,11,513,1,0,0}, nExpiredTime = 48*60}, 
{szName = " huy�n gi�c ��i s� m�t n� ", tbProp = {0,11,514,1,0,0}, nExpiredTime = 48*60}, 
{szName = " lam linh c�ng t� m�t n� ", tbProp = {0,11,515,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  20 
{szName = " lan v�n nh� c� m�t n� ", tbProp = {0,11,516,1,0,0}, nExpiredTime = 48*60}, 
{szName = " li�u phi�u an m�t n� ", tbProp = {0,11,517,1,0,0}, nExpiredTime = 48*60}, 
{szName = " li�u thanh thanh m�t n� ", tbProp = {0,11,518,1,0,0}, nExpiredTime = 48*60}, 
{szName = " long m��i ba nh� m�t n� ", tbProp = {0,11,519,1,0,0}, nExpiredTime = 48*60}, 
{szName = " m�nh th��ng l��ng m�t n� ", tbProp = {0,11,520,1,0,0}, nExpiredTime = 48*60}, 
{szName = " M� Dung an m�t n� ", tbProp = {0,11,521,1,0,0}, nExpiredTime = 48*60}, 
{szName = " nguy�t dao dao m�t n� ", tbProp = {0,11,522,1,0,0}, nExpiredTime = 48*60}, 
{szName = " phi�n kh�ch m�t n� ", tbProp = {0,11,523,1,0,0}, nExpiredTime = 48*60}, 
{szName = " n�m m�i hi�p kh�ch ", tbProp = {0,11,524,1,0,0}, nExpiredTime = 48*60}, 
{szName = " n�m m�i hi�p n� ", tbProp = {0,11,525,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  30 
{szName = " thanh ni�n h�i ���ng m�t n� ", tbProp = {0,11,526,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr��ng th�nh h�i ���ng m�t n� ", tbProp = {0,11,527,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh ni�n l�a nh�n m�t n� ", tbProp = {0,11,528,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr��ng th�nh l�a nh�n m�t n� ", tbProp = {0,11,529,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh ni�n kim phong m�t n� ", tbProp = {0,11,530,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr��ng th�nh kim phong m�t n� ", tbProp = {0,11,531,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh ni�n l�i th�n ki�m c� ", tbProp = {0,11,532,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr��ng th�nh l�i th�n ki�m c� ", tbProp = {0,11,533,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh ni�n c��i s��ng m�t n� ", tbProp = {0,11,534,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr��ng th�nh c��i s��ng m�t n� ", tbProp = {0,11,535,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  40 
{szName = " thanh tuy�t s� th�i m�t n� ", tbProp = {0,11,536,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thi�u ni�n h�i ���ng m�t n� ", tbProp = {0,11,537,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thi�u ni�n l�a nh�n m�t n� ", tbProp = {0,11,538,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thi�u ni�n kim phong m�t n� ", tbProp = {0,11,539,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thi�u ni�n l�i th�n ki�m c� ", tbProp = {0,11,540,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thi�u ni�n c��i s��ng m�t n� ", tbProp = {0,11,541,1,0,0}, nExpiredTime = 48*60}, 
{szName = " t� t� hinh m�t n� ", tbProp = {0,11,542,1,0,0}, nExpiredTime = 48*60}, 
{szName = " t� t�n ngay m�t c� ", tbProp = {0,11,543,1,0,0}, nExpiredTime = 48*60}, 
{szName = " t� hi�p m�t n� ", tbProp = {0,11,544,1,0,0}, nExpiredTime = 48*60}, 
{szName = " to�n ky t� m�t n� ", tbProp = {0,11,545,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  50 
{szName = " � Ch�u gi�ng m�t n� ", tbProp = {0,11,546,1,0,0}, nExpiredTime = 48*60}, 
{szName = " Ho�ng H� gi�ng m�t n� ", tbProp = {0,11,547,1,0,0}, nExpiredTime = 48*60}, 
{szName = " v��ng t� m�t n� ", tbProp = {0,11,548,1,0,0}, nExpiredTime = 48*60}, 
{szName = " an hi�u tr�i m�t n� ", tbProp = {0,11,549,1,0,0}, nExpiredTime = 48*60}, 
{szName = " y�n h��ng m�t n� ", tbProp = {0,11,550,1,0,0}, nExpiredTime = 48*60}, 
{szName = " theo m�t mi�n m�t n� ", tbProp = {0,11,551,1,0,0}, nExpiredTime = 48*60}, 
{szName = " hay m�t m�t n� ", tbProp = {0,11,552,1,0,0}, nExpiredTime = 48*60}, 
{szName = " �o�n m�c b�n trong c� ", tbProp = {0,11,553,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ���ng h�o m�t n� ", tbProp = {0,11,554,1,0,0}, nExpiredTime = 48*60}, 
{szName = " th��ng nga m�t n� ", tbProp = {0,11,555,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  60 
{szName = " l�ng ti�u t� m�t n� ", tbProp = {0,11,556,1,0,0}, nExpiredTime = 48*60}, 
{szName = " l� chi�t mai m�t n� ", tbProp = {0,11,557,1,0,0}, nExpiredTime = 48*60}, 
{szName = " xu�n b� m�t n� ", tbProp = {0,11,558,1,0,0}, nExpiredTime = 48*60}, 
} 

function showMask(nIndex, nPlayerIndex, nItemIndex) 
local szTitle = " xin/m�i l�a ch�n ng�i c�n m�t n� " 
local tbOpt = {} 
local nMaskCount = getn(%tbMask) 
local nShowIndex = 0 
local nPerCount = 10 

nIndex = max(1, nIndex) 
nIndex = min(nIndex, nMaskCount) 
nShowIndex = nIndex 

for i=1,nPerCount do 
if nShowIndex > nMaskCount then 
break 
end 
tinsert(tbOpt, {%tbMask[nShowIndex].szName, queren, {nShowIndex, nPlayerIndex, nItemIndex}}) 
		nShowIndex = nShowIndex + 1	
end 

tinsert(tbOpt, {"Trang tr��c ", showMask, {nIndex - nPerCount, nPlayerIndex, nItemIndex}}) 
	if nShowIndex + 1 < nMaskCount then
tinsert(tbOpt, {"Trang k� ti�p ", showMask, {nShowIndex, nPlayerIndex, nItemIndex}}) 
end 
tinsert(tbOpt, {"R�i �i ", cancel}) 

CreateNewSayEx(szTitle, tbOpt) 
end 

function queren(nIndex, nPlayerIndex, nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 1 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V� b�o ��m ��i hi�p ��ch t�i s�n an to�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", nCount, nWidth, nHeight)) 
return 
end 

if CallPlayerFunction(nPlayerIndex, IsMyItem, nItemIndex) ~= 1 then 
return 
end 
if CallPlayerFunction(nPlayerIndex, RemoveItemByIndex, nItemIndex) ~= 1 then 
WriteLog("Bu�ng tha cho d�ch dung b� thu�t th�t b�i ") 
return 
end 
-- script viet hoa By http://tranhba.com  t�ng ch�n ��nh m�t n� 
CallPlayerFunction(nPlayerIndex, tbAwardTemplet.GiveAwardByList, tbAwardTemplet, %tbMask[nIndex],"S� d�ng d�ch dung b� thu�t ", 1) 
end 

function main(nItemIndex) 
showMask(1, PlayerIndex, nItemIndex) 
return 1 
end
