Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

tb_strawberry_award = 
{ 
{szName="3 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 3, 0, 0}, nRate = 3}, 
{szName="4 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 4, 0, 0}, nRate = 2}, 
{szName="5 c�p huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 5, 0, 0}, nRate = 0.8}, 
{szName=" h�n thi�t vinh d� l�nh b�i ", tbProp={6, 1, 1257, 1, 0, 0}, nRate = 5}, 
{szName=" ��ng xanh vinh d� l�nh b�i ", tbProp={6, 1, 1256, 1, 0, 0}, nRate = 2}, 
{szName=" b�c tr�ng vinh d� l�nh b�i ", tbProp={6, 1, 1255, 1, 0, 0}, nRate = 0.8}, 
{szName=" ho�ng kim vinh d� l�nh b�i ", tbProp={6, 1, 1254, 1, 0, 0}, nRate = 0.05}, 
{szName=" v� l�m b� t�ch ", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.05}, 
{szName=" T�y T�y Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.05}, 
{szName=" m�m n�u t�m tr�i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 1}, 
{szName=" thi�t La H�n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 2}, 
{szName=" th�n b� ��i bao ti�n l� x� ", tbProp={6, 1, 402,1, 0, 0}, nRate = 6}, 
{szName=" ��nh n��c � sa ph�t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.006}, 
{szName=" ��nh n��c l�a m�ng xanh tr��ng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.01}, 
{szName=" ��nh n��c ng�n t�m �ai l�ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ��nh n��c x�ch quy�n m�m ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.04}, 
{szName=" ��nh n��c t� ��ng h� c� tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.1}, 
{szName="1 danh v�ng ", nRepute = 1, nRate = 30}, 
{szName="2 danh v�ng ", nRepute = 2, nRate = 25}, 
{szName="3 danh v�ng ", nRepute = 3, nRate = 19}, 
{szName="10 danh v�ng ", nRepute = 10, nRate = 2.494}, 
{szName="50 danh v�ng ", nRepute = 50, nRate = 0.5}, 
}; 

function main(nItemIndex) 
christmas_resettask(); 
if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 
if (CalcFreeItemCellCount() < 20) then 
Say("��i hi�p ��ch trang b� �� ��y !", 0); 
return 1; 
end 

	if (50 + GetTask(christmas_getexp_taskid) <= GetTask(christmas_bingjing_taskid))	then
		SetTask(christmas_getexp_taskid, 50 + GetTask(christmas_getexp_taskid));
AddOwnExp(500000); 
tbAwardTemplet:GiveAwardByList(tb_strawberry_award, "2008 gi�ng sinh ho�t ��ng - b�nh ng�t "); 
else 
Say("��i hi�p �� ��t ���c cao nh�t kinh nghi�m , cho n�n kh�ng th� s� d�ng n�a b�nh cake .", 0); 
return 1; 
end 
end