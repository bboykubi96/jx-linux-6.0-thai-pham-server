-- script viet hoa By http://tranhba.com Create by GGH 
-- script viet hoa By http://tranhba.com  t�m b�o th�p c�m t�ng t� 

-- script viet hoa By http://tranhba.com ʲ������=����2+����2+��Ҷ2+����2+����2+ţ��2(����1,000�ľ���,�ɹ���50��)
-- script viet hoa By http://tranhba.com �۽�ʲ�����ӣ�ʲ������+��������ԭ��1(����5,000�ľ���,�ɹ���50��)
-- script viet hoa By http://tranhba.com �˱�ʲ�����ӣ��۽�ʲ������+��������ԭ��1(����30,000�㾭��,�ɹ���30��)
-- script viet hoa By http://tranhba.com �ٹ�ʲ�����ӣ��˱�ʲ������+��������ԭ��1(����100,000�㾭��,�ɹ���20��)
-- script viet hoa By http://tranhba.com ˮ��ʲ�����ӣ��ٹ�ʲ������+��������ԭ��1(����500,000��ľ���,�ɹ���10��)
-- script viet hoa By http://tranhba.com ��ԭʲ�����ӣ�ˮ��ʲ������+��������ԭ��1(����1��000,000,000�㾭��,�ɹ���3��)
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # 
-- script viet hoa By http://tranhba.com 1# t�i li�u ��y �� h�t 
-- script viet hoa By http://tranhba.com 2#1000 l��ng b�c 
-- script viet hoa By http://tranhba.com  gia c�ng �i�u ki�n # kh�ng ph�i l� khu�t nguy�n th�p c�m t�ng t� ra ��ch c�c lo�i th�p c�m t�ng t� c�ng ��m nhi�m m�t t�ng t� nguy�n li�u #1000 l��ng b�c 
-- script viet hoa By http://tranhba.com  th�t b�i k�t qu� # ��t ���c th�p c�m t�ng t� # v� lu�n ng��i gia c�ng tr��c l� c�i g� th�p c�m t�ng t� # , gia c�ng d�ng t�ng t� t�i li�u bi�n m�t , kh�ng ho�n tr� 1000 l��ng b�c . 
-- script viet hoa By http://tranhba.com  h�n ch� n�i r� # ho�t ��ng k�t th�c l�c c�ng hi�u bi�n m�t # t�c thay ��i ch�t # , m�i � tuy�n m�t gi� ch� c� th� �n m�t , m�t vai tr� �n v��t qua 20,000,000 ch�t kinh nghi�m ��ch c�c lo�i th�p c�m t�ng t� sau th� kh�ng th� �n n�a b�t k� th�p c�m t�ng t� . 


function main(sel) 
firsttime = GetTask(139) 
num = GetTask(138) 
msg={ " ng��i �n r�i qu� nhi�u th�p c�m t�ng t� , �� kh�ng th� ti�p t�c �n r�i #", 
" ng��i ��t ���c 30000 ch�t kinh nghi�m tr� gi� #", 
" ng��i c�m th�y r�t b�o , ph�i ��i m�t �o�n th�i gian m�i c� th� �n th�p c�m t�ng t� #", 
" ng��i �n r�i nhi�u �� ��ch t�ng t� , ��y �� l� ng��i cu�i c�ng #" 
} 



if(num > 20000000) then -- script viet hoa By http://tranhba.com  s� d�ng kinh nghi�m l�n h�n 20,000,000 , kh�ng th� �n n�a 
Msg2Player(msg[1]) 
return 1 
else 
		if (GetGameTime() > firsttime + 60 * 60) then
AddOwnExp(30000) -- script viet hoa By http://tranhba.com  kinh nghi�m tr� gi� gia t�ng 30000 
Msg2Player(msg[2]) 
			SetTask(138,num+30000)
SetTask(139, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t � tuy�n th�i gian 
if(GetTask(138)>20000000) then 
Msg2Player(msg[4]) 
end 
return 0 
elseif (firsttime == 0) then 
AddOwnExp(30000) -- script viet hoa By http://tranhba.com  kinh nghi�m tr� gi� gia t�ng 30000 
Msg2Player(msg[2]) 
			SetTask(138,num+30000)
SetTask(139, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t � tuy�n th�i gian 
if(GetTask(138)>20000000) then 
Msg2Player(msg[4]) 
end 
return 0 
else 
Msg2Player(msg[3]) 
return 1 
end 

end 
end
