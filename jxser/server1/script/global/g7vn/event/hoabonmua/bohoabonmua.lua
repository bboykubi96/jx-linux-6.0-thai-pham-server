
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua.lua")
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	local TSK_BoHoa=4999
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung > 1000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;

local b = random(1,50)
if b==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local c = random(1,300)
if c==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,1},nCount=1,},}, "test", 1);
end;

local d = random(1,10000)
if d==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
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
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò S¾c B¶o Ngäc",tbProp={6,1,4318,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,50000)
if t==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng LÖnh",tbProp={6,1,4811,1,1},nCount=1,},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,1000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local k = random(1,10000)
if k==5000 then
	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¹ch Ngäc",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Ngäc",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,500)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Xuyªn Y Ph¸ Gi¸p",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò Hµnh Ên",tbProp={0,3951},nQuality=1,nExpiredTime=14*24*60},}, "test", 1);
end;


local r = random(1,500)
if r==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò S¾c B¶o Ngäc",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);
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
tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp Chóc Mõng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
