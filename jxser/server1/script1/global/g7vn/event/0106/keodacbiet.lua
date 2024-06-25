
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/0106/keodacbiet.lua")
	TSK_NguoiTuyetDacBiet=4999
	local HienTaiSuDung =GetTask(TSK_NguoiTuyetDacBiet)
	if (HienTaiSuDung > 300) then
		Say("Sö dông event ®· ®¹t giíi h¹n, kh«ng thÓ sö dông n÷a."..GetTask(TSK_NguoiTuyetDacBiet).."",0)
		return 1;
	end

--if GetAccount()=="boquyx1234" then

local a = random(1,10)
if a==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,2952,1,1},nCount=1},}, "test", 1);
end;

local a1 = random(1,10)
if a1==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "B¸ch Qu¶ Lé ",tbProp={6,1,73,1,1},nCount=1},}, "test", 1);
end;

local a2 = random(1,10)
if a2==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "Kh¸ng §¬n Chi Gi¸c ",tbProp={6,1,214,1,1},nCount=1},}, "test", 1);
end;

local a3= random(1,10)
if a3==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "Kh¸ng §¬n Chi Gi¸c ",tbProp={6,1,214,1,1},nCount=1},}, "test", 1);
end;

local a4= random(1,10)
if a4==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,2952,1,1},nCount=1},}, "test", 1);
end;

local a5= random(1,10)
if a5==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "¢m D­¬ng Ho¹t HuyÕt §¬n",tbProp={6,1,2953,1,1},nCount=1},}, "test", 1);
end;

local a6= random(1,30)
if a6==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "TrÊn ph¸i linh ®¬n",tbProp={6,1,1704,1,1},nCount=1},}, "test", 1);
end;

local a6= random(1,30)
if a6==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "TrÊn ph¸i linh d­îc",tbProp={6,1,1705,1,1},nCount=1},}, "test", 1);
end;

--tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n T¹o Hãa §an (®¹i) ",tbProp={6,1,215,1,1},nCount=5},}, "test", 1);

	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	
	SetTask(TSK_NguoiTuyetDacBiet,GetTask(TSK_NguoiTuyetDacBiet)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung .."<color>")
	return 0
	--end
end
