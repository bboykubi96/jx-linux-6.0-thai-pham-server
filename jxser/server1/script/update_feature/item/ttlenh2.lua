----------------***Heart*Doldly***-------------------------
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\log.lua")
-----------------------------------------------------------------------------------
--Task Chay Nhiem Vu
NHIEMVUSTART		 = 5800
NHIEMVUVLMC		 = 5801
NHIEMVUTONGKIM	 = 5802
NHIEMVUVUOTAI		 = 5803
BAOTANGVIEMDE		 = 5804
TRUYCONGLENH		 = 5805
NHIEMVUSATTHU		 = 5806
NHIEMVUTHUYTAC	 = 5807
NHIEMVUTINSU		 = 5808
SUDUNGTHAMMAYMAN	 = 5809
TUONGPHUNGMATLENH	 = 5810
SKILLTASK		 = 5811
TIMEDATE		 = 5812
MAXTPML		 = 5813
TIMELIMIT		 = 5814
DAYLIMIT		 = 5815

TIMEDATEVIP		 = 5816
NHANTHUONGVIP		 = 5817
TKS_TIMEDATE		 = 5818
TKS_TIMECOUNT		 = 5819
MOCVIP			 = 5993

NHANTHUONGHN		 = 5820
NHANTHUONGDOT_1	 = 5821
NHANTHUONGDOT_2	 = 5822
NHANTHUONGDOT_3	 = 5823
NHANTHUONG7NGAY	 = 5824
MAXCOUNT		 = 5825
NHANTHUONG		 = 5826

TSK_NEWTIMERDATE	 = 5827
TSK_NEWMAXCOUNT	 = 5828
TSK_NEWTASKCOUNT	 = 5829

NHANTHUONG		 = 5981
HOANTHANHGHK		 = 5987;
MOCGHK=5982
NHANTHUONGLB=5700
MOCNHANTHUONGLB=5701
--------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-----------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function main()
dofile("script/update_feature/item/ttlenh2.lua")
local Nguoichoi = random (250,480)
local szTitle = format("<color=green>T�n Nh�n V�t: <color=red>%-16s<color>C�p ��: <color=red>%s<color>\n", GetName(), GetLevel())
szTitle = szTitle..format("<color=green>Tr�ng Sinh: <color=red>%-18s<color>C�i L�o: <color=red>"..GetTask(5056).."<color>\n", ST_GetTransLifeCount())
szTitle = szTitle..format("<color=green>Tr�c Tuy�n: <color=red>"..Nguoichoi.."<color>               Kim Nguy�n B�o: <color=red>%s<color>\n",  GetExtPoint(1))

if (GetTask(MAXCOUNT) >= 1 and GetTask(MAXCOUNT) <= 7) then
	local tbOpt = {
               {"Mua M�t N� T�ng Kim",MuaMatNa},
             {"Gi�i K�t Nh�n V�t", giaiket},
           --{"Ki�m Tra ACC Ng��i Kh�c",luachonidten},
            {"M� r�ng 4 r��ng (200 xu) ", moruong},
          --{"Mua M�u B�ng 200 V�n( 10 binh)",MuaTuiMauTienVan},
            {"��i 500 xu >>20 Ngan Van ",doixulayvan},
           --{"Ng�c Ki�m Gia>> 10 VIEN",doingoc},
            -- {"Nhi�m V� T�ng C�p Giang H� K�",NhiemVuGianHoKy},
           --{"Nh�n Th��ng 7 Ng�y ��u Ti�n",QuaTanThu},
             {"Mua (PT,LB)  500 xu",mualenhbai},
	--{"��i M�u PK",trangthai},
	{"H�y V�t Ph�m",DisposeItem},
                      {"K�t Th�c ��i Tho�i",No},
		}
		CreateNewSayEx(szTitle, tbOpt)
	elseif (GetTask(MAXCOUNT) >= 8) then
		local tbOpt = {
            {"Mua M�t N� T�ng Kim",MuaMatNa},
             {"Gi�i K�t Nh�n V�t", giaiket},
           --{"Ki�m Tra ACC Ng��i Kh�c",luachonidten},
            {"M� r�ng 4 r��ng (200 xu) ", moruong},
          --{"Mua M�u B�ng 200 V�n( 10 binh)",MuaTuiMauTienVan},
            {"��i 500 xu >>20 Ngan Van ",doixulayvan},
           --{"Ng�c Ki�m Gia>> 10 VIEN",doingoc},
            -- {"Nhi�m V� T�ng C�p Giang H� K�",NhiemVuGianHoKy},
           --{"Nh�n Th��ng 7 Ng�y ��u Ti�n",QuaTanThu},
             {"Mua (PT,LB)  500 xu",mualenhbai},
	--{"��i M�u PK",trangthai},
	{"H�y V�t Ph�m",DisposeItem},
                      {"K�t Th�c ��i Tho�i",No},
		}
		CreateNewSayEx(szTitle, tbOpt)
	else
		local tbOpt = {{"K�t Th�c ��i Tho�i",No}} CreateNewSayEx(szTitle, tbOpt)
	end
	return 1
