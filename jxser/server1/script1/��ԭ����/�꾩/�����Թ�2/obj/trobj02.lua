-- script viet hoa By http://tranhba.com description: bi�n kinh ph� thi�t th�p t�ng hai b�o r��ng ng�y nh�n d�y 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
UTask_trsub01 = GetTask(21) 
	if (UTask_tr == 50*256+20) and (HaveItem(161) == 1) then
DelItem(161) 
if (GetBit(UTask_trsub01,2) == 0) then 
UTask_trsub01 = SetBit(UTask_trsub01,2,1) 
SetTask(21, UTask_trsub01) 
AddNote("M� ra th� hai c� quan ") 
Msg2Player("M� ra t�ng th� hai d�m b�o r��ng , m� ra th� hai c� quan ") 
			if (UTask_trsub01 == 7) then 			-- script viet hoa By http://tranhba.com  bin: 100 + 010 + 001
Talk(1,"","Ng��i �� m� ra t�ng th� ba c� quan , c�u ra nh�t � trong th�p ��ch ph��ng h�p nh� ") 
Msg2Player("Ng��i �� m� ra t�ng th� ba c� quan , c�u ra nh�t � trong th�p ��ch ph��ng h�p nh� ") 
				SetTask(4, 50*256+50)
AddNote("T�ng ba c� quan �� to�n b� m� ra , c�u ra nh�t � trong th�p ��ch ph��ng h�p nh� ") 
end 
else 
Talk(1,"","C� quan b� m� ra ") 
end 
	elseif (UTask_tr == 50*256+20) and (GetBit(UTask_trsub01,2) == 1) then
Talk(1,"","C� quan b� m� ra ") 
	elseif (UTask_tr == 50*256+50)  then
Talk(1,"","C� quan b� m� ra ") 
else 
Talk(1,"","Kh�ng c� c�i ch�a kh�a th� kh�ng th� m� ra n�y c� quan ") 
end 
end; 
