Include("\\script\\lib\\awardtemplet.lua")

tbPirateBoxNewAward = 
{	
}

day=7
function main()
dofile("script/global/g7vn/baoruonghanche/baoruongluachon7ngay.lua")
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return 1;
	end
Say("H�y L�a Ch�n M�n Ph�i C�a B�n",7,"Nga Mi/hkmpnm1","Th�y Y�n/hkmpty1","���ng M�n/hkmpdm1","Ng� ��c/hkmpnd1","Thi�n V��ng/hkmptv1","Trang Sau/GhepManhHKMP2","K�t th�c ��i tho�i/no") 	
return 1;
end
function GhepManhHKMP2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl1","V� �ang/hkmpvd1","C�n L�n/hkmpcl1","Thi�n Nh�n/hkmptn1","C�i Bang/hkmpcb1","Trang Tr��c/main","K�t th�c ��i tho�i/no") 
end

function hkmptl1()

local tbSay = {
"M�ng Long T� Kim B�t Nh� Gi�i/#addhkmp(769)",
"Ph�c Ma V� L��ng Kim Cang Uy�n/#addhkmp(771)",
"T� Kh�ng ��t Ma T�ng H�i/#addhkmp(776)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmptv1()

local tbSay = {
"Ng� Long T�n Phong Ph�t C�/#addhkmp(793)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpnm1()

local tbSay = {
"V� Gian Thanh Phong Nhuy�n K�ch/#addhkmp(796)",
"V� Y�m Thu Th�y L�u Quang ��i/#addhkmp(801)",
"V� Tr�n T�nh �nh L�u T�/#addhkmp(808)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpty1()

local tbSay = {
"Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u/#addhkmp(811)",
"B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n/#addhkmp(816)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpnd1()

local tbSay = {
"Minh Hoan Song Ho�n X� Kh�u/#addhkmp(829)",
"Ch� Ph�c Tr�ng C�t Ng�c B�i/#addhkmp(834)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpdm1()

local tbSay = {
"Thi�n Quang ��a H�nh Thi�n L� Ngoa/#addhkmp(843)",
"��a Ph�ch Phong H�n Th�c Y�u/#addhkmp(854)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpcb1()

local tbSay = {
"��ng C�u Ng� Long Ng�c B�i/#addhkmp(855)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end
function hkmptn1()

local tbSay = {
"Ma S�t C� H�a Li�u Thi�n Ho�n/#addhkmp(868)",
"Ma Ho�ng Dung Kim �o�n Nh�t Gi�i/#addhkmp(874)",
"Ma Th� L� Ma Ph� T�m ��i/#addhkmp(876)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpcl1()

local tbSay = {
"S��ng Tinh L�u Tinh C�n Nguy�t Kh�u/#addhkmp(891)",
"L�i Khung Linh Ng�c �n L�i Uy�n/#addhkmp(898)",
"V� Hoan Th�i Uy�n Ch�n V� Li�n/#addhkmp(901)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end

function hkmpvd1()

local tbSay = {
"L�ng Nh�c V� Ng� Th�c ��i/#addhkmp(881)",
"C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n/#addhkmp(888)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)
end
function addhkmp(idgold)
		ConsumeEquiproomItem(1, 6,1, 4369,-1)
		local Index = AddGoldItem(0,idgold) ITEM_SetExpiredTime(Index,day*24*60) SyncItem(Index)
end