end
function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=200 then 
		ConsumeEquiproomItem(200,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� 200 Xu.")	
	end
end
function giaiket()
	SetFightState(0)
	Msg2Player( "<color=yellow>Bi�n Kinh!");
	NewWorld(37,1696,3218);
end
                                              
function muahoatdong()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 50) then 
	Talk(1,"","C�n c� 50 Xu m�i ��i ���c ") 
	return 
	end 
	 ConsumeEquiproomItem(50,4,417,1,1)
local tbAwardc1c={
 {szName="H�i Long Ch�u",tbProp={6,1,2115,1,0,0},nCount = 1},
{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount = 1},
{szName="L�nh B�i Th�y T�c",tbProp={6,1,2745,1,0,0},nCount = 1},
{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount = 1},
{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardc1c, "Ph�n Th��ng");
Talk(1, "", "Nh�n th�nh c�ng ...........!")
end
--------------------------------------
function luachonidten() 
local tiendong = 10
local ktra_tien = CalcEquiproomItemCount(4, 2480, 1, 1) ;
if ktra_tien < tiendong then
Talk(1,"","B�n C�n  "..tiendong.." knb �� Ki�m Tra Ng��i Kh�c, T�m ���c M�i M�t Ti�n!")
return end
	AskClientForString("TenNhanVat", "", 0,5000,"T�n Nh�n V�t") 
end 

function TenNhanVat(nNameChar) 

local nNum = GetPlayerCount()
for i = 1, nNum+2000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetBoxMoney()+ GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nTransLife=GetTask(1963)
		knb=CalcEquiproomItemCount(4,2480,1,1)
		vnd=GetTask(5997)
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng(1) 
		dex=GetDex(1) 
		strg=GetStrg(1) 
		vit=GetVit(1) 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
             local nCurExpPercent = GetExpPercent()
             local player_series = GetProp()
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>Nh�n V�t: "..ObjName.." - �i�m T�ng Kim: "..pr.." �i�m\nTN trong ng��i: "..player_series.." �i�m<color> <color=red> \nTh�n Ph�p: "..dex.." �i�m  -  S�c m�nh: "..strg.." �i�m\nSinh Kh�: "..vit.." �i�m  -   N�i C�ng: "..eng.." �i�m<color>", getn(tbSay), tbSay)
		ConsumeEquiproomItem(10,4,2480,1,1) ---  xoa xu
return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end



-----------------------------------------------------------
function wantt_upgoldeq()
GiveItemUI("N�ng C�p Trang B� Si�u Nh�n "," Th�nh Trang b� B�ch Kim", "doo_upgoldeq_process",1);
end
function doo_upgoldeq_process()
UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) --> h�m up t? trang b? HKMP th�nh BK
for i = 1,10 do -->> n�ng c?p th� trang b? HKMP th�nh BK s? t? l�n +10 , n?u ai k th�ch mu?n +7 +8 th� d?i c�i s? 10 th�nh 7 ho?c 8
UpgradePlatinaItem(GetGiveItemUnit(1)) ---> d�y l� h�m up trang b? bk l�n +10
end
end


function MuaMatNa()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","C�n c� 300 Xu m�i ��i ���c ") 
	return 
	end 
	 ConsumeEquiproomItem(300,4,417,1,1)
