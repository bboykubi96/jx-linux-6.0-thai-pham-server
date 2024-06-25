Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");

tb_wangshenghongbao_award = 
{ 
{szName="1 danh v�ng ", nRepute = 1, nRate = 25}, 
{szName="2 danh v�ng ", nRepute = 2, nRate = 20}, 
{szName="3 danh v�ng ", nRepute = 3, nRate = 15}, 
{szName="10 danh v�ng ", nRepute = 10, nRate = 3}, 
{szName="50 danh v�ng ", nRepute = 50, nRate = 0.1}, 
{szName="3 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 3, 0, 0}, nRate = 5}, 
{szName="4 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 4, 0, 0}, nRate = 3}, 
{szName="5 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 5, 0, 0}, nRate = 2}, 
{szName=" t�m t�m t��ng �n ph� ", tbProp={6, 1, 18, 1, 0, 0}, nRate = 3}, 
{szName=" nhanh ch�ng ho�n ", tbProp={6, 0, 6, 1, 0, 0}, nRate = 5}, 
{szName=" ��i l�c ho�n ", tbProp={6, 0, 3, 1, 0, 0}, nRate = 5}, 
{szName=" v� l�m b� t�ch ", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1}, 
{szName=" T�y T�y Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1}, 
{szName=" m�m n�u t�m tr�i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 1}, 
{szName=" thi�t La H�n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 3}, 
{szName=" th�n b� ��i bao ti�n l� x� ", tbProp={6, 1, 402,1, 0, 0}, nRate = 7.779}, 
{szName=" ��nh n��c � sa ph�t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.008}, 
{szName=" ��nh n��c l�a m�ng xanh tr��ng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.01}, 
{szName=" ��nh n��c ng�n t�m �ai l�ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ��nh n��c x�ch quy�n m�m ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.015}, 
{szName=" ��nh n��c t� ��ng h� c� tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.2}, 
{szName=" nhu t�nh c�n qu�c ngh� th��ng ", tbProp={0, 190}, nQuality = 1, nRate = 0.008}, 
{szName=" nhu t�nh tu� t�m ng�c b�i ", tbProp={0, 193}, nQuality = 1, nRate = 0.07}, 
{szName=" nhu t�nh ph��ng nghi chi�c nh�n ", tbProp={0, 192}, nQuality = 1, nRate = 0.3}, 
{szName=" nhu t�nh th�c n� gi�y chuy�n ", tbProp={0, 191}, nQuality = 1, nRate = 0.4}, 
{szName=" hi�p c�t t�nh ngh�a k�t ", tbProp={0, 189}, nQuality = 1, nRate = 0.01}, 
{szName=" hi�p c�t thi�t huy�t sam ", tbProp={0, 186}, nQuality = 1, nRate = 0.1}, 
{szName=" hi�p c�t �an t�m gi�i ", tbProp={0, 188}, nQuality = 1, nRate = 0.3}, 
{szName=" hi�p c�t �a t�nh ho�n ", tbProp={0, 187}, nQuality = 1, nRate = 0.4}, 
}; 

tb_tree_itemid = 
{ 
[1] = 1917, 
[2] = 1918, 
}; 

tb_openhongbao_mapid = 
{ 
[11] = 1, 
[1] = 1, 
[37] = 1, 
[176] = 1, 
[162] = 1, 
[78] = 1, 
[80] = 1, 
[174] = 1, 
[121] = 1, 
[153] = 1, 
[101] = 1, 
[99] = 1, 
[100] = 1, 
[20] = 1, 
[53] = 1, 
[54] = 1, 
[175] = 1, 
[55] = 1, 
}; 

function main() 
newyear0901_resettask(); 

local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("N�n v�t ph�m �� qua k� ."); 
return 0; 
end 

if (GetLevel() < 50 or GetExtPoint(0) < 1) then 
Say("��i hi�p nh� c� ch�a �� 50 c�p ho�c l� nh� c� kh�ng sung tr� gi� , cho n�n kh�ng th� s� d�ng h�ng v��ng bao ti�n l� x� .", 0); 
return 1; 
end 

local subworld, x, y = GetWorldPos(); 
if (tb_openhongbao_mapid[subworld] == nil) then 
Say("H�ng v��ng bao ti�n l� x� ch� � th�nh ph� c�ng th�n tr�n s� d�ng .", 0); 
return 1; 
end 

if (CalcFreeItemCellCount() < 20) then 
Say("��i hi�p ��ch trang b� �� ��y !", 0); 
return 1; 
end 

	if (100 + GetTask(newyear0901_TSK_GetExp_Hongbao) <= GetTask(newyear0901_TSK_GetExpUpLimit))	then
		SetTask(newyear0901_TSK_GetExp_Hongbao, 100 + GetTask(newyear0901_TSK_GetExp_Hongbao));
AddOwnExp(1000000); 

subworld = SubWorldID2Idx(subworld); 
local n_tree_idx = random(1, 2); 
local n_itemid = tb_tree_itemid[n_tree_idx]; 
local nItemIdx = DropItem(subworld, x * 32, y * 32, -1, 6, 1, n_itemid, 1, 0, 0, 0); 

tbAwardTemplet:GiveAwardByList(tb_wangshenghongbao_award,"H�ng v��ng bao ti�n l� x� "); 
else 
Say("��i hi�p �� ��t kinh nghi�m cao nh�t th��ng h�n , cho n�n kh�ng th� s� d�ng n�a h�ng v��ng h�ng bao .", 0); 
return 1; 
end 
end