-- script viet hoa By http://tranhba.com  ��i L� ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> ta l� r�n v� h�c v� ch� t�o binh kh� m� x�y , �ao ki�m c�n s�ng , m��i t�m m�n binh kh� ��u c� , ��i hi�p mu�n mua lo�i n�o ?" 

function main(sel) 
tiejiang_city(TIEJIANG_DIALOG); 
end; 

function yes() 
Sale(16); -- script viet hoa By http://tranhba.com  t�m th�i ��nh v� 25 
end; 