local tbAwardcc={
{szName="mat na", tbProp={0,11,446,1,0,0},nCount = 1,nExpiredTime=24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
Talk(1, "", "Nh�n th�nh c�ng  M�t n�.......!")
end
-------------------------------------------------------------------------------------------
function Evenv()
if GetCash()> 500000000 and CalcFreeItemCellCount()>=7 then
	Pay(500000000)
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,49050,1,0,0},nCount=100}," ruong chau bao")
WriteLogPro("dulieu/muaeventienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Mua 100 EVen Tien Van\n");

	else Say("Kh�ng �� 50000 V�n Ho�c 7 � Tr�ng")
end
end

------------------------------------------------------------------------------------------------------------------
function mualenhbai()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","C�n c� 500 Xu m�i ��i ���c ") 
	return 
	end 
	 ConsumeEquiproomItem(500,4,417,1,1)
local tbAwardcc={
{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 500,nBindState = -2},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 500,nBindState = -2},
{szName="HPhong V�n Phi T�c ho�n", tbProp={6,1,190,1,0,0},nCount = 500,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
----------------------------------------
function MuaTuiMauTienVan()
local tuimau60={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,4832,1,0,0},nCount = 20,nExpiredTime=7*24*60},	
}
if GetCash()>=2000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"Ph�n Th��ng GiftCode")
	Pay(2000000)
	
	else Say("Kh�ng �� 200 V�n Ho�c 7 � Tr�ng")
end
end
-------------------------------------
function doingoc()
local tuimau600={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,2623,1,0,0},nCount = 1,nExpiredTime=7*24*60},	
}
if GetCash()>=100000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau600,"Ph�n Th��ng GiftCode")
	Pay(100000)
	
	else Say("Kh�ng �� 10 V�n Ho�c 7 � Tr�ng")
end
end
--------------------------------------------------
function doixulayvan()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","C�n c� 500 Xu m�i ��i ���c ") 
	return 
	end 
	    ConsumeEquiproomItem(500,4,417,1,1)
	Earn(200000000)
Talk(1, "", "Nh�n th�nh c�ng 20000v.")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhiemVuGianHoKy()


local kimbaivuotai= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49088,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaidtau= CalcEquiproomItemCount(6,1,49087,-1)



	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Phong H�a Li�n Th�nh\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Li�n ��u\n<color=green>"..kimbaidtau.."/3 <color>Kim B�i D� t�u\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu},
			{"Tho�t",},
		}
		
		--if GetTask(5969)<=2 then
		--tinsert(tbOpt, 1, {"Ta C�i L�o 2 v� ta mu�n d�ng Kim B�i c�.", NhiemVuGianHoKy_cl2}) 
		--end
	CreateNewSayEx(szTitle, tbOpt)

end

function NhiemVuGianHoKy_cl2()


local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)


local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Phong H�a Li�n Th�nh\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Li�n ��u\n<color=green>"..kimbaidtau.."/3 <color>Kim B�i D� t�u\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu_cl2},
			{"Tho�t",},
		}
		
	CreateNewSayEx(szTitle, tbOpt)

end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu()

local kimbaivuotai= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49088,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaidtau= CalcEquiproomItemCount(6,1,49087,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 or kimbaidtau <3then
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
			if ConsumeEquiproomItem(3, 6,1, 49086,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49088,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49087,-1)>0 and ConsumeEquiproomItem(2, 6,1, 49085,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49082,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 49084,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 49083,-1)>0 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);		
					SetTask(HOANTHANHGHK,1)
					WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nh�n "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
	end
end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu_cl2()

local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
		if ConsumeEquiproomItem(3, 6,1, 4868,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4869,-1)>0 and ConsumeEquiproomItem(2, 6,1, 4870,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4871,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 4872,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 4873,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);	
			SetTask(HOANTHANHGHK,1)
			WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Ho�n th�nh HHK(kb c�) nh�n 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
	end
end
---------------------------------------

