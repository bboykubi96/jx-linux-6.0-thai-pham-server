-- script viet hoa By http://tranhba.com  gia truy�n b� t�ch 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\jiaoshi_jieri\\200810\\lib\\lib.lua")
Include("\\script\\event\\jiaoshi_jieri\\200810\\taskctrl.lua")
Include("\\script\\lib\\pay.lua")
local tbAwardList = 
{ 
[1] = {nExp = 1000000}, 
[2] = 
{ 
{szName=" an bang b�ng tinh gi�y chuy�n ", nQuality=1, nRate=0.002, tbProp={0, 164}}, 
{szName=" an bang m�u g� th�ch chi�c nh�n ", nQuality=1, nRate=0.005, tbProp={0, 167}}, 
{szName=" an bang hoa c�c th�ch chi�c nh�n ", nQuality=1, nRate=0.005, tbProp={0, 165}}, 
{szName=" an bang �i�n ho�ng th�ch ng�c b�i ", nQuality=1, nRate=0.01, tbProp={0, 166}}, 
{szName=" ��nh n��c � gh� sa lon quan ", nQuality=1, nRate=0.005, tbProp={0, 160}}, 
{szName=" ��nh n��c l�a m�ng xanh tr��ng sam ", nQuality=1, nRate=0.008, tbProp={0, 159}}, 
{szName=" ��nh n��c ng�n t�m �ai l�ng ", nQuality=1, nRate=0.2, tbProp={0, 163}}, 
{szName=" ��nh n��c x�ch quy�n m�m ngoa ", nQuality=1, nRate=0.05, tbProp={0, 161}}, 
{szName=" ��nh n��c t� ��ng h� c� tay ", nQuality=1, nRate=0.2, tbProp={0, 162}}, 
{szName=" nhu t�nh c�n qu�c ngh� th��ng ", nQuality=1, nRate=0.002, tbProp={0, 190}}, 
{szName=" nhu t�nh tu� t�m ng�c b�i ", nQuality=1, nRate=0.01, tbProp={0, 193}}, 
{szName=" nhu t�nh ph��ng nghi chi�c nh�n ", nQuality=1, nRate=0.2, tbProp={0, 192}}, 
{szName=" nhu t�nh th�c n� gi�y chuy�n ", nQuality=1, nRate=0.15, tbProp={0, 191}}, 
{szName=" hi�p c�t t�nh ngh�a k�t ", nQuality=1, nRate=0.01, tbProp={0, 189}}, 
{szName=" hi�p c�t thi�t huy�t sam ", nQuality=1, nRate=0.1, tbProp={0, 186}}, 
{szName=" hi�p c�t �an t�m gi�i ", nQuality=1, nRate=0.1, tbProp={0, 188}}, 
{szName=" hi�p c�t �a t�nh ho�n ", nQuality=1, nRate=0.5, tbProp={0, 187}}, 
{szName="3 c�p huy�n tinh qu�ng th�ch ", nRate=5, tbProp={6, 1, 147, 3, 0, 0}}, 
{szName="4 c�p huy�n tinh qu�ng th�ch ", nRate=3, tbProp={6, 1, 147, 4, 0, 0}}, 
{szName="5 c�p huy�n tinh qu�ng th�ch ", nRate=2, tbProp={6, 1, 147, 5, 0, 0}}, 
{szName=" v� l�m b� t�ch ", nRate=0.1, tbProp={6, 1, 26, 1, 0, 0}}, 
{szName=" T�y T�y Kinh ", nRate=0.1, tbProp={6, 1, 22, 1, 0, 0}}, 
} 
} 

function main(nItemIndex) 
jiaoshi0810_ResetTask() 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 
if nDate >= GetItemParam(nItemIndex, 1) then 
Talk(1,"","N�n v�t ph�m �� qua k� "); 
return 0 
end 
if GetLevel() < 50 or IsCharged() == 0 then 
Talk(1, "","Ch� c� 50 c�p tr� l�n �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng n�n ��o c� .") 
return 1 
end 
local nCurExp = GetTask(jiaoshi0810_TSK_ExpLimit) 
if nCurExp >= jiaoshi0810_MaxExpLimit then 
Talk(1, "", format("M�i nh�n v�t s� d�ng n�n v�t ph�m nhi�u nh�t ch� ��t ���c %s kinh nghi�m .", jiaoshi0810_TransferDigit2CnNum(jiaoshi0810_MaxExpLimit))) 
return 1; 
end 
tbAwardTemplet:GiveAwardByList(%tbAwardList, "use "..GetItemName(nItemIndex)) 
	SetTask(jiaoshi0810_TSK_ExpLimit, nCurExp + %tbAwardList[1].nExp)
end
