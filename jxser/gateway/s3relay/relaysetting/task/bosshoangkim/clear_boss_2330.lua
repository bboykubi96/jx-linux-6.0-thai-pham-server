BOSS_INFO = {
	{"Cæ B¸ch", 566, 95, 0, {"Phï Dung ®éng 1","S¬n B¶o ®éng 1","city"}},
	{"HuyÒn Gi¸c §¹i S­", 740, 95, 0, {"Nh¹n Th¹ch ®éng 1","Thanh khª ®éng 1","city"}},
	{"§­êng Phi YÕn", 1366, 95, 1, {"Phong L¨ng ®é 1","Kho¶ Lang ®éng 1","city"}},
	{"Lam Y Y", 582, 95, 1, {"Vò L¨ng ®éng 1","Phi Thiªn ®éng 1","city"}},
	{"Hµ Linh Phiªu", 568, 95, 2, {"Tr­êng B¹ch s¬n B¾c 1","V« Danh ®éng 1","city"}},
	{"Yªn HiÓu Tr¸i", 744, 95, 2, {"Sa M¹c s¬n  ®éng 1","Sa M¹c s¬n  ®éng 3","city"}},
	{"M¹nh Th­¬ng L­¬ng", 583, 95, 3, {"Sa m¹c ®Þa biÓu 1","Sa M¹c s¬n  ®éng 2","city"}},
	{"Gia LuËt TÞ Ly", 563, 95, 3, {"L­ìng Thñy ®éng 1","D­¬ng Trung ®éng 1","city"}},
	{"§¹o Thanh Ch©n Nh©n", 562, 95, 4, {"Tr­êng B¹ch s¬n Nam 1","M¹c Cao QuËt 1","city"}},
	{"TuyÒn C¬ Tö", 747, 95, 4, {"Vi S¬n ®¶o 1","Phi Thiªn ®éng 2","city"}},
	{"V­¬ng T¸", 739, 95, 0, {"Vò L¨ng ®éng 2","Phï Dung ®éng 2","city"}},
	{"HuyÒn Nan §¹i S­", 1365, 95, 0, {"Phong L¨ng ®é 2","M¹c B¾c Th¶o Nguyªn 1","city"}},
	{"§­êng BÊt NhiÔm", 741, 95, 1, {"Tr­êng B¹ch s¬n Nam 2","Kho¶ Lang ®éng 2","city"}},
	{"B¹ch Doanh Doanh", 742, 95, 1, {"Thanh khª ®éng 2","Sa m¹c ®Þa biÓu 2","city"}},
	{"Thanh TuyÖt S­ Th¸i", 743, 95, 2, {"Vi S¬n ®¶o 2","D­¬ng Trung ®éng 2","city"}},
	{"Chung Linh Tó", 567, 95, 2, {"Phi Thiªn ®éng 2","V« Danh ®éng 2","city"}},
	{"Hµ Nh©n Ng·", 745, 95, 3, {"Nh¹n Th¹ch ®éng 2","L­ìng Thñy ®éng 2","city"}},
	{"§oan Méc DuÖ", 565, 95, 3, {"M¹c B¾c Th¶o Nguyªn 2","S¬n B¶o ®éng 2","city"}},
	{"Tõ §¹i Nh¹c", 1367, 95, 4, {"D­îc V­¬ng §éng TÇng 4","Vò L¨ng ®éng 2","city"}},
	{"Thanh Liªn Tö", 1368, 95, 4, {"Tr­êng B¹ch s¬n B¾c 2","M¹c Cao QuËt 2","city"}},
}

function TaskShedule()
	TaskName( "XOA BOSS DAI HOANG KIM 23:30" );
	TaskInterval(1440);
	TaskTime(23, 30);
	TaskCountLimit(0);
	OutputMsg( "=====> Xoa Boss Dai Hoang Kim :  23:30" );
end

function TaskContent()
	for i = 1, getn(BOSS_INFO) do
		bossname = BOSS_INFO[i][1]
		bossid = BOSS_INFO[i][2]
		GlobalExecute(format("dw BossDai(%d, [[%s]] )",bossid,bossname));
	end
	OutputMsg( "=====> Boss Dai Hoang Kim :  23:30" );
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
