	-- ho�ng kim qu�i v�t ch�n c�a b�n ��t ra

	--1, th�nh l�p m�t ho�ng kim qu�i v�t s�n sinh ph��ng �n k�ch b�n g�c v�n ki�n �� c�nh nhau ��a � Relay\RelaySetting\Task\ m�c l�c ph�a d��i.

	-- � cai v�n ki�n b� ph�n m� ��u ph�i bao h�m ho�ng kim qu�i v�t ��u v�n ki�n

	-- �� m� ph�a d��i ph�p bao h�m

	--Include( "\\RelaySetting\\Task\\GoldBossHead.lua ");

	--2, � phi h�m s� khu v�c (to�n c�c ��nh ngh�a), �i�n d� ho�ng kim qu�i v�t c� li�n quan to�n c�c l��ng bi�n ��i gi� tr�

	-- theo th� t� l�

	--1, Sid bi�u th� sinh ra Boss ph��ng �n h�o, t�ng ph��ng �n ch� c� th� ��ng th�i s�n sinh m�t Boss. Ch� � Boss ph��ng �n h�o ph�i l� duy nh�t, b�t n�ng ��t ra t�i di�n Sid h�o.

	--2, Interval bi�u th� s�n sinh Boss kho�ng c�ch th�i gian, ��n v� vi ph�t

	--3, Count bi�u th� g�y ra cai ph��ng �n s� l�n, n�u v� 0 bi�u th� v� h�n s� l�n, ch� c�n ��n l�c �� �ang l�c t�u g�y ra b�n k�ch b�n g�c.

	--4, StartHour, StartMin bi�u th� l�n ��u ti�n g�y ra b�n ph��ng �n th�i gian, StartHour bi�u th� ti�ng ��ng h�, StartMin bi�u th� ph�t.

	-- n�u nh� StartHour d� StartMin b�ng -1 th�, bi�u th� Relay m� ra ��ng, li�n l�p t�c b�t ��u l�n ��u ti�n g�y ra

	-- t� nh�:

	--Sid = 4

	--Interval = 30

	--Count = 4

	--StartHour = 3

	--StartMin = 19

	-- k� tr�n ��t ra bi�u th�, th� 4 m�t ho�ng kim qu�i v�t s�n sinh ph��ng �n, t��ng � 3 �i�m 19 xa nhau th�y l�n ��u ti�n g�y ra, ��ng th�i sau �� m�i b�n ti�ng ��ng h� (30 ph�t) g�y ra m�t l�n, c�ng g�y ra 4 th�. C�ng ch�nh l� � 3:19 3:49 4:19 4:49 g�y ra.

	--3, ��nh ngh�a d� th�c hi�n Boss ch�n c�a b�n h�m s� NewBoss()

	-- cai h�m s� ph�i t�n t�i. Cai h�m s� c�ng n�ng th� quy�t ��nh c� hay kh�ng y�u s�n sinh Boss,Boss s� t�i, ch�ng lo�i d� ��ng c�p.

	-- b�i v�y, h�m s� cu�i ph�n h�i nh� sau 4 m�t tham s�

	-- ph�n bi�t bi�u th� c� hay kh�ng y�u s�n sinh boss,boss s� t�i �� id,boss Npc g� c�p pha id, boss ��ng c�p.

	-- t� nh� nh� sau NewBoss th�c hi�n.

	--function NewBoss()

	--return 1, 20, random(100), 50 + random(50);

	--end;

	-- bi�u th�, s�n sinh qu�i v�t, n� tr�n m�t ��t �� ID vi 20 tr�n b�n ��, npc g� c�p pha h�o � 1 ��o 100 ng�u nhi�n, ��ng c�p � 51 ��o 100 ng�u nhi�n

	--4, � Relay\RelaySetting\Task\TaskList. ini v�n ki�n trung t�ng b�n k�ch b�n g�c

	-- b� [List] h� Count gi� tr� gia nh�t bi�u th� l�i t�ng l�n m�t ��ng gi� g�y ra nhi�m v�

	-- t�ng [Task_X], b� X thay th�nh m�i nh�t Count gi� tr�.

	-- � [Task_X] TaskFile th��ng �i�n b�n k�ch b�n g�c v�n ki�n danh

	-- ho�ng kim qu�i v�t ng��i thi�t k�: ��u h�o

	--2004. 2. 13 16:27:08

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Boss ho�ng kim 0800 ")

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(1440)

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	-- ��t ra ��ng gi� k� kh�i ��ng th�i gian

	TaskTime(8, 0);

	-- c�t b� t� tr��c s� li�u

	for i = 1, getn(tb_goldboss) do

	success = ClearRecordOnShareDB( "GoldBoss", tb_goldboss[i]. Sid, 0, 1, 0);

	OutputMsg( "Du lieu Boss hoang kim database ".. tb_goldboss[i]. Sid);
	OutputMsg( "Boss ho�ng kim 0800 ")

	end

	end

	function TaskContent()

	for i = 1, getn(tb_goldboss) do

	str = tb_goldboss[i]. str;

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	end

	GlobalExecute( "dwf \\script\\missions\\boss\\callboss_incity.lua CallBossDown_Fixure() ");

	end


