BOSS_INFO = {
	{"C� B�ch", 566, 95, 0, {"Ph� Dung ��ng 1","S�n B�o ��ng 1","city"}},
	{"Huy�n Gi�c ��i S�", 740, 95, 0, {"Nh�n Th�ch ��ng 1","Thanh kh� ��ng 1","city"}},
	{"���ng Phi Y�n", 1366, 95, 1, {"Phong L�ng �� 1","Kho� Lang ��ng 1","city"}},
	{"Lam Y Y", 582, 95, 1, {"V� L�ng ��ng 1","Phi Thi�n ��ng 1","city"}},
	{"H� Linh Phi�u", 568, 95, 2, {"Tr��ng B�ch s�n B�c 1","V� Danh ��ng 1","city"}},
	{"Y�n Hi�u Tr�i", 744, 95, 2, {"Sa M�c s�n  ��ng 1","Sa M�c s�n  ��ng 3","city"}},
	{"M�nh Th��ng L��ng", 583, 95, 3, {"Sa m�c ��a bi�u 1","Sa M�c s�n  ��ng 2","city"}},
	{"Gia Lu�t T� Ly", 563, 95, 3, {"L��ng Th�y ��ng 1","D��ng Trung ��ng 1","city"}},
	{"��o Thanh Ch�n Nh�n", 562, 95, 4, {"Tr��ng B�ch s�n Nam 1","M�c Cao Qu�t 1","city"}},
	{"Tuy�n C� T�", 747, 95, 4, {"Vi S�n ��o 1","Phi Thi�n ��ng 2","city"}},
	{"V��ng T�", 739, 95, 0, {"V� L�ng ��ng 2","Ph� Dung ��ng 2","city"}},
	{"Huy�n Nan ��i S�", 1365, 95, 0, {"Phong L�ng �� 2","M�c B�c Th�o Nguy�n 1","city"}},
	{"���ng B�t Nhi�m", 741, 95, 1, {"Tr��ng B�ch s�n Nam 2","Kho� Lang ��ng 2","city"}},
	{"B�ch Doanh Doanh", 742, 95, 1, {"Thanh kh� ��ng 2","Sa m�c ��a bi�u 2","city"}},
	{"Thanh Tuy�t S� Th�i", 743, 95, 2, {"Vi S�n ��o 2","D��ng Trung ��ng 2","city"}},
	{"Chung Linh T�", 567, 95, 2, {"Phi Thi�n ��ng 2","V� Danh ��ng 2","city"}},
	{"H� Nh�n Ng�", 745, 95, 3, {"Nh�n Th�ch ��ng 2","L��ng Th�y ��ng 2","city"}},
	{"�oan M�c Du�", 565, 95, 3, {"M�c B�c Th�o Nguy�n 2","S�n B�o ��ng 2","city"}},
	{"T� ��i Nh�c", 1367, 95, 4, {"D��c V��ng ��ng T�ng 4","V� L�ng ��ng 2","city"}},
	{"Thanh Li�n T�", 1368, 95, 4, {"Tr��ng B�ch s�n B�c 2","M�c Cao Qu�t 2","city"}},
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
