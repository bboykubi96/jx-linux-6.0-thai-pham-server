
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/0106/keosua.lua")
	TSK_BanhKem=4997
	local HienTaiSuDung =GetTask(TSK_BanhKem)
	if (HienTaiSuDung > 300) then
		Say("Sö dông event ®· ®¹t giíi h¹n, kh«ng thÓ sö dông n÷a."..GetTask(TSK_BanhKem).."",0)
		return 1;
	end
	tbAwardTemplet:GiveAwardByList({{szName = "Phong V©n Ngo¹i Phæ hoµn",tbProp={6,1,random(178,185),1,0},nCount=1},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e6}}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n T¹o Hãa §an (®¹i)",tbProp={6,1,215,1,1},nCount=15,},}, "test", 1);
	SetTask(TSK_BanhKem,GetTask(TSK_BanhKem)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
