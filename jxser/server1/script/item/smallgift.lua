-- script viet hoa By http://tranhba.com  m�i xu�n ti�u l� t�i 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

function main(sel) 
-- script viet hoa By http://tranhba.com  b�o th�ch #10# t� l� ��a b�o th�ch m�t vi�n # 
p=random(1,100); 
if(p<=10)then 
		AddEventItem((238+mod(p,3)))
end; 

-- script viet hoa By http://tranhba.com  bao ti�n l� x� # gi� tr� 10000 ��ch bao ti�n l� x� m�t # 
AddItem(6,1,14,1,0,0,0); 

-- script viet hoa By http://tranhba.com  ph�o b�ng #1 c� ph�o b�ng # 
AddItem(6,0,11,1,0,0,0); 
return 0 
end
