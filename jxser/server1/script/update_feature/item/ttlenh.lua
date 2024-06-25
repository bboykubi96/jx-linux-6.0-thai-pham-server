----------------***Heart*Doldly***-------------------------
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\log.lua")
-----------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------------------------------------
NHANTHUONG		 = 5981
NHANTHUONG7NGAY	 = 5983
HOANTHANHGHK		 = 5987;
MOCGHK=5982
NHANTHUONGLB=5700
MOCNHANTHUONGLB=5701

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function main()
dofile("script/update_feature/item/ttlenh.lua")
local szTitlezs = "<color=green>N�ng ��ng M�i Ng�y Th�ng C�p Nhanh C�ng<color>\n<color=violet>* * * * * * * * * * <color=fire>V� L�m L�nh<color> * * * * * * * * * *<color>\n<color=yellow>S�n Boss S�t Th� - S�n Boss Ho�ng Kim - Nhi�m V� VLMC\nChi�n Tr��ng T�ng Kim - Vi�m �� B�o T�ng - V��t �i\nKi�m Gia M� Cung - Nhi�m V� B�c ��u - Phong L�ng ��\nV�n Ti�u Thanh Th�nh - Qu� Ho�ng Kim - Qu� Huy Ho�ng\n��u Tr��ng Sinh T� - H� T�ng C�ng Ch�a - �ua Ng�a\nLo�n Chi�n C�u Ch�u - Thi�n Tr� M�t C�nh - T�n S�\nL�i ��i C�ng B�nh T� H�nh Th�c ��t C��c Xu - KNB - KV<color>"
	local tbOpt = {
			{"Nhi�m V� T�ng C�p Giang H� K�",NhiemVuGianHoKy},
			--{"Nh�n Th��ng 7 Ng�y ��u Ti�n",NhanTanThu},
			 {"H� Tr� Nh�n T�i L�nh ��o",NhanTaiLanhDaoThem},
			--{"Nh�n mi�n ph� Chi�n C� + L�nh B�i + Phi T�c",NhanChienCo},
			--{"��i M�u PK",trangthai},
			{"H�y V�t Ph�m",DisposeItem},
			{"Tho�t",},
		}
		CreateNewSayEx(szTitlezs, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhiemVuGianHoKy()


local kimbaivuotai= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49087,-1)



	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Vi S�n ��o\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Vi�m ��\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
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



	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Vi S�n ��o\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Vi�m ��\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu_cl2},
			{"Tho�t",},
		}
		
	CreateNewSayEx(szTitle, tbOpt)

end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu()

local kimbaivuotai= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49087,-1)


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
			if ConsumeEquiproomItem(3, 6,1, 49082,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49083,-1)>0 and ConsumeEquiproomItem(2, 6,1, 49084,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49085,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 49086,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 49087,-1)>0 then
					if GetTask(5969)==3 then
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);		
					else
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);		
					end
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
function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x7 � tr�ng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i Vi S�n ��o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			--{szName="M�t N� Tong Kim",tbProp={0,11,447,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=10,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
						--if nWeekday==6 or nWeekday==0 then
							--tbAwardTemplet:GiveAwardByList(tbAward_cuoituan,"Nh�n Th��ng Th�nh C�ng")
						--	end
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		end

end

function NhanLBPT()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
		tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
	--	SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
--------------------------------------------------------------------------------

------------------------------------------------------------------------------------
function NhanChienCo()
if CalcFreeItemCellCount() < 30 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang 30 cho")
	end
local tbAwardcc={
{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 100,nBindState = -2},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 100,nBindState = -2},
{szName="HPhong V�n Phi T�c ho�n", tbProp={6,1,190,1,0,0},nCount = 100,nBindState = -2},
{szName="Phong V�n Chi�u Binh L�nh",tbProp={6,1,4897,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
-------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!")
		Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." H�y item kh�a "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------