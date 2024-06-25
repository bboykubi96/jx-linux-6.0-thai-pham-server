--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")

function main(nItemIndex)
dofile("script/item/ib/jinnang.lua");
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	if P == 1250 then
		lay_hiepcot()
		return 0;
	end
				if P == 1172 then
		lay_anbangset()
		return 0;
	end
	
	if P == 1251 then
		lay_nhutinh()
		return 0;
	end
		if P == 1260 then
		lay_dinhquoc()
		return 0;
	end
			if P == 1261  then
		lay_anbang()
		return 0;
	end
	return 1
end

function lay_dinhquoc()
local a=random(1,100)
--if a>=1 and a < 6 then
--tbAwardTemplet:GiveAwardByList({{szName="��nh Qu�c � Sa Ph�t Qu�n",tbProp={0,160},nCount=1, nQuality =1},}, "test", 1);
--end
if a>=1 and a < 5 then
tbAwardTemplet:GiveAwardByList({{szName="��nh Qu�c Thanh Sa Tr��ng Sam",tbProp={0,159},nCount=1, nQuality =1},}, "test", 1);
end
if a>=5 and a < 47 then
tbAwardTemplet:GiveAwardByList({{szName="��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={0,161},nCount=1, nQuality =1},}, "test", 1);
end
if a>=47 and a < 77 then
tbAwardTemplet:GiveAwardByList({{szName="��nh Qu�c T� ��ng H� uy�n",tbProp={0,162},nCount=1, nQuality =1},}, "test", 1);
end
if a>=77 and a < 101 then
tbAwardTemplet:GiveAwardByList({{szName="��nh Qu�c Ng�n T�m Y�u ��i",tbProp={0,163},nCount=1, nQuality =1},}, "test", 1);
end
end


function lay_hiepcot()
local b=random(1,100)
if b>=1 and b < 11 then
tbAwardTemplet:GiveAwardByList({{szName="Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nCount=1, nQuality =1},}, "test", 1);
end
if b>=11 and b < 51 then
tbAwardTemplet:GiveAwardByList({{szName="Hi�p C�t �a T�nh Ho�n",tbProp={0,187},nCount=1, nQuality =1},}, "test", 1);
end
if b>=51 and b < 100 then
tbAwardTemplet:GiveAwardByList({{szName="Hi�p C�t �an T�m Gi�i",tbProp={0,188},nCount=1, nQuality =1},}, "test", 1);
end
if b==100 then
tbAwardTemplet:GiveAwardByList({{szName="Hi�p C�t T�nh � K�t",tbProp={0,189},nCount=1, nQuality =1},}, "test", 1);
end
end

function lay_nhutinh()
local b=random(1,100)
if b==1 then
tbAwardTemplet:GiveAwardByList({{szName="Nhu T�nh C�n Qu�c Ngh� Th��ng",tbProp={0,190},nCount=1, nQuality =1},}, "test", 1);
end
if b>=2 and b < 53 then
tbAwardTemplet:GiveAwardByList({{szName="Nhu T�nh Th�c N� H�ng Li�n",tbProp={0,191},nCount=1, nQuality =1},}, "test", 1);
end
if b>=53 and b < 95 then
tbAwardTemplet:GiveAwardByList({{szName="Nhu T�nh  Ph�ng Nghi Gi�i Ch�",tbProp={0,192},nCount=1, nQuality =1},}, "test", 1);
end
if b>=95 and b < 101 then
tbAwardTemplet:GiveAwardByList({{szName="Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={0,193},nCount=1, nQuality =1},}, "test", 1);
end
end

function lay_anbangset()
local b=random(1,100)
tbAwardTemplet:GiveAwardByList({{szName="An Bang To�n Th�ch H�ng Li�n",tbProp={0,164},nCount=1, nQuality =1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang C�c Hoa Ch� Ho�n",tbProp={0,165},nCount=1, nQuality =1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang �i�n Th�ch Ng�c b�i",tbProp={0,166},nCount=1, nQuality =1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang K� Huy�t Th�ch Ch� Ho�n",tbProp={0,167},nCount=1, nQuality =1},}, "test", 1);
end



function lay_anbang()
local b=random(1,100)
if b>=1 and b < 81 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang �i�n Th�ch Ng�c b�i",tbProp={0,166},nCount=1, nQuality =1},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="An Bang To�n Th�ch H�ng Li�n",tbProp={0,164},nCount=1, nQuality =1},}, "test", 1);
end
if b>=81 and b < 98 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang C�c Hoa Ch� Ho�n",tbProp={0,165},nCount=1, nQuality =1},}, "test", 1);
end
if b==101  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang To�n Th�ch H�ng Li�n",tbProp={0,164},nCount=1, nQuality =1},}, "test", 1);
end
if b>=98  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang K� Huy�t Th�ch Ch� Ho�n",tbProp={0,167},nCount=1, nQuality =1},}, "test", 1);
end
end

