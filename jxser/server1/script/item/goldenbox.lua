-- script viet hoa By http://tranhba.com  ng�u nhi�n b�o r��ng v�t ph�m # ng�u nhi�n ��t ���c m�t d�ng v�t ph�m # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-06-01) 

function main(sel) 
p=random(0,99) 
if (p < 5) then 
p = random(238,240) 
AddEventItem(p) -- script viet hoa By http://tranhba.com  th�y tinh 
Msg2Player("Ng��i l�y ���c m�t vi�n th�y tinh #") 
elseif (p < 10) then 
AddEventItem(353) -- script viet hoa By http://tranhba.com  �� th�m 
Msg2Player("Ng��i l�y ���c m�t vi�n �� th�m b�o th�ch #") 
elseif (p < 20) then 
AddItem(6,1,15,1,0,0,0) -- script viet hoa By http://tranhba.com  phi phong 
Msg2Player("Ng��i l�y ���c m�t m�n phi phong #") 
elseif(p < 40) then 
AddItem(6,1,18,1,0,0,0) -- script viet hoa By http://tranhba.com  t�m t�m t��ng �n 
Msg2Player("Ng��i l�y ���c m�t con t�m t�m t��ng �n ph� #") 
elseif (p < 65) then 
AddItem(6,1,19,1,0,0,0) -- script viet hoa By http://tranhba.com  c�t t��ng t�i 
Msg2Player("Ng��i l�y ���c m�t h�u n�m c�t t��ng t�i #") 
else 
AddItem(6,0,20,1,0,0,0) -- script viet hoa By http://tranhba.com  hoa h�ng m�a 
Msg2Player("Ng��i l�y ���c m�t ��a hoa h�ng #") 
end 
return 0 
end 
