-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n th� r�n ��i tho�i 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> Vi�c bu�n b�n � ��y r�t thu�n l�i, ��n ngay c� c�c huynh �� c�a Thi�n V��n Bang th��ng ��n ��y nh� ta ch� t�o binh kh�." 

function main(sel) 
tiejiang_village() 
end; 


function yes() 
Sale(37); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 
