-- script viet hoa By http://tranhba.com  v� th�n ban ph�c 
-- script viet hoa By http://tranhba.com wushenbless.lua 
-- script viet hoa By http://tranhba.com  s� d�ng sau nh�ng ��t ���c 2 gi� ( h� th�ng th�i gian ) � t�ng kim # tin/th� khi�n cho # x�ng quan # li�n cu�c so t�i # d� t�u # huy ho�ng chi trong ��m �� c�ng hi�n g�p ��i tr�ng th�i 
-- script viet hoa By http://tranhba.com Task2509 

function main(nItemIdx) 
local nItemTime = GetItemParam(nItemIdx,1); 
local nCurTime = GetCurServerTime(); -- script viet hoa By http://tranhba.com  gi�y 
if (nItemTime < nCurTime) then 
Msg2Player("C�i n�y v�t ph�m �� qua li�u h�u hi�u k� , kh�ng th� s� d�ng n�a li�u . "); 
return 0; 
end; 
	local nEndTime = nCurTime + 2*60*60;
SetTask(2509, nEndTime); 
Msg2Player("Ng�i ��t ���c 2 canh gi� � t�ng kim ��i chi�n # tin/th� khi�n cho nhi�m v� # th�i gian khi�u chi�n # v� l�m li�n cu�c so t�i # d� t�u nhi�m v� # huy ho�ng chi trong ��m s� l�y ���c �� c�ng hi�n g�p b�i ��ch tr�ng th�i . ") 
end; 

function GetDesc(nItemIdx) 

	local nYear = GetItemParam(nItemIdx, 2) + 2000;
local nMonth = GetItemParam(nItemIdx, 3); 
local nDate = GetItemParam(nItemIdx, 4); 

return " s� d�ng k� h�n #<color=blue>"..nYear.." n�m "..nMonth.." th�ng "..nDate.." ng�y " 
end 
