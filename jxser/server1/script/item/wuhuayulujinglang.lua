-- script viet hoa By http://tranhba.com  v� th�n ban ph�c 
-- script viet hoa By http://tranhba.com wushenbless.lua 
-- script viet hoa By http://tranhba.com  s� d�ng sau nh�ng ��t ���c 2 gi� ( h� th�ng th�i gian ) � t�ng kim # tin/th� khi�n cho # x�ng quan # li�n cu�c so t�i # d� t�u # huy ho�ng chi trong ��m �� c�ng hi�n g�p ��i tr�ng th�i 
-- script viet hoa By http://tranhba.com Task2509 
Include("\\script\\lib\\awardtemplet.lua")
local tbBATTLEMAP = {44, 326, 327, 328, 329, 330, 331,333, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 868, 869, 870,876,877,878,879,880,881,883,884,885, 898, 899, 900, 902, 903, 904,970,971};--����ս���õ��ĵ�ͼ�б�

function main(nItemIdx) 
-- Say("T�nh n�ng t�m th�i ��ng �� ki�m tra l�i ph�t sinh. ��i hi�p th�ng c�m.")
do return  end
local nCurrentMinute = GetCurServerTime()
Msg2Player("Thoi gian "..nCurrentMinute)
local nLastMinute = GetTask(2999)
if abs(nCurrentMinute - nLastMinute) < 300 and nLastMinute ~=0 then
Msg2Player("M�i 5 ph�t ng��i ch�i m�i c� th� s� d�ng t�i m�u 1 l�n. ��i hi�p th�ng c�m. ")
return 1
end
local nW,_,_=GetWorldPos()
for _,nBattleMapId in %tbBATTLEMAP do
	if nW == nBattleMapId then
		Msg2Player("��o c� n�y kh�ng th� s� d�ng trong map T�ng Kim",0)
		return 1
	end
end
if GetPK() > 5 then
Msg2Player("PK tr�n 5 kh�ng ���c nh�n s� h� tr� n�y.",0)
return 1
end
if CalcFreeItemCellCount() < 30 then
	Msg2Player("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i quay l�i g�p ta",0);
	return 1;
end
if GetLevel() >= 81 then
Msg2Player("C�p 81 tr� l�n ng��i �� ��nh m�t ��c �n n�y r�i. Th�ng c�m.", 0);
return 
end
local tbAwards={
{szName = "Ng� hoa ng�c l� ho�n",tbProp={1, 2, 0, 5, 0, 0},nBindState=-2,nCount=30,},
}
tbAwardTemplet:GiveAwardByList(tbAwards, "Nhan ho tro mau tan thu")
SetTask(2999,nCurrentMinute)
return 1
end; 
