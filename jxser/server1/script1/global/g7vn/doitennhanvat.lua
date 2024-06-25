Include("\\script\\gmscript.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\rolename_op.lua")

local nvnhanthem =  {
	{"tamquoc01", 1 },
	{"", 1 },
	{"", 1 },
	{"", 1 },
	{"", 1 },
}

function isnvnhanthem()
local aName = GetAccount()
	for i=1, getn(%nvnhanthem) do
		if aName == %nvnhanthem[i][1] then
			return %nvnhanthem[i][2]
		end
	end
return 0
end;

function chuyensv_hotrodangcap()
if isnvnhanthem() == 0 then
	Say("�� nh�n h� tr� ��ng c�p")
	return
end

local task = GetTask(idtasknhancapchuyensv)
if task > 0 then
	Say("�� nh�n h� tr� ��ng c�p")
	return
end
local nAddLevel = 20
ST_LevelUp(nAddLevel)
SetTask(idtasknhancapchuyensv,1)--da nhan ho tro dang cap
end	

function chuyensv_hotrotrangbi()

if isnvnhanthem() == 0 then
	Say("�� nh�n h� tr�")
	return
end

if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�n.",0);
		return
end

local task = GetTask(idtasknhantrangbichuyensv)
if task > 0 then
	Say("�� nh�n h� tr� trang b�")
	return
end

local nCurLevel = GetLevel()
if nCurLevel < 120 then
inVatPham = AddItem(0,10,5,10,0,0,0)--Ngua chieu da
SetItemBindState(inVatPham,-2)
else
inVatPham =  AddItem(0,10,6,10,0,0,0) -- Ngua bon tieu
SetItemBindState(inVatPham,-2)
inVatPham =  AddItem(6,1,2425,1,0,0) -- Dai thanh bi kip 120
SetItemBindState(inVatPham,-2)
end

inVatPham = AddGoldItem(0, 210);--Bo an bang hoan my
hotro_khoa_tgian60vv(inVatPham,60)

inVatPham = AddGoldItem(0, 211);
hotro_khoa_tgian60vv(inVatPham,60)

inVatPham = AddGoldItem(0, 212);
hotro_khoa_tgian60vv(inVatPham,60)

inVatPham = AddGoldItem(0, 213);
hotro_khoa_tgian60vv(inVatPham,60)

for i=1,8 do
inVatPham = AddItem(6,1,1181,0,0,0,0)--8 ttl dac biet
SetItemBindState(inVatPham,-2)
end

for i=1,6 do
inVatPham = AddEventItem(353)--tinh hong bao thach
SetItemBindState(inVatPham,-2)
end

SetTask(idtasknhantrangbichuyensv,1)--da nhan ho tro trang b�
end

function hotro_khoa_tgian60vv(idex,songay)
ITEM_SetExpiredTime(idex, 24*60*songay);
SyncItem(idex);
SetItemBindState(idex,-2) -- Khoa bao hiem vinh vien
end

function g7hkmptuchon()

	local tbSay = {}
	tinsert(tbSay,"Thi�u l�m quy�n ./#g7hkmptuchonok(1)")
	tinsert(tbSay,"Thi�u l�m c�n ./#g7hkmptuchonok(2)")
	tinsert(tbSay,"Thi�u l�m �ao ./#g7hkmptuchonok(3)")
	tinsert(tbSay,"Thi�n v�ong chu� ./#g7hkmptuchonok(4)")
	tinsert(tbSay,"Thi�n v�ong th�ong ./#g7hkmptuchonok(5)")
	tinsert(tbSay,"Thi�n v�ong �ao ./#g7hkmptuchonok(6)")
	tinsert(tbSay,"Nga my ki�m ./#g7hkmptuchonok(7)")
	tinsert(tbSay,"Nga mi chu�ng ./#g7hkmptuchonok(8)")
	tinsert(tbSay,"Nga mi buff ./#g7hkmptuchonok(9)")
	tinsert(tbSay,"Thu� y�n �ao ./#g7hkmptuchonok(10)")
	tinsert(tbSay,"Thu� y�n song �ao ./#g7hkmptuchonok(11)")
	tinsert(tbSay,"Ng� ��c chu�ng ./#g7hkmptuchonok(12)")
	tinsert(tbSay,"Ti�p theo ./g7hkmptuchon2")
	Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
	
