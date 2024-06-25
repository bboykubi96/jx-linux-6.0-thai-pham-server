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
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
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
local szTitle = format("<color=green>Tªn Nh©n VËt: <color=red>%-16s<color>CÊp §é: <color=red>%s<color>\n", GetName(), GetLevel())
szTitle = szTitle..format("<color=green>Trïng Sinh: <color=red>%-18s<color>C¶i L·o: <color=red>"..GetTask(5056).."<color>\n", ST_GetTransLifeCount())
szTitle = szTitle..format("<color=green>Trùc TuyÕn: <color=red>"..Nguoichoi.."<color>               Kim Nguyªn B¶o: <color=red>%s<color>\n",  GetExtPoint(1))

if (GetTask(MAXCOUNT) >= 1 and GetTask(MAXCOUNT) <= 7) then
	local tbOpt = {
               {"Mua MÆt N¹ Tèng Kim",MuaMatNa},
             {"Gi¶i KÑt Nh©n VËt", giaiket},
           --{"KiÓm Tra ACC Ng­êi Kh¸c",luachonidten},
            {"Më réng 4 r­¬ng (200 xu) ", moruong},
          --{"Mua M¸u B»ng 200 V¹n( 10 binh)",MuaTuiMauTienVan},
            {"§æi 500 xu >>20 Ngan Van ",doixulayvan},
           --{"Ngäc KiÕm Gia>> 10 VIEN",doingoc},
            -- {"NhiÖm Vô T¨ng CÊp Giang Hå Ký",NhiemVuGianHoKy},
           --{"NhËn Th­ëng 7 Ngµy §Çu Tiªn",QuaTanThu},
             {"Mua (PT,LB)  500 xu",mualenhbai},
	--{"§æi Mµu PK",trangthai},
	{"Hñy VËt PhÈm",DisposeItem},
                      {"KÕt Thóc §èi Tho¹i",No},
		}
		CreateNewSayEx(szTitle, tbOpt)
	elseif (GetTask(MAXCOUNT) >= 8) then
		local tbOpt = {
            {"Mua MÆt N¹ Tèng Kim",MuaMatNa},
             {"Gi¶i KÑt Nh©n VËt", giaiket},
           --{"KiÓm Tra ACC Ng­êi Kh¸c",luachonidten},
            {"Më réng 4 r­¬ng (200 xu) ", moruong},
          --{"Mua M¸u B»ng 200 V¹n( 10 binh)",MuaTuiMauTienVan},
            {"§æi 500 xu >>20 Ngan Van ",doixulayvan},
           --{"Ngäc KiÕm Gia>> 10 VIEN",doingoc},
            -- {"NhiÖm Vô T¨ng CÊp Giang Hå Ký",NhiemVuGianHoKy},
           --{"NhËn Th­ëng 7 Ngµy §Çu Tiªn",QuaTanThu},
             {"Mua (PT,LB)  500 xu",mualenhbai},
	--{"§æi Mµu PK",trangthai},
	{"Hñy VËt PhÈm",DisposeItem},
                      {"KÕt Thóc §èi Tho¹i",No},
		}
		CreateNewSayEx(szTitle, tbOpt)
	else
		local tbOpt = {{"KÕt Thóc §èi Tho¹i",No}} CreateNewSayEx(szTitle, tbOpt)
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
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ 200 Xu.")	
	end
end
function giaiket()
	SetFightState(0)
	Msg2Player( "<color=yellow>BiÖn Kinh!");
	NewWorld(37,1696,3218);
end
                                              
function muahoatdong()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 50) then 
	Talk(1,"","CÇn cã 50 Xu míi ®æi ®­îc ") 
	return 
	end 
	 ConsumeEquiproomItem(50,4,417,1,1)
