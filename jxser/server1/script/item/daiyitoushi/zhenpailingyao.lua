-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n m�t tr�n ph�i linh d��c 
-- script viet hoa By http://tranhba.com  �n v�o sau c� th� t�ng l�n 5 �i�m ti�m n�ng �i�m 
-- script viet hoa By http://tranhba.com  c�ng tr�n ph�i linh d��c c�ng d�ng thay ��i l��ng , th� nh�t Byte ghi ch�p linh �an s� d�ng s� l�n , th� hai Byte ghi ch�p linh d��c s� d�ng s� l�n 

-- script viet hoa By http://tranhba.com  Edited by t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  2008/03/03 23:29 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\lib\\gb_modulefuncs.lua")


TSK_ZHENPAILINGDAN_USECNT = 1882; 
TSK_TOUSHI_FLAG = 1881 -- script viet hoa By http://tranhba.com  � mang ngh� ��u s� � th�i lui ra m�n ph�i d�u hi�u 
-- script viet hoa By http://tranhba.com  0# kh�ng th�n th�nh chuy�n ��u m�n ph�i ho�c chuy�n ��u m�n ph�i th�nh c�ng # c�ng chuy�n ch�c s� l�n c�ng nhau quy�t ��nh ##1# th�nh c�ng th�n th�nh chuy�n ��u m�n ph�i # 
TSK_TOUSHI_COUNT = 1883 -- script viet hoa By http://tranhba.com  � mang ngh� ��u s� � chuy�n ch�c ��ch s� l�n 

function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  if (gb_GetModule("SWITH_DAIYITOUSHI") ~= 1) then 
-- script viet hoa By http://tranhba.com  Say("Th�t xin l�i , n�n ch�c n�ng t�m th�i b� nh�t , m� ra th�i gian s� � ch� m�t ch�t th�ng b�o ", 0); 
-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end 

local nValue = GetTask(TSK_ZHENPAILINGDAN_USECNT); 
local nTimes = GetByte(nValue, 2); 

local str ={ 
" nghi�n c�u m�t h�i tr�n ph�i linh d��c c�n ch�a ph�i s� s� d�ng ( kh�ng chuy�n m�n ph�i kh�ng th� s� d�ng )", 
" tr�n ph�i linh d��c m�i v�a �n v�o , �an �i�n l�p t�c li�n sinh ra m�t c� nhi�t kh� l�u h��ng k� kinh b�t m�ch ( gia t�ng 5 c� ti�m n�ng �i�m )", 
" tay c�m tr�n ph�i linh d��c ph�t hi�n n� kh�ng c� c�ng hi�u li�u ( �� s� d�ng ��n cao nh�t th��ng h�n li�u )" 
} 

if(nTimes >= 15) then -- script viet hoa By http://tranhba.com  s� d�ng v��t qua s� l�n 
Msg2Player(str[3]) 
return 1; 
-- elseif (GetTask(TSK_TOUSHI_FLAG) == 0 and GetTask(TSK_TOUSHI_COUNT) <= 0) then -- script viet hoa By http://tranhba.com  chuy�n ��u m�n ph�i th�nh c�ng m�i c� th� s� d�ng 
-- Msg2Player(str[1]) 
-- return 1; 
else -- script viet hoa By http://tranhba.com  t��ng th��ng 5 �i�m ti�m n�ng �i�m 
AddProp(5); 
		SetTask(TSK_ZHENPAILINGDAN_USECNT, SetByte(nValue, 2, nTimes + 1));
Msg2Player(str[2]); 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tAdd Prop 5 by ZhenPaiLingYao", 
" tr�n ph�i linh d��c ", 
GetLocalDate("%Y-%m-%d %X"), 
GetName(), GetAccount())); 
return 0; 
end 
end 