end

function g7hkmptuchon2()
	
	local tbSay = {}
	tinsert(tbSay,"Tr� v� ./g7hkmptuchon")
	tinsert(tbSay,"Ng� ��c �ao ./#g7hkmptuchonok(13)")
	tinsert(tbSay,"Ng� ��c b�a ./#g7hkmptuchonok(14)")
	tinsert(tbSay,"�u�ng m�n phi �ao ./#g7hkmptuchonok(15)")
	tinsert(tbSay,"�u�ng m�n n� ./#g7hkmptuchonok(16)")
	tinsert(tbSay,"�u�ng m�n phi ti�u ./#g7hkmptuchonok(17)")
	tinsert(tbSay,"�u�ng m�n b�y ./#g7hkmptuchonok(18)")
	tinsert(tbSay,"C�i bang r�ng ./#g7hkmptuchonok(19)")
	tinsert(tbSay,"C�i bang b�ng ./#g7hkmptuchonok(20)")
	tinsert(tbSay,"Thi�n nh�n k�ch ./#g7hkmptuchonok(21)")
	tinsert(tbSay,"Thi�n nh�n b�a ./#g7hkmptuchonok(22)")
	tinsert(tbSay,"Thi�n nh�n �ao ./#g7hkmptuchonok(23)")
	tinsert(tbSay,"Ti�p theo ./g7hkmptuchon3")
	Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)

end

function g7hkmptuchon3()
	local tbSay = {}
	tinsert(tbSay,"V� �ang kh� ./#g7hkmptuchonok(24)")
	tinsert(tbSay,"V� �ang ki�m ./#g7hkmptuchonok(25)")
	tinsert(tbSay,"C�n l�n �ao ./#g7hkmptuchonok(26)")
	tinsert(tbSay,"C�n l�n ki�m ./#g7hkmptuchonok(27)")
	tinsert(tbSay,"C�n l�n b�a ./#g7hkmptuchonok(28)")
	tinsert(tbSay,"Tr� v� ./g7hkmptuchon2")
	Say("B�y gi� ��i hi�p ch�n h� ph�i b� theo � m�nh", getn(tbSay), tbSay)
end

function g7hkmptuchonok(nId)

	if isnvnhanthem() == 0 then
	Say("�� nh�n h� tr�")
	return
	end
	
	if CalcFreeItemCellCount() < 60 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 60 � tr�ng r�i h�y nh�n.",0);
		return
	end	

	local task = GetTask(idtasknhanHKMP)
	if task >= 3 then
		Say("Ch� ���c nh�n h� tr� t�i �a 3 m�n HKMP")
		return
	end
	idhkmp = random(1,5)
	inVatPham = AddGoldItem(0,nId*5+idhkmp-5);
	hotro_khoa_tgian60vv(inVatPham,60)
	SetTask(idtasknhanHKMP,task+1)
end

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\rename_head.lua")

function main()

