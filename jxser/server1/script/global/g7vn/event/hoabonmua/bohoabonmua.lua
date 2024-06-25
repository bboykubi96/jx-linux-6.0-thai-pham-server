
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua.lua")
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	local TSK_BoHoa=4999
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung > 1000) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Tinh Kho�ng Th�ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;

local b = random(1,50)
if b==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local c = random(1,300)
if c==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,1},nCount=1,},}, "test", 1);
end;

local d = random(1,10000)
if d==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,300)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,250)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,500)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� S�c B�o Ng�c",tbProp={6,1,4318,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,50000)
if t==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng L�nh",tbProp={6,1,4811,1,1},nCount=1,},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng�c",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,1000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local k = random(1,10000)
if k==5000 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Ng�c",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Ng�c",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,500)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Xuy�n Y Ph� Gi�p",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H�nh �n",tbProp={0,3951},nQuality=1,nExpiredTime=14*24*60},}, "test", 1);
end;


local r = random(1,500)
if r==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� S�c B�o Ng�c",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);
end;


local s = random(1,500)
if s==100 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local x = random(1,750)
if x==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local y = random(1,1000)
if y==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local z = random(1,1500)
if z==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Thi�p Ch�c M�ng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
