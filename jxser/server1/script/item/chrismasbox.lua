-- script viet hoa By http://tranhba.com  ng�u nhi�n gi�ng sinh l� ph�m h�p # ng�u nhi�n ��t ���c m�t ng�y l� m�t n� # 
-- script viet hoa By http://tranhba.com  By: zhengfei(2004-12-13) 

function main(sel) 
p=random(0,99) 
if (p < 50) then 
AddItem(0,11,70,0,0,0,0) -- script viet hoa By http://tranhba.com  �ng gi� n� en 
Msg2Player("Gi�ng sinh vui v� # ng��i l�y ���c m�t �ng gi� n� en ��ch m�t n� nga #") 
else 
AddItem(0,11,71,0,0,0,0) -- script viet hoa By http://tranhba.com  gi�ng sinh thi�n s� 
Msg2Player("Gi�ng sinh vui v� # ng��i l�y ���c m�t gi�ng sinh thi�n s� ��ch m�t n� nga #") 
end 
return 0 
end 
