--xa phu nam nhac tran edit by mcteam
-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n d�ch tr�m phu xe ��i tho�i th� gi�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-16) t�m th�i che gi�u nhi�m v� # sau n�y n�ng vi�t m� l�i �� # 

CurStation = 11; 
Include("\\script\\global\\station.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\global\\skills_table.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  check_update() -- script viet hoa By http://tranhba.com  k� n�ng ��i m�i # m�n ph�i th�m ti�u ch� #2004-05-31# 
-- script viet hoa By http://tranhba.com  UTask_world15 = GetTask(15) 
-- script viet hoa By http://tranhba.com  if (UTask_world15 < 255) then 
-- script viet hoa By http://tranhba.com  Say("Phu xe # ai , b�y gi� l�m �n c�ng ng�y c�ng kh� l�m , v�n l� c�ng kh�ng c� thi�u ph� th��ng ��i gia �i th�n n�ng chi�c kia m� du ngo�n , nh�ng l� g�n nh�t kh�ng bi�t t� ��u m� tho�t ra m�t ��m h�c l� h�u , d�c theo ���ng ��nh c��p kh�ch nh�n , l�m ta l�m �n ��i b� �nh h��ng , n�u nh� c� ng��i c� th� �u�i �i nh�ng th� n�y h�c l� h�u l� t�t . ng��i gi�p ta �u�i �i m��i con con kh� , li�n c� th� mi�n ph� � ch� n�y c�a ta s� d�ng m�t l�n xe ng�a . ng�i mu�n ng�i xe sao ? ", 2,"Gi�p m�t tay /yes","Kh�ng gi�p m�t tay /no") 
-- script viet hoa By http://tranhba.com  SetTask(15, 1) 
-- script viet hoa By http://tranhba.com  else 
Say("Phu xe # ch�ng ta phu xe l�m l� kh� l�c ho�t , �n l� kh� c�c c�m , ng�i kh�e t�m gi�p �� m�t ch�t �i ? ", 4,"Nh�ng n�i �� �i qua /WayPointFun","Th�nh th� �� �i qua /StationFun","Tr� v� ��a �i�m c� /TownPortalFun","Kh�ng c�n /OnCancel"); 
-- script viet hoa By http://tranhba.com  end 
end; 

function yes() 
Task0013 = GetTaskTemp(13); 
if (Task0013 < 10) then -- script viet hoa By http://tranhba.com  kh�ng c� s�t ��o m��i con h�c l� h�u 
Say(" l�m phu xe th�t l� c�c kh� , c� l�c ngay c� ch�o tr�ng c�ng u�ng kh�ng h�n !", 4,"Nh�ng n�i �� �i qua /WayPointFun","Th�nh th� �� �i qua /StationFun","Tr� l�i ��a �i�m c� /TownPortalFun","Kh�ng c�n /OnCancel"); 
else 
SetTaskTemp(13, 0) 
Say("C�m �n ng��i gi�p ta �u�i �i h�c l� h�u # ta mi�n ph� t�i ng��i !", 4,"Nh�ng n�i �� �i qua /WayPointFun","Th�nh th� �� �i qua /StationFun","Tr� l�i ��a �i�m c� /TownPortalFun","Kh�ng c�n /OnCancel") 
end 
end; 

function OnCancel() 
Say("Phu xe # c� ti�n tr� l�i ng�i xe �i . ",0) 
end; 