---------------------------------------
function KiemTraPhanThuong()
local szView = "<color=green>Ph�n Th��ng Hi�n T�i:<color>\n"..XemPhanThuong()..""
	local tbOpt = {{"K�t Th�c ��i Tho�i",No}} CreateNewSayEx(szView, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nTransLife = GetTask(1963)
local nLevel = GetLevel() ClearAll()
	if (nLevel >= 10 and nLevel < 150) then
		local nAddLevel = 150 - nLevel ST_LevelUp(nAddLevel)
		Msg2Player("Ch�c M�ng "..myplayersex().." T�ng C�p 150")
	else
		tbAwardTemplet:GiveAwardByList(tbAward_Exp[nTransLife],1)
	end
	SetTask(DAYLIMIT,GetTask(DAYLIMIT)+1)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongVip()
local nDate = tonumber(GetLocalDate("%d"))
	if GetTask(TIMEDATEVIP) ~= nDate then
		SetTask(TIMEDATEVIP, nDate)
		SetTask(NHANTHUONGVIP, 0)
	end
	if GetTask(NHANTHUONGVIP) == 0 then
		Say(""..PhanThuongVip().."",2,"Nh�n Th��ng/VipMoiNgay","H�y B�/No")
	else
		Say("<color=red>H�m N�y Ng��i �� Nh�n Th��ng R�i")
	end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Ch�nh Ph�i./mauvang")
tinsert(tbSay,"T� Ph�i./mautim")
tinsert(tbSay,"Trung L�p./mauxanh")
tinsert(tbSay,"S�t Th�./maudo")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)	
		local nBindState = GetItemBindState(nItemIndex)
		--if (nCount ~= 1) then 
		--	Talk(1,"","M�i l�n ch� c� th� h�y ���c m�t v�t ph�m!!")
		--	return
		--end
	
		--if (nBindState >= 0) then
		--	Talk(1,"","V�t ph�m c�n h�y ph�i l� v�t ph�m kh�a!")
		--	return
		--end
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!")
		Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." H�y item kh�a "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end
end
--------------------------------------------------Nh�n Th��ng H�ng Ng�y------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHangNgay()
local nDate = tonumber(GetLocalDate("%Y%m%d"))
if (GetTask(NHANTHUONGHN) ~= nDate) then
	SetTask(NHANTHUONGHN, nDate)
	SetTask(NHANTHUONGDOT_1, 0)
	SetTask(NHANTHUONGDOT_2, 0)
	SetTask(NHANTHUONGDOT_3, 0)
end
	Say("<bclr=violet>M�i "..myplayersex().." Ch�n M�c Nh�n Th��ng",4,
	"Nh�n Th��ng ��t 1/NhanThuongHN_Dot1",
	"Nh�n Th��ng ��t 2/NhanThuongHN_Dot2",
	"Nh�n Th��ng Cu�i Tu�n/NhanThuong_CuoiTuan",
	"Th�i/No")
