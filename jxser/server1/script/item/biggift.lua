-- script viet hoa By http://tranhba.com  m�i xu�n ��i l� t�i 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

function main(sel) 
-- script viet hoa By http://tranhba.com  trang b� #10# t� l� ��a huy�n kh�c phi phong m�t m�n 
p=random(1,100); 
if(p<=10)then 
AddItem(6,1,15,1,0,0,0) 
end; 

-- script viet hoa By http://tranhba.com  b�o th�ch #50# t� l� ��a b�o th�ch m�t vi�n # 
p=random(1,100); 
if(p<=50)then 
		AddEventItem((238+mod(p,3)))
end; 

-- script viet hoa By http://tranhba.com  bao ti�n l� x� # gi� tr� 100000 ��ch bao ti�n l� x� m�t # 
AddItem(6,1,13,1,0,0,0); 

-- script viet hoa By http://tranhba.com  ph�o b�ng #2 c� ph�o b�ng # 
AddItem(6,0,11,1,0,0,0); 
AddItem(6,0,11,1,0,0,0); 
return 0 
end
