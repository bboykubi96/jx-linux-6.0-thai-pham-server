-------------------------------------------------Script*By*Heart*Doldly***-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\namcung\\thuongtoptongkim.lua")
----------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--------------------------NPC-----------------------------------------------------
function main()
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>Ch� Ta C� B�n T�t C� V�t Ph�m Qu�\n"
	local Opt = 
	{
       --  {"Nh�n Qu� Th��ng Dua top TK", thuongtop_tongkim},	
	{"Shop ��i �i�m",TinhNang},
	{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TinhNang()
	local tbOpt = {
		 {"Nh�n ��i Qu� T�ch �i�m Li�n ��u ", liendau},
		{"Nh�n Ki�n Thi�t", kienthiet},
		{"S� D�ng  �i�m T�ng Kim", doidiemtk},
		{"reset shop t�ng kim �� mua l�i", doidiemrs},
		{"Th�i",},
	}
	CreateNewSayEx("<npc><bclr=violet>Xin Ch�o "..myplayersex().." �� Gh� Th�m C�a Ti�m C�a Ta Ng��i Mu�n Mua G� Kh�ng<bclr>", tbOpt)
end
function doidiemtk()
local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	if (GetTask(5131) >= 2000) then
		Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 2000 L�n")
		return
	end
         local tbOpt =
	{
                
		{"L�y Tinh Ng�c(80 diem = 1vien)",doitinhngoc},
                {"��i 10 ty( d��i c�i L�o 1(600k �i�m = 5 ty)",DoiKinhNghiem},
                {"��i 500 TR exp(Tr�n c�i l�o 1)",DoiKinhNghiem},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngoc()
if (GetTask(5135) >= 30000) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 30000 c�i")
		return
	end;
	doitinzzzerrer2()
end
function doitinzzzerrer2()
	AskClientForNumber("DaiTinhN94",1,3000,"80Diem/1 c�i")
end
function DaiTinhN94(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*80
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5135,GetTask(5135)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4807,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Tinh Ng�c <color=red>Th� Bu�n <color>  ")
WriteLogPro("dulieu/epdo/doitinhngoc_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Tinh Ng�c, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end
-----------------------------------------
function DoiKinhNghiem()
	CreateNewSayEx("Xin Ch�o Ng��i T�m Ta C� Vi�c G�", {{"Ta Mu�n ��i 600k �i�m T�ng Kim",DoiKinhNghiem1},{"H�y B�"}})
end

function DoiKinhNghiem1()
if (GetTask(5134) >= 10) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 10 Lan")
		return
	end;	
local nTransLife = ST_GetTransLifeCount()
local nDiemTongKim = GetTask(747)
	if (GetTask(5969) < 1) then
		if (nDiemTongKim >= 600000) then
		tl_addPlayerExp(5000000000) SetTask(747,nDiemTongKim-600000);   
               SetTask(5134,GetTask(5134)+1) 
                SetTask(5131,GetTask(5131)+1)
                 WriteLogPro("dulieu/epdo/doicap_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 cap  cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng��i Kh�ng �� 600.000 �i�m T�ng Kim")
		end
	else
		if (nDiemTongKim >= 600000) then
			tl_addPlayerExp(500000000) SetTask(747,nDiemTongKim-600000); 
                         SetTask(5134,GetTask(5134)+1) 
                        SetTask(5131,GetTask(5131)+1) 
WriteLogPro("dulieu/epdo/doiexp_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 ty exp cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng��i Kh�ng �� 600.000 �i�m T�ng Kim")
		end
	end
end
---------------------------
function liendau()
	local szTitle = "<npc>.<enter><color=yellow>��i hi�p �ang C� <bclr=red>"..GetTask(2501).."<bclr>  �i�m li�n ��u\n<bclr=violet>L�u � Ch� Nh�n M�c Cao Nh�t\n<color=green>note: sau khi nh�n m�c to�n b� �i�m s� b� x�a\n<bclr=red>48 Tr�n (480 �i�m vinh d�) Nh�n 500 KNB\n40 Tr�n (400 �i�m vinh d�) Nh�n 400 knb\n30 tr�n (300 �i�m vinh d�) nh�n 300 knb\n10 tr�n (100 �i�m vinh d�) 30knb <bclr>!"
	local tbOpt =
	{
             {"Nh�n Th��ng Th�ng 48 Tr�n(480 �i�m vinh d�)",BaoRuong8Ngay},
             {"Nh�n Th��ng Th�ng 40 Tr�n(400 �i�m vinh d�)",BaoRuong9Ngay},
             {"Nh�n Th��ng Th�ng 30 Tr�n(300 �i�m vinh d�)",BaoRuong10Ngay},
             {"Qu� Tham Gia Th�ng Tr�n 10 Tr�n(100 �i�m vinh d�)",BaoRuong11Ngay},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function BaoRuong8Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 480) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 48 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 480)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=500},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_48.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 48 tr�n<color> ��t Th��ng <color=red>500 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 48 Tr�n V�i Ti�n Th��ng L� 500 kim Nguy�n B�o,  Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
-----------------------
function BaoRuong9Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 400) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 40 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 400)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=400},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_40.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 40 tr�n<color> ��t Th��ng <color=red>400 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 40 Tr�n V�i Ti�n Th��ng L� 400 kim Nguy�n B�o, Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
-----------------
function BaoRuong10Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 300) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 30 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 300)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=300},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_30.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 30 tr�n<color> ��t Th��ng <color=red>300 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 30 Tr�n V�i Ti�n Th��ng L� 300 kim Nguy�n B�o,Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
------------------------------
function BaoRuong11Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 100) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 10 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 100)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=30},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_10.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 10 tr�n<color> ��t Th��ng <color=red>30 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
    Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 10 Tr�n V�i Ti�n Th��ng L� 30 kim Nguy�n B�o, Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
-----------------------
function kienthiet()
if CalcFreeItemCellCount() < 40 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
local tbAwardczc={
                   
             {szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5069,1,0,0},nCount=10},

}
tbAwardTemplet:GiveAwardByList(tbAwardczc, "Ph�n Th��ng");
end

--=====================================
function doidiemrs()
local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek	= tonumber(date("%w"))
 if nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek ==4 or nWeek == 5 or nWeek == 6 then
Talk(1, "", "T�nh N�ng Rs Shop T�ng Kim Ch� Cho Ph�p V�o Ch� Nh�t......:L�c 21h00 ��n 22h10") 
return 1; 
end 
local tiendong = 200
local ktra_tien = CalcEquiproomItemCount(4, 1496, 1, 1) ;

if (GetTask(5131) == 0)   then 
	Talk(1,""," Ng��i Ch�a �i Ch� shop t�ng kim m� ��i rs g�!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh�ng �� "..tiendong.." KNB l�m sao reset ��y!")
return end
if (GetTask(5131) >= 10)   then 
SetTask(5131,0)
SetTask(5132,0)
SetTask(5133,0)
SetTask(5134,0)
SetTask(5146,0)
SetTask(5349,0)
ConsumeEquiproomItem(tiendong,4,1496,1,1) ---  xoa xu
Talk(1,"","�� Reset Shop TK th�nh c�ng!")
AddGlobalNews("<color=green>Xin Ch�c M�ng <color=orange>"..myplayersex().." "..GetName().."<color> �� Reset Shop �i�m TK H�ng Tu�n...<color>")
WriteLogPro("dulieu/epdo/rsshop_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs shop t�ng kim\n");	
end
end
--end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