end
------------------------------------------------------------------Nh�n Th��ng ��t 1---------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHN_Dot1()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local nSilverCount = CalcEquiproomItemCount(6,1,4894,1)
	if (GetTask(NHANTHUONGDOT_1) == 0) then
		if (nCurtime >= 0000 and nCurtime <= 1359) then
			if (nSilverCount >= 1) then
				if (CalcFreeItemCellCount() >= 40) then
					local tbAward = {
						{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Anh H�ng Thi�p",tbProp={6,1,1604,1,0,0}, nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Phong V�n Chi�u Binh L�nh",tbProp={6,1,4897,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount = 20,nExpiredTime=nRestMin,nBindState = -2},
						{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
					}
					tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng H�ng Ng�y ��t 1")
					ConsumeEquiproomItem(1,6,1,4894,1); SetTask(NHANTHUONGDOT_1, 1)
					Msg2Player("<color=green>Ch�c M�ng "..GetName().." �� Nh�n Ph�n Th��ng Th�nh C�ng<color>")
				else
					Talk(1,"","<color=red>H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
				end
			else
				Talk(1,"","<color=red>Nh�n Th��ng ��t N�y C�n 1 Nh�t Th�ng L�nh")
			end
		else
			Talk(1,"","<color=yellow>Th�i Gian Nh�n Th��ng ��t 1 T� 00h:00 ��n 13h:59<color>")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." �� Nh�n Th��ng R�i Ng�y Mai H�y Quay L�i")
	end			
end
------------------------------------------------------------------Nh�n Th��ng ��t 2---------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHN_Dot2()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local nSilverCount = CalcEquiproomItemCount(6,1,4894,1)
	if (GetTask(NHANTHUONGDOT_2) == 0) then
		if (nCurtime >= 1400 and nCurtime <= 2359) then
			if (nSilverCount >= 1) then
				if (CalcFreeItemCellCount() >= 40) then
					local tbAward = {
						{szName="H�i Long Ch�u",tbProp={6,1,2115,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="L�nh B�i Th�y T�c",tbProp={6,1,2745,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
                                                {szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
					}
					tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng H�ng Ng�y ��t 2")
					ConsumeEquiproomItem(1,6,1,4894,1); SetTask(NHANTHUONGDOT_2, 1)
					Msg2Player("<color=green>Ch�c M�ng "..GetName().." �� Nh�n Ph�n Th��ng Th�nh C�ng<color>")
				else
					Talk(1,"","<color=red>H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
				end
			else
				Talk(1,"","<color=red>Nh�n Th��ng ��t N�y C�n 1 Nh�t Th�ng L�nh")
			end
		else
			Talk(1,"","<color=yellow>Th�i Gian Nh�n Th��ng ��t 1 T� 14h:00 ��n 23h:59<color>")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." �� Nh�n Th��ng R�i Ng�y Mai H�y Quay L�i")
	end			
end
---------------------------------------------------------------------Nh�n Th��ng Cu�i Tu�n-------------------------------------------------------------------------------------------------------------------------
function NhanThuong_CuoiTuan()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeek = tonumber(GetLocalDate("%w"))
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local nSilverCount = CalcEquiproomItemCount(6,1,4894,1)
	if (GetTask(NHANTHUONGDOT_3) == 0) then
		if (nWeek == 5 or nWeek == 6 or nWeek == 0) then
			if (nSilverCount >= 2) then
				if (CalcFreeItemCellCount() >= 40) then
					local tbAward = {
						[1] = {
							{szName="To�n N�ng L�nh",tbProp={6,1,4822,1,0},nCount=2,nExpiredTime=nRestMin,nBindState = -2},
							{szName="L�nh B�i M�c Nh�n",tbProp={6,1,4899,1,0,0},nCount = 100,nExpiredTime=nRestMin,nBindState = -2},
							{szName="T��ng Ph�ng M�t L�nh",tbProp={6,1,4809,1,0},nCount=2,nExpiredTime=nRestMin,nBindState = -2},
						},
						[2] = {
							{szName="B�ch Ni�n Huy Ho�ng qu�",tbProp={6,1,2269,1,0,0},nCount=5,nRate=50,nExpiredTime=nRestMin,nBindState = -2},
							{szName="Thi�n Ni�n Huy Ho�ng qu�",tbProp={6,1,2270,1,0,0},nCount=5,nRate=30,nExpiredTime=nRestMin,nBindState = -2},
							{szName="V�n Ni�n Huy Ho�ng qu�",tbProp={6,1,2271,1,0,0},nCount=5,nRate=20,nExpiredTime=nRestMin,nBindState = -2},
						},
					}
					tbAwardTemplet:GiveAwardByList(tbAward_3,"Ph�n Th��ng Cu�i Tu�n")
					ConsumeEquiproomItem(2,6,1,4894,1); SetTask(NHANTHUONGDOT_3, 1)
					Msg2Player("<color=green>Ch�c M�ng "..GetName().." �� Nh�n Ph�n Th��ng Cu�i Tu�n Th�nh C�ng<color>")
				else
					Talk(1,"","<color=red>H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
				end
			else
				Talk(1,"","<color=red>Nh�n Th��ng ��t N�y C�n 2 Nh�t Th�ng L�nh")
			end
		else
			Talk(1,"","<color=yellow>Th�i Gian Nh�n Th��ng Th� 6, Th� 7, V� Ch� Nh�t H�ng Tu�n Vui L�ng Quay L�i Sau...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." �� Nh�n Th��ng R�i Ng�y Mai H�y Quay L�i")
	end			
end
----------------------------------------------------------------Nhan Qua 7 Ngay------------------------------------------------------------------------------------------------------------
function QuaTanThu()
local Ngay = GetTask(MAXCOUNT)
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) == 0) then
		Say("<color=yellow>S� Ng�y �� Nh�n: "..ViewDay().."",2,"Nh�n Th��ng Ng�y Th� "..Ngay.."/NhanTanThu","H�y B�/No")
	else
		Say("<color=yellow>S� Ng�y �� Nh�n: "..ViewDay().."")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------
function NhanTanThu()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	if (CalcFreeItemCellCount() >= 40) then
		local tbAward = {
			{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Ng�c Long",tbProp={6,1,2623,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="H�i Long Ch�u",tbProp={6,1,2115,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Thi�n Tr�",tbProp={6,1,4904,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Th�ng H�nh",tbProp={6,1,2590,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Thi�n B�o Kh�",tbProp={6,1,2813,1,0,0},nCount=1,nExpiredTime=nRestMin, nBindState = -2},
			{szName="L�nh B�i Th�y T�c",tbProp={6,1,2745,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Phong L�ng ��",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
                     --  {szName="L�nh B�i Phong L�ng ��",tbProp={6,1,49084,1,0,0},nCount=3,nExpiredTime=nRestMin,nBindState = -2},

		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
		SetTask(NHANTHUONG,1) SetTask(MAXCOUNT,GetTask(MAXCOUNT)+1)
	else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ViewDay()
	if GetTask(MAXCOUNT) == 1 then
		return "[<color=red>1<color>] [<color=red>2<color>] [<color=red>3<color>] [<color=red>4<color>] [<color=red>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 2 then
		return "[<color=green>1<color>] [<color=red>2<color>] [<color=red>3<color>] [<color=red>4<color>] [<color=red>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 3 then
		return "[<color=green>1<color>] [<color=green>2<color>] [<color=red>3<color>] [<color=red>4<color>] [<color=red>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 4 then
		return "[<color=green>1<color>] [<color=green>2<color>] [<color=green>3<color>] [<color=red>4<color>] [<color=red>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 5 then
		return "[<color=green>1<color>] [<color=green>2<color>] [<color=green>3<color>] [<color=green>4<color>] [<color=red>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 6 then
		return "[<color=green>1<color>] [<color=green>2<color>] [<color=green>3<color>] [<color=green>4<color>] [<color=green>5<color>] [<color=red>6<color>] [<color=red>7<color>]"
	elseif GetTask(MAXCOUNT) == 7 then
		return "[<color=green>1<color>] [<color=green>2<color>] [<color=green>3<color>] [<color=green>4<color>] [<color=green>5<color>] [<color=green>6<color>] [<color=red>7<color>]"
	end
end
-------------------------------------------------------------------------------Ph�n Th��ng ��ng Nh�p 42 Ng�y----------------------------------------------------------------------------------------------------------------------
function NhanThuong42Ngay()
local Ngay = GetTask(TSK_NEWMAXCOUNT)
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(TSK_NEWTIMERDATE) ~= nDate) then
		SetTask(TSK_NEWTIMERDATE, nDate)
		SetTask(TSK_NEWTASKCOUNT, 0)
		if (GetTask(TSK_NEWMAXCOUNT) >= 43) then
			SetTask(TSK_NEWMAXCOUNT,1)
		end
	end
	if (GetTask(TSK_NEWMAXCOUNT) >= 1) and (GetTask(TSK_NEWMAXCOUNT) <= 42) then
		if (GetTask(TSK_NEWTASKCOUNT) == 0) then
			local tbOpt = {
				{"Nh�n Th��ng Ng�y Th� ["..Ngay.."]",PhanThuongDangNhap},
				{"K�t Th�c ��i Tho�i",No},
			}
			CreateNewSayEx("<color=yellow>S� Ng�y �� Nh�n:\n"..View42Day().."<color>", tbOpt)
		else
			local tbOpt = {{"K�t Th�c ��i Tho�i",No}} CreateNewSayEx("<color=yellow>S� Ng�y �� Nh�n:\n"..View42Day().."<color>", tbOpt)
		end
	else
		Say("<bclr=blue>Th�i Gian Nh�n Th��ng S� C�p Nh�t L�i Sau...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuongDangNhap()
local Ngay = GetTask(TSK_NEWMAXCOUNT)
	if (CalcFreeItemCellCount() >= 10) then
		tbAwardTemplet:GiveAwardByList(tbAward42[Ngay],"Nh�n Th��ng Ng�y Th� <color=yellow>"..Ngay.."<color> Th�nh C�ng")
		SetTask(TSK_NEWTASKCOUNT,1) SetTask(TSK_NEWMAXCOUNT,GetTask(TSK_NEWMAXCOUNT)+1)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n Th��ng")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