local tbAwardc1c={
 {szName="H¶i Long Ch©u",tbProp={6,1,2115,1,0,0},nCount = 1},
{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount = 1},
{szName="LÖnh Bµi Thñy TÆc",tbProp={6,1,2745,1,0,0},nCount = 1},
{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount = 1},
{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardc1c, "PhÇn Th­ëng");
Talk(1, "", "NhËn thµnh c«ng ...........!")
end
--------------------------------------
function luachonidten() 
local tiendong = 10
local ktra_tien = CalcEquiproomItemCount(4, 2480, 1, 1) ;
if ktra_tien < tiendong then
Talk(1,"","B¹n CÇn  "..tiendong.." knb §Ó KiÓm Tra Ng­êi Kh¸c, T×m §­îc Míi MÊt TiÒn!")
return end
	AskClientForString("TenNhanVat", "", 0,5000,"Tªn Nh©n VËt") 
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
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Nh©n VËt: "..ObjName.." - §iÓm Tèng Kim: "..pr.." §iÓm\nTN trong ng­êi: "..player_series.." §iÓm<color> <color=red> \nTh©n Ph¸p: "..dex.." §iÓm  -  Søc m¹nh: "..strg.." §iÓm\nSinh KhÝ: "..vit.." §iÓm  -   Néi C«ng: "..eng.." §iÓm<color>", getn(tbSay), tbSay)
		ConsumeEquiproomItem(10,4,2480,1,1) ---  xoa xu
return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end



-----------------------------------------------------------
function wantt_upgoldeq()
GiveItemUI("N©ng CÊp Trang BÞ Siªu Nh©n "," Thµnh Trang bÞ B¹ch Kim", "doo_upgoldeq_process",1);
end
function doo_upgoldeq_process()
UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) --> hàm up t? trang b? HKMP thành BK
for i = 1,10 do -->> nâng c?p thì trang b? HKMP thành BK s? t? lên +10 , n?u ai k thích mu?n +7 +8 thì d?i cái s? 10 thành 7 ho?c 8
UpgradePlatinaItem(GetGiveItemUnit(1)) ---> dây là hàm up trang b? bk lên +10
end
end


function MuaMatNa()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","CÇn cã 300 Xu míi ®æi ®­îc ") 
	return 
	end 
	 ConsumeEquiproomItem(300,4,417,1,1)
local tbAwardcc={
{szName="mat na", tbProp={0,11,446,1,0,0},nCount = 1,nExpiredTime=24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
Talk(1, "", "NhËn thµnh c«ng  MÆt n¹.......!")
end
-------------------------------------------------------------------------------------------
function Evenv()
if GetCash()> 500000000 and CalcFreeItemCellCount()>=7 then
	Pay(500000000)
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,49050,1,0,0},nCount=100}," ruong chau bao")
WriteLogPro("dulieu/muaeventienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Mua 100 EVen Tien Van\n");

	else Say("Kh«ng §ñ 50000 V¹n HoÆc 7 ¤ Trèng")
end
end

------------------------------------------------------------------------------------------------------------------
function mualenhbai()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","CÇn cã 500 Xu míi ®æi ®­îc ") 
	return 
	end 
	 ConsumeEquiproomItem(500,4,417,1,1)
local tbAwardcc={
{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 500,nBindState = -2},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 500,nBindState = -2},
{szName="HPhong V©n Phi Tèc hoµn", tbProp={6,1,190,1,0,0},nCount = 500,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
----------------------------------------
function MuaTuiMauTienVan()
local tuimau60={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4832,1,0,0},nCount = 20,nExpiredTime=7*24*60},	
}
if GetCash()>=2000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"PhÇn Th­ëng GiftCode")
	Pay(2000000)
	
	else Say("Kh«ng §ñ 200 V¹n HoÆc 7 ¤ Trèng")
end
end
-------------------------------------
function doingoc()
local tuimau600={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,2623,1,0,0},nCount = 1,nExpiredTime=7*24*60},	
}
if GetCash()>=100000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau600,"PhÇn Th­ëng GiftCode")
	Pay(100000)
	
	else Say("Kh«ng §ñ 10 V¹n HoÆc 7 ¤ Trèng")
