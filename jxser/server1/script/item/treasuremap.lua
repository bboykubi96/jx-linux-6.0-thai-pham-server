
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
Include("\\script\\activitysys\\g_activity.lua")			-- script viet hoa By http://tranhba.com ��༭��
Include("\\script\\activitysys\\playerfunlib.lua")		-- script viet hoa By http://tranhba.com ��༭��

function main(nIndex) 

local nRow = GetItemMagicLevel(nIndex, 1); 

if nRow==0 or nRow==nil then 
Msg2Player("<color=Orange> t� n�y t�ng b�o �� �� c� r�ch kh�ng ch�u n�i , kh�ng c� b�t k� c�ch d�ng li�u . <color>"); 
return 1; 
end; 

local strInfo = tabTreaPos:getCell("Text", nRow); 
local picPath = tabTreaPos:getCell("Pic", nRow); 

local nMapState = GetItemMagicLevel(nIndex, 2); 

local nResult = 0; 
local picLink = ""; 

if nMapState==0 then 
Msg2Player("<color=Orange> ng��i h��ng v� ph�a t�ng b�o �� � ch� n�y ��ng ��o t�y t�c , kh�ng thu ho�ch ���c g� �� hay l� �i long tuy�n th�n t�m ph� l�i s�ch ch� gi�o m�t ch�t �i #<color>"); 
return 1; 
else 
picLink = "<link=image:"..picPath.."> t�ng b�o �� ��ch tin t�c #<link> t�n b� l�n b� l�n b�c ��nh �i�m sau , ng��i r�t c�c � ph� l�i s�ch ��ch d��i s� ch� �i�m lo�ng tho�ng � n�i n�y t� kh�ng tr�n v�n kh�ng ho�n to�n t�ng b�o �� trung ph�n bi�t ra kh�i b�o t�ng ��ch ��i kh�i v� tr� . d�a v�o ng��i tr��c kia phong ph� l�ch duy�t c�ng b�n nh�y ��ch quan s�t l�c , ng��i ph�t hi�n c�i n�y t�a h� l� <color=yellow>"..strInfo.."<color> . "; 
Describe(picLink, 2, 
" b�t ��u ��o m�c /#useTreasureMap("..nIndex..")", 
" t�t /OnExit"); 
return 1; 
end; 

end; 

function useTreasureMap(nIndex) 

local nResult = MapCheckTreasurePos(nIndex); 
local nDelResult = 0; 

if nResult==1 then 

-- script viet hoa By http://tranhba.com  n�u nh� th�nh c�ng ��o ra �� , l� �em n�n v�t ph�m th� ti�u 
nDelResult = RemoveItemByIndex(nIndex); 

if nDelResult==1 then 
UseTreasurePos(); 

G_ACTIVITY:OnMessage("FinishCangBaoTu"); 

return 1; 
else 
Msg2Player("<color=Orange> Ng��i ��o b�i c� n�a ng�y m� kh�ng thu ho�ch ���c g�, ch�ng l� ta �� t�m sai. Th�i xem l�i th�t k� b�n �� v�y. Ph�.<color>"); 
return 1; 
end; 

elseif nResult==0 then 
Msg2Player("<color=Orange> Ng��i ��o b�i c� n�a ng�y m� kh�ng thu ho�ch ���c g�, ch�ng l� ta �� t�m sai. Th�i xem l�i th�t k� b�n �� v�y. Ph�.<color>"); 
return 1; 
elseif nResult==2 then 
Msg2Player("<color=yellow> ng��i ��i v�i t�ng b�o �� s� mi�u h�i ��ch �� ��u �c m� h� , c�i n�y �� l� th�t hay gi� hay l� �i <color><color=green> long tuy�n th�n <color><color=yellow> t�m <color><color=green> ph� l�i s�ch <color><color=yellow> gi�m ��nh m�t ch�t �i #<color>"); 
return 1; 
end; 

end; 


function OnExit() 

end;
