Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/lebaobikip.lua")
	--do Say("T?th? t? T? th?ch? s?? d?c") return end
	lebaoskill()
end


function lebaoskill()
local s = random(1,49)


if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Th�i c�c quy�n 3",tbProp={6,1,33,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�i c�c quy�n 3 <color> t� l�  bao BU KUp  ");
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Th�i c�c ki�m ph� 2",tbProp={6,1,34,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�i c�c ki?m ph� 2 <color> t� l� bao BU KUp ");
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="V�n Long K�ch",tbProp={6,1,35,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>V�n Long K�ch <color> t� l� bao b� k�p ");
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="L�u tinh �ao ph�p",tbProp={6,1,36,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>L�u tinh �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng ch�y ph�p 1",tbProp={6,1,37,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng ch�y ph�p <color> t� l� bao BU KUp ");
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng th��ng ph�p 2",tbProp={6,1,38,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng th��ng ph�p <color> t� l� bao BU KUp ");
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n v��ng �ao ph�p",tbProp={6,1,39,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi�n v��ng �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Th�y y�n �ao",tbProp={6,1,40,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�y y�n �ao <color> t� l� bao BU KUp ");
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Th�y y�n song �ao",tbProp={6,1,41,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Th�y y�n song �ao<color> t� l� bao BU KUp ");
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="Di�t ki�m m�t t�ch",tbProp={6,1,42,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Di�t ki?m m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao BU KUp ");
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao BU KUp ");
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k?ch<color> t� l� bao BU KUp ");
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao BU KUp ");
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c ch��ng ph�p <color> t� l� bao BU KUp ");
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao BU KUp ");
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao BU KUp ");
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao BU KUp ");
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,52,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao BU KUp ");
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="Nhi�p h�n ch�",tbProp={6,1,53,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nhi?p h�n ch�<color> t� l� bao BU KUp ");
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="C�i bang ch��ng ph�p",tbProp={6,1,54,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>C�i bang ch��ng ph�p <color> t� l� bao BU KUp ");
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="C�i bang c�n ph�p",tbProp={6,1,55,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>C�i bang c�n ph�p <color> t� l� bao BU KUp ");
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m quy�n ph�p",tbProp={6,1,56,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi?u l�m quy?n ph�p <color> t� l� bao BU KUp ");
end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m c�n ph�p",tbProp={6,1,57,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi?u l�m c�n ph�p <color> t� l� bao BU KUp ");
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�u l�m �ao ph�p",tbProp={6,1,58,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Thi?u l�m �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==29 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==30 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==31 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao BU KUp ");
end;
if s==32 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao BU KUp ");
end;
if s==33 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k?ch<color> t� l� bao BU KUp ");
end;
if s==34 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao BU KUp ");
end;
if s==35 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c ch��ng ph�p <color> t� l� bao BU KUp ");
end;
if s==36 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==37 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao BU KUp ");
end;
if s==38 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao BU KUp ");
end;
if s==39 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao BU KUp ");
end;
if s==40 then
tbAwardTemplet:GiveAwardByList({{szName="Ph� �� m�t t�ch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ph� �� m�t t�ch <color> t� l� bao BU KUp ");
end;
if s==41 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my ph� quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Nga my ph� quang <color> t� l� bao BU KUp ");
end;
if s==42 then
tbAwardTemplet:GiveAwardByList({{szName="Phi �ao thu�t",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi �ao thu�t <color> t� l� bao BU KUp ");
end;
if s==43 then
tbAwardTemplet:GiveAwardByList({{szName="Lo�n ho�n k�ch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Lo�n ho�n k?ch<color> t� l� bao BU KUp ");
end;
if s==44 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ti�u thu�t",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Phi ti�u thu�t<color> t� l� bao BU KUp ");
end;
if s==45 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c ch��ng ph�p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c ch��ng ph�p <color> t� l� bao BU KUp ");
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� ��c �ao ph�p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng? ��c �ao ph�p <color> t� l� bao BU KUp ");
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Phong thu�t",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� Phong thu�t <color> t� l� bao BU KUp ");
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� l�i thu�t",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� l�i thu�t <color> t� l� bao BU KUp ");
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� T�m thu�t",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m?ng ��i hi�p <color=green>"..GetName().."<color> nh�n ���c<color=yellow>Ng� T�m thu�t <color> t� l� bao BU KUp ");
end;
end