end
end
--------------------------------------------------
function doixulayvan()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","CÇn cã 500 Xu míi ®æi ®­îc ") 
	return 
	end 
	    ConsumeEquiproomItem(500,4,417,1,1)
	Earn(200000000)
Talk(1, "", "NhËn thµnh c«ng 20000v.")
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



	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Phong Háa Liªn Thµnh\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Liªn §Êu\n<color=green>"..kimbaidtau.."/3 <color>Kim Bµi D· tÈu\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu},
			{"Tho¸t",},
		}
		
		--if GetTask(5969)<=2 then
		--tinsert(tbOpt, 1, {"Ta C¶i L·o 2 vµ ta muèn dïng Kim Bµi cò.", NhiemVuGianHoKy_cl2}) 
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


local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Phong Háa Liªn Thµnh\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Liªn §Êu\n<color=green>"..kimbaidtau.."/3 <color>Kim Bµi D· tÈu\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu_cl2},
			{"Tho¸t",},
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
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
					WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhËn "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
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
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
			WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Hoµn thµnh HHK(kb cò) nhËn 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end
---------------------------------------

---------------------------------------
function KiemTraPhanThuong()
local szView = "<color=green>PhÇn Th­ëng HiÖn T¹i:<color>\n"..XemPhanThuong()..""
	local tbOpt = {{"KÕt Thóc §èi Tho¹i",No}} CreateNewSayEx(szView, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nTransLife = GetTask(1963)
local nLevel = GetLevel() ClearAll()
	if (nLevel >= 10 and nLevel < 150) then
		local nAddLevel = 150 - nLevel ST_LevelUp(nAddLevel)
		Msg2Player("Chóc Mõng "..myplayersex().." T¨ng CÊp 150")
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
		Say(""..PhanThuongVip().."",2,"NhËn Th­ëng/VipMoiNgay","Hñy Bá/No")
	else
		Say("<color=red>H«m Nµy Ng­¬i §· NhËn Th­ëng Råi")
	end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Tho¸t/no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn", getn(tbSay), tbSay)
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
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)	
		local nBindState = GetItemBindState(nItemIndex)
		--if (nCount ~= 1) then 
		--	Talk(1,"","Mçi lÇn chØ cã thÓ hñy ®­îc mét vËt phÈm!!")
		--	return
		--end
	
		--if (nBindState >= 0) then
		--	Talk(1,"","VËt phÈm cÇn hñy ph¶i lµ vËt phÈm khãa!")
		--	return
		--end
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","§¹i hiÖp cã thÓ s¾p xÕp l¹i r­¬ng chøa ®å råi!")
		Msg2Player("§¹i hiÖp võa hñy vËt phÈm thµnh c«ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Hñy item khãa "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
end
--------------------------------------------------NhËn Th­ëng Hµng Ngµy------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHangNgay()
local nDate = tonumber(GetLocalDate("%Y%m%d"))
if (GetTask(NHANTHUONGHN) ~= nDate) then
	SetTask(NHANTHUONGHN, nDate)
	SetTask(NHANTHUONGDOT_1, 0)
	SetTask(NHANTHUONGDOT_2, 0)
	SetTask(NHANTHUONGDOT_3, 0)
end
	Say("<bclr=violet>Mêi "..myplayersex().." Chän Mèc NhËn Th­ëng",4,
	"NhËn Th­ëng §ît 1/NhanThuongHN_Dot1",
	"NhËn Th­ëng §ît 2/NhanThuongHN_Dot2",
	"NhËn Th­ëng Cuèi TuÇn/NhanThuong_CuoiTuan",
	"Th«i/No")
end
------------------------------------------------------------------NhËn Th­ëng §ît 1---------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHN_Dot1()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local nSilverCount = CalcEquiproomItemCount(6,1,4894,1)
	if (GetTask(NHANTHUONGDOT_1) == 0) then
		if (nCurtime >= 0000 and nCurtime <= 1359) then
			if (nSilverCount >= 1) then
				if (CalcFreeItemCellCount() >= 40) then
					local tbAward = {
						{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Anh Hïng ThiÕp",tbProp={6,1,1604,1,0,0}, nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Phong V©n Chiªu Binh LÖnh",tbProp={6,1,4897,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount = 20,nExpiredTime=nRestMin,nBindState = -2},
						{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
						{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
					}
					tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Hµng Ngµy §ît 1")
					ConsumeEquiproomItem(1,6,1,4894,1); SetTask(NHANTHUONGDOT_1, 1)
					Msg2Player("<color=green>Chóc Mõng "..GetName().." §· NhËn PhÇn Th­ëng Thµnh C«ng<color>")
				else
					Talk(1,"","<color=red>H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
				end
			else
				Talk(1,"","<color=red>NhËn Th­ëng §ît Nµy CÇn 1 NhËt Th«ng LÖnh")
			end
		else
			Talk(1,"","<color=yellow>Thêi Gian NhËn Th­ëng §ît 1 Tõ 00h:00 §Õn 13h:59<color>")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." §· NhËn Th­ëng Råi Ngµy Mai H·y Quay L¹i")
	end			
end
------------------------------------------------------------------NhËn Th­ëng §ît 2---------------------------------------------------------------------------------------------------------------------------------------
function NhanThuongHN_Dot2()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local nSilverCount = CalcEquiproomItemCount(6,1,4894,1)
	if (GetTask(NHANTHUONGDOT_2) == 0) then
		if (nCurtime >= 1400 and nCurtime <= 2359) then
			if (nSilverCount >= 1) then
				if (CalcFreeItemCellCount() >= 40) then
					local tbAward = {
						{szName="H¶i Long Ch©u",tbProp={6,1,2115,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="LÖnh Bµi Thñy TÆc",tbProp={6,1,2745,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
						{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
                                                {szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount = 1,nExpiredTime=nRestMin,nBindState = -2},
					}
					tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Hµng Ngµy §ît 2")
					ConsumeEquiproomItem(1,6,1,4894,1); SetTask(NHANTHUONGDOT_2, 1)
					Msg2Player("<color=green>Chóc Mõng "..GetName().." §· NhËn PhÇn Th­ëng Thµnh C«ng<color>")
				else
					Talk(1,"","<color=red>H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
				end
			else
				Talk(1,"","<color=red>NhËn Th­ëng §ît Nµy CÇn 1 NhËt Th«ng LÖnh")
			end
		else
			Talk(1,"","<color=yellow>Thêi Gian NhËn Th­ëng §ît 1 Tõ 14h:00 §Õn 23h:59<color>")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." §· NhËn Th­ëng Råi Ngµy Mai H·y Quay L¹i")
	end			
end
---------------------------------------------------------------------NhËn Th­ëng Cuèi TuÇn-------------------------------------------------------------------------------------------------------------------------
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
							{szName="Toµn N¨ng LÖnh",tbProp={6,1,4822,1,0},nCount=2,nExpiredTime=nRestMin,nBindState = -2},
							{szName="LÖnh Bµi Méc Nh©n",tbProp={6,1,4899,1,0,0},nCount = 100,nExpiredTime=nRestMin,nBindState = -2},
							{szName="T­¬ng Phïng MËt LÖnh",tbProp={6,1,4809,1,0},nCount=2,nExpiredTime=nRestMin,nBindState = -2},
						},
						[2] = {
							{szName="B¸ch Niªn Huy Hoµng qu¶",tbProp={6,1,2269,1,0,0},nCount=5,nRate=50,nExpiredTime=nRestMin,nBindState = -2},
							{szName="Thiªn Niªn Huy Hoµng qu¶",tbProp={6,1,2270,1,0,0},nCount=5,nRate=30,nExpiredTime=nRestMin,nBindState = -2},
							{szName="V¹n Niªn Huy Hoµng qu¶",tbProp={6,1,2271,1,0,0},nCount=5,nRate=20,nExpiredTime=nRestMin,nBindState = -2},
						},
					}
					tbAwardTemplet:GiveAwardByList(tbAward_3,"PhÇn Th­ëng Cuèi TuÇn")
					ConsumeEquiproomItem(2,6,1,4894,1); SetTask(NHANTHUONGDOT_3, 1)
					Msg2Player("<color=green>Chóc Mõng "..GetName().." §· NhËn PhÇn Th­ëng Cuèi TuÇn Thµnh C«ng<color>")
				else
					Talk(1,"","<color=red>H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
				end
			else
				Talk(1,"","<color=red>NhËn Th­ëng §ît Nµy CÇn 2 NhËt Th«ng LÖnh")
			end
		else
			Talk(1,"","<color=yellow>Thêi Gian NhËn Th­ëng Thø 6, Thø 7, Vµ Chñ NhËt Hµng TuÇn Vui Lßng Quay L¹i Sau...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." §· NhËn Th­ëng Råi Ngµy Mai H·y Quay L¹i")
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
		Say("<color=yellow>Sè Ngµy §· NhËn: "..ViewDay().."",2,"NhËn Th­ëng Ngµy Thø "..Ngay.."/NhanTanThu","Hñy Bá/No")
	else
		Say("<color=yellow>Sè Ngµy §· NhËn: "..ViewDay().."")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------
function NhanTanThu()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	if (CalcFreeItemCellCount() >= 40) then
		local tbAward = {
			{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=50,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Ngäc Long",tbProp={6,1,2623,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="H¶i Long Ch©u",tbProp={6,1,2115,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Thiªn Tr×",tbProp={6,1,4904,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Th«ng Hµnh",tbProp={6,1,2590,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Thiªn B¶o Khè",tbProp={6,1,2813,1,0,0},nCount=1,nExpiredTime=nRestMin, nBindState = -2},
			{szName="LÖnh Bµi Thñy TÆc",tbProp={6,1,2745,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Phong L¨ng §é",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
                     --  {szName="LÖnh Bµi Phong L¨ng §é",tbProp={6,1,49084,1,0,0},nCount=3,nExpiredTime=nRestMin,nBindState = -2},

		}
		tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
		SetTask(NHANTHUONG,1) SetTask(MAXCOUNT,GetTask(MAXCOUNT)+1)
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
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
-------------------------------------------------------------------------------PhÇn Th­ëng §¨ng NhËp 42 Ngµy----------------------------------------------------------------------------------------------------------------------
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
				{"NhËn Th­ëng Ngµy Thø ["..Ngay.."]",PhanThuongDangNhap},
				{"KÕt Thóc §èi Tho¹i",No},
			}
			CreateNewSayEx("<color=yellow>Sè Ngµy §· NhËn:\n"..View42Day().."<color>", tbOpt)
		else
			local tbOpt = {{"KÕt Thóc §èi Tho¹i",No}} CreateNewSayEx("<color=yellow>Sè Ngµy §· NhËn:\n"..View42Day().."<color>", tbOpt)
		end
	else
		Say("<bclr=blue>Thêi Gian NhËn Th­ëng SÏ CËp NhËt L¹i Sau...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuongDangNhap()
local Ngay = GetTask(TSK_NEWMAXCOUNT)
	if (CalcFreeItemCellCount() >= 10) then
		tbAwardTemplet:GiveAwardByList(tbAward42[Ngay],"NhËn Th­ëng Ngµy Thø <color=yellow>"..Ngay.."<color> Thµnh C«ng")
		SetTask(TSK_NEWTASKCOUNT,1) SetTask(TSK_NEWMAXCOUNT,GetTask(TSK_NEWMAXCOUNT)+1)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