--dofile("script/global/g7vn/doitennhanvat.lua")
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/global/rename_head.lua")

	if(doitennhanvat == 0) then
		Say("Ch�c n�ng ��i t�n nh�n v�t t�m th�i ch�a m�.")
		return 1;
	end

	local solandoimp = 0
	local gt_task = GetTask(idtaskdoitenmienphi);
	local solancl = solandoimp - gt_task

	server_loadfile("\\dulieu\\bandbygm.dat");	

	local tbSay = {}
	tinsert(tbSay,"Ki�m tra t�n nh�n v�t ./query_rolename")
	if solancl > 0 then
		tinsert(tbSay,"��i t�n nh�n v�t mi�n ph� ./change_rolename2")
		tinsert(tbSay,"�� ta suy ngh� l�i ./thoat")
		Say("<color=yellow>"..GetName().."<color> ng��i c� "..solancl.." l�n ��i t�n mi�n ph� c� mu�n th�c hi�n kh�ng?", getn(tbSay), tbSay)
	else
		tinsert(tbSay,"��i t�n nh�n v�t ./change_rolename3")
		tinsert(tbSay,"�� ta suy ngh� l�i ./thoat")
		Say("<color=yellow>"..GetName().."<color> ng��i mu�n ��i t�n nh�n v�t ph�i ti�u hao <color=red>"..phidoitennv.."<color> l��ng c� mu�n th�c hi�n kh�ng?", getn(tbSay), tbSay)
	end
end

function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end

Include("\\script\\global\\g7vn\\g7libgm.lua")

function SaveRename(nVar)
	local szFile = "\\dulieu\\bandbygm.dat"
	local szAccount = GetAccount();
	server_setdata(szFile,"ACCOUNT_RENAME",szAccount,nVar);
	server_savedata(szFile);
end

function GetRename()
	local szFile = "\\dulieu\\bandbygm.dat"
	local newName = server_getdata(szFile,"ACCOUNT_RENAME",GetAccount());
	if not newName or newName == "" then 
		return ""
	end
	return newName
end

function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	--AskClientForString("on_change_rolename", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t m�i v�o");
	local tendakiemtra = GetRename()
	if tendakiemtra ~= "" and tendakiemtra ~= "0" then
		local tbOpt = {}
		tinsert(tbOpt,"��ng � ��i ./on_change_rolename")
		tinsert(tbOpt,"Kh�ng �� ta ki�m tra l�i t�n kh�c ./Quit")
		Say("��i hi�p c� mu�n ��i t�n th�nh <color=red>"..tendakiemtra.."<color>", getn(tbOpt), tbOpt)
		else
		Say("��i hi�p ki�m tra t�n tr��c khi ��i")
	end
end

function on_change_rolename()
	local gt_task = GetTask(idtaskdoitenmienphi)
	local new_name = GetRename()
	if (GetName() == new_name) then
			Talk(1, "", "<#> ��i hi�p mu�n ��i t�n g�?")
	else
		SetTask(idtaskdoitenmienphi,gt_task + 1);
		SaveRename("0");
		RenameRole(new_name);
	end
end

function change_rolename3()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end

	--AskClientForString("on_change_rolename3", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t m�i v�o");

	local tendakiemtra = GetRename()
	if tendakiemtra ~= "" and tendakiemtra ~= "0" then
		local tbOpt = {}
		tinsert(tbOpt,"��ng � ��i ./on_change_rolename3")
		tinsert(tbOpt,"Kh�ng �� ta ki�m tra l�i t�n kh�c ./Quit")
		Say("��i hi�p c� mu�n ��i t�n th�nh <color=red>"..tendakiemtra.."<color>", getn(tbOpt), tbOpt)
		else
		Say("��i hi�p ki�m tra t�n tr��c khi ��i")
	end

end

function on_change_rolename3()
	local new_name = GetRename()
	if (GetName() == new_name) then
		Talk(1, "", "<#> B�n mu�n ��i t�n g�?")
	else
		if(muabangxu(phidoitennv) == 1) then
			SaveRename("0");
			RenameRole(new_name)
		end
	end
end

function muabangxu(soxu)

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
	--if (nCurTD < soxu) then
	if GetCash() < soxu then
		Say("Kh�ch quan kh�ng mang �� ti�n v�n!", 0)
		return -1;
	end

	--if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	--	Msg2Player("Tr� ti�n ��ng th�t b�i !")
	--	return -1;
	--end
	
	Pay(soxu)
	return 1;--du dieu kien mua

end;

