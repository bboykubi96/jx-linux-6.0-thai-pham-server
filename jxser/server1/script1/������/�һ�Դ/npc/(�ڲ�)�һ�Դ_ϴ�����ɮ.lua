-- script viet hoa By http://tranhba.com  t�m k� n�ng �i�m ��ch ph�n b�i t�ng ## b�n trong tr�c chuy�n d�ng b�n # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-29) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-12-10) 

function main() 
Say("Ng��i ngh� t�y t�y sao ! c� th� # tr��c cho ta ch�y ��m l�ng # bi�t ph�i l�m sao sao ?",2,"��y l� 10 v�n l��ng , xin/m�i ��i s� nh�n l�y /pay_yes","T�nh / ch�n �i /rollback_no") 
end; 

function pay_yes() 
if (GetCash() >= 100000) then 
Pay(100000) 
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c�ng kh�c thao t�c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � kh�c thao t�c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh tr� k� n�ng c�ng tr� v� t�t c� k� n�ng �i�m # bao g�m khinh c�ng ch� ��c th� k� n�ng # 
x = 0 
		if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
		if (j ~= -1) then x = x + j end
rollback_point = n - x -- script viet hoa By http://tranhba.com  �em k� n�ng �i�m l�m � kh�ng �i�m ��m ho�n tr� , nh�ng tr��c kh�u tr� khinh c�ng ch� 
AddMagicPoint(rollback_point) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua khinh c�ng l� th�m tr� v� nguy�n c� c�p b�c 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � gi�ng nhau x� l� 
if (GetTask(13) > 256) then -- script viet hoa By http://tranhba.com  l� d�ng b�o th�ch t�m ��ch �i�m 
Msg2Player("D�ng 3 vi�n th�y tinh t�m k� n�ng �i�m . ng��i h�n v� nh� ngh� ng�i m�t ch�t !") 
Say("D�ng 3 vi�n th�y tinh t�m k� n�ng �i�m . nh�ng l� k� mu�n ti�u hao 3 c� k� n�ng �i�m . ng��i h�n v� nh� ngh� ng�i m�t ch�t .",1,"T�t /KickOutSelf") 
else 
Msg2Player("D�ng 3 vi�n th�y tinh t�m k� n�ng �i�m . nh�ng l� k� mu�n ti�u hao 3 c� k� n�ng �i�m . ng��i h�n v� nh� ngh� ng�i m�t ch�t !") 
Say("D�ng 3 vi�n th�y tinh t�m k� n�ng �i�m . nh�ng l� k� mu�n ti�u hao 3 c� k� n�ng �i�m . ng��i h�n v� nh� ngh� ng�i m�t ch�t !",1,"T�t /KickOutSelf") 
end 
else 
Talk(1,"","��y ch�nh l� ng��i th�nh � sao ? l�i nh� v�y ng��i c�n l� tr� v� �i th�i ! ") 
end 
end 

function no() 
end 
