function TaskShedule()
TaskName( "T� ��ng tin t�c �� th�ng c�o ");
TaskInterval(5);
TaskTime( 10, 00);
TaskCountLimit(0);
OutputMsg("=====> He thong thong bao tin tuc tu dong <=====");
end

g_strTipMsg =
{
	--"Ch�o  m�ng ��n v�i th� gi�i game V� L�m JX1VN! Website http://jx1vn.net",
	--"Tin t�c trong tu�n m�i c�p nh�t V� L�m JX1VN chi ti�t t�i http://jx1vn.net",
	--"Server Online 24/7 b�o tr� ��nh k� v�o 09h00 th� 3 v� th�  5 h�ng tu�n",
	"Tham gia T�ng Kim l�c 21h tr�n ��c bi�t h�ng ng�y may m�n nh�n �i�u ph�n th��ng h�p d�n",
	--"H�i qu� ho�ng kim, qu� huy ho�ng th�p cao trung l�c 19h h�ng ng�y t�i Chi�n Long ��ng",
	--"Boss ti�u HK xu�t hi�n l�c 12h30 20h00 xu�t hi�n ng�u nhi�n t�i 10 ph�i",
	--"Level 90 tr� l�n tham gia T�ng Kim tr�n ��c bi�t ��t 6000 �i�m t�ch l�y tr� l�n nh�n ���c �i�m kinh nghi�m",
	--"Top 1, 2, 3 T�ng Kim c� c� h�i nh�n ���c t� �i�m kinh nghi�m tr� l�n",
	--"Tham gia T�ng Kim �� c� c� h�i nh�n nhi�u ph�n qu� qu�, B� k�p, VLTM, TTK, QTH, TSBL",
	--"B�o danh �ua thuy�n t�i b�n Phong L�ng �� c� ng�y",
	--"Nh�n v�t c�p 80 tr� l�n tham gia nhi�m v� d� t�u nh�n ���c ph�n th��ng qu�",
	--"Ho�n th�nh chu�i nhi�m v� d� t�u ��t m�c 8000 nhi�m v� nh�n ���c 1 trang b� Ho�ng Kim ng�u nhi�n v� 2000 v�n l��ng",
	--"Tham gia �o�n Hoa ��ng t�i ��nh Hoa S�n v�o l�c 22h h�ng ng�y nh�n ���c nhi�u ph�n th��ng qu�",
	
}

function TaskContent()
str = getTipMsg();
GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str));
GlobalExecute(format( "dw AddLocalNews([[%s]])",str));

local nWeek=tonumber(date("%w"))
if nWeek == 1 then
	str1 = getTipMsgTheoT2()
end
if nWeek == 2 then
	str1 = getTipMsgTheoT3()
end
if nWeek == 3 then
	str1 = getTipMsgTheoT4()
end
if nWeek == 4 then
	str1 = getTipMsgTheoT5()
end
if nWeek == 5 then
	str1 = getTipMsgTheoT6()
end
if nWeek == 6 then
	str1 = getTipMsgTheoT7()
end
if nWeek == 0 then
	str1 = getTipMsgTheoTCN()
end

GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=yellow>"..str1.."<color>"));

end

function getTipMsg()
nCount = getn(g_strTipMsg);
nIndex = random(1, nCount);
return g_strTipMsg[nIndex];
end

g_strTipMsgT2 =
{
	"Th� 2 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 2 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 2 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 2 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 2 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 2 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 2 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 2 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 2 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 2 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 2 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 2 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 2 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 2 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgT3 =
{
	"Th� 3 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 3 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 3 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 3 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 3 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 3 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 3 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 3 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 3 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 3 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 3 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 3 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 3 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 3 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgT4 =
{
	"Th� 4 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 4 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 4 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 4 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 4 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 4 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 4 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 4 - Ho�t ��ng trong ng�y: 18h00 B�o danh ��u l�i ��i t�i C�ng Th�nh Quan",
	"Th� 4 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 4 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 4 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 4 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 4 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 4 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 4 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgT5 =
{
	"Th� 5 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 5 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 5 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 5 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 5 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 5 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 5 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 5 - Ho�t ��ng trong ng�y: 20h00 ��nh C�ng Th�nh 3 Tr� t�i C�ng Th�nh Quan",
	"Th� 5 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 5 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 5 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 5 - Ho�t ��ng trong ng�y: 20h00 ��nh l�i ��i t�i C�ng Th�nh Quan",
	"Th� 5 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 5 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 5 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 5 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgT6 =
{
	"Th� 6 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 6 - Ho�t ��ng trong ng�y: 11h00 T�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 6 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 6 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 6 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 6 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 6 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 6 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 6 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 6 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgT7 =
{
	"Th� 7 - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Th� 7 - Ho�t ��ng trong ng�y: 11h00 T�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Th� 7 - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Th� 7 - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Th� 7 - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Th� 7 - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Th� 7 - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Th� 7 - Ho�t ��ng trong ng�y: 21h00 Li�n ��u",
	"Th� 7 - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Th� 7 - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Th� 7 - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}

g_strTipMsgTCN =
{
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 10h00 �ua Thuy�n Phong L�ng ��",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 11h00 T�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 11h00 V��t �i",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 12h30 s�n boss Ti�u Ho�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 13h00 V��t �i",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 15h00 �ua Thuy�n Phong L�ng ��",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 16h00 V��t �i",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 18h00 Li�n ��u",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 19h00 H�i Qu� Huy Ho�ng, Qu� Ho�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 19h30 S�n boss ��i Ho�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 20h00 s�n boss Ti�u Ho�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 20h50 B�o danh chu�n b� ��nh T�ng Kim tr�n ��c bi�t",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 21h00 Li�n ��u",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 22h00 �o�n hoa ��ng tr�n ��nh Hoa S�n",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 22h30 S�n boss ��i Ho�ng Kim",
	"Ch� Nh�t - Ho�t ��ng trong ng�y: 23h00 �ua Thuy�n Phong L�ng ��",
}


function getTipMsgTheoT2()
nCount = getn(g_strTipMsgT2);
nIndex = random(1, nCount);
return g_strTipMsgT2[nIndex];
end

function getTipMsgTheoT3()
nCount = getn(g_strTipMsgT3);
nIndex = random(1, nCount);
return g_strTipMsgT3[nIndex];
end

function getTipMsgTheoT4()
nCount = getn(g_strTipMsgT4);
nIndex = random(1, nCount);
return g_strTipMsgT4[nIndex];
end

function getTipMsgTheoT5()
nCount = getn(g_strTipMsgT5);
nIndex = random(1, nCount);
return g_strTipMsgT5[nIndex];
end

function getTipMsgTheoT6()
nCount = getn(g_strTipMsgT6);
nIndex = random(1, nCount);
return g_strTipMsgT6[nIndex];
end

function getTipMsgTheoT7()
nCount = getn(g_strTipMsgT7);
nIndex = random(1, nCount);
return g_strTipMsgT7[nIndex];
end

function getTipMsgTheoTCN()
nCount = getn(g_strTipMsgTCN);
nIndex = random(1, nCount);
return g_strTipMsgTCN[nIndex];
end


function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


