-- script viet hoa By http://tranhba.com  Giang Nam khu la ti�u s�n ng��i �i ���ng _ v�n b� �ng ch� .lua # ti�u di�t h�i hoa t�c nhi�m v� # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function main(sel) 
Uworld43 = GetTask(43) 
if (Uworld43 == 50) then 
Talk(5,"U43_50","Ng��i �� c� ch�a kh�a , c�n ph�i h�i ta c�i g� ?","Tr� Tr� vi ng��c , s� b� ng��i trong thi�n h� th�a m�ng !","N�i b�y ! c�i g� l� ch�nh c�i g� l� t� ? ta li�n th�ch l�m �c , ng��i c� th� l�m g� ta ?","V�y ta m� ��c t�i v�i !","H� ! ng��i c�n ch�a c� t� c�ch c�ng ta ��u # �� cho ta s�n �ng �� t� c�ng ng��i ch�i m�t h�i ") 
elseif (Uworld43 == 70) then -- script viet hoa By http://tranhba.com  ��nh xong s�n �ng , t�i b�t c�i ch�a kh�a 
Talk(2,"U43_70","Mau ��a c�i ch�a kh�a giao ra ��y !","H�o ti�u t� # ch� nh�n nh�t ��nh s� v� l�i v�n hai b� b�o th� ") 
elseif (Uworld43 >= 80) and (Uworld43 < 100) and (HaveItem(382) == 0) then -- script viet hoa By http://tranhba.com  ho�c sau ��ch ��m nhi�m m�t b��c trung c�i ch�a kh�a m�t 
AddEventItem(382) 
Msg2Player("Ti�p t�c l�y ���c v�n thi . ") 
Talk(1,"","Xem m�t ch�t ti�u t� ng��i c� th� l�m c�i g� . c�i ch�a kh�a � n�i n�y , n�u l� ng��i c� th� nh�n ta 3 chi�u li�n cho ng��i ") 
elseif (Uworld43 >= 80) and (Uworld43 < 255) and (HaveItem(382) == 1) then 
Talk(1,"","Ng��i �� c� ch�a kh�a , c�n ph�i h�i ta c�i g� ?") 
elseif (Uworld43 == 60) then -- script viet hoa By http://tranhba.com  ��i tho�i ho�n th�nh , ��nh cu�ng lang kh�ng ho�n th�nh 
Talk(1,"","H� # ng��i c�n ch�a c� t� c�ch c�ng ta ��u # tr��c h�t �� cho ta s�n �ng �� t� c�ng ng��i ch�i m�t c�i ") 
elseif (Uworld43 >= 255) then 
Talk(1,"","Ng��i th�t �em Thi�u ch� gi�t ?") 
else 
Talk(1,"","Ch� n�i lung tung # ch�a t�ng xem qua b� d�ng b�y gi� sao ?") 
end 
end; 

function U43_50() 
SetTask(43,60) 
Msg2Player("Ng��i th�t �em Thi�u ch� gi�t ? ") 
end 

function U43_70() 
SetTask(43,80) 
AddEventItem(382) 
Msg2Player(" l�y ���c v�n thi , tr� l�i tr��c khi an giao cho c�ng sai ��i ca , th��ng l��ng chuy�n k� ti�p ") 
end 
