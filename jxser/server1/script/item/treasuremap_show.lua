
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online ng�u nhi�n nhi�m v� t�ng b�o �� v�t ph�m s� d�ng x� l� v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/10/19 PM 14:22 

-- script viet hoa By http://tranhba.com  ch� c� bu�i t�i b�n h� l� chung m�t ch� ��ch 
-- script viet hoa By http://tranhba.com  h�n ��n g�n n�ng , �m n�ng 
-- script viet hoa By http://tranhba.com  ng�n tay c�a h�n c�ng da 
-- script viet hoa By http://tranhba.com  n�ng nh�n h�n , trong l�ng m�m m�i m� �au ��n 
-- script viet hoa By http://tranhba.com  n�ng mu�n , n�ng c�n l� th��ng h�n 
-- script viet hoa By http://tranhba.com  n�ng kh�ng mu�n o�n tr�ch c�i g� 
-- script viet hoa By http://tranhba.com  m�i ng�y bu�i t�i b�n h� ��u � ��y �n �i 
-- script viet hoa By http://tranhba.com  n�ng kh�ng bi�t , tr� lo�i n�y ti�p x�c , an to�n c�a n�ng c�m c�ng �m �p , c�n c� th� t� n�i n�o l�y ���c 
-- script viet hoa By http://tranhba.com  n�ng th�ch trong nh�y m�t �� . ph�ng ph�t � b�ng t�i ��ch bi�n r�ng th��ng , tr�i h��ng th� gi�i cu�i 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\random\\treasure_head.lua");  -- script viet hoa By http://tranhba.com  �ر�ͼ���͹���


function GetItemDescription(name, magiclevel1, magiclevel2, magiclevel3, magiclevel4, magiclevel5, magiclevel6) 

local nRow = magiclevel1; 

if magiclevel2==0 then 
return "<enter> m�t t� v� c� n�i n��c ��a m�ch ch� v� tr� ��ch b�n ch� h�nh , tin ��n n�y �� ti�u th�c li�u th�n b� b�o t�ng ��ch s� t�i . <enter> v�y m� nh�n qua �� c� r�ch kh�ng ch�u n�i , t�a h� ch� c� <color=green> long tuy�n th�n <color> ��ch l�o nh�n <color=green> ph� l�i s�ch <color> m�i c� th� gi�i ��c n�y �� . <enter>"; 
else 
return showTreasureText(nRow) 
end; 

end; 

-- script viet hoa By http://tranhba.com  bi�u hi�n t�ng b�o �� v� tr� c� th� tin t�c 
function showTreasureText(nRow) 

local strInfo = tabTreaPos:getCell("Text", nRow); 
local picPath = tabTreaPos:getCell("Pic", nRow); 

return "<enter> m�t t� v� c� n�i n��c ��a m�ch ch� v� tr� ��ch b�n ch� h�nh , tin ��n n�y �� ti�u th�c li�u th�n b� b�o t�ng ��ch s� t�i . <enter><enter>".. 
" �� th��ng lo�ng tho�ng cho th�y n�i n�y l� <color=green>"..strInfo.."<color><enter><enter>".. 
"<color=yellow> �an k�ch b�n ph�i ki�n l� ���c b�t ��u ��o m�c <color><enter>"; 

end;
