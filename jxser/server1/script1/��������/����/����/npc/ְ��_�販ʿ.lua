-- script viet hoa By http://tranhba.com  ��i L� # ch�c n�ng # tr� b�c s� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 

-- script viet hoa By http://tranhba.com  c�c c�p b�c ��ng b�n k�ch t�nh nhi�m v� th�t th� x� l� v�n ki�n 
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");

function main() 

-- script viet hoa By http://tranhba.com  kh�ng x� nh�n b� m�t ��ch nhi�m v� x� l� 
if taskProcess_002_02:doTaskEntity()~=0 then return end; 
if taskProcess_002_11:doTaskEntity()~=0 then return end; 

Talk(3,"","Ch�ng ta tr� l� V�n Nam n�i danh nh�t , ch�ng ta ��i L� n�i danh tr� l� h� quan �� tr� . ","H� quan �� tr� ngo�i h�nh kh�ng gi�ng nhau , l�n gi�ng nh� ch�n m�t d�ng nh� / ti�u nh�n gi�ng nh� n�t �o m�t d�ng .","C� nh�n v�n # h� quan tr� , �� n��c s�ng . h� quan tr� nh�t ��nh ph�i d�ng n��c s�ng cua m�i ��ng . tr� cua ho�n h�u l� qu�t m�u v�ng , m�i h��ng n�ng , l� c�c ph�m . .") 
end; 
