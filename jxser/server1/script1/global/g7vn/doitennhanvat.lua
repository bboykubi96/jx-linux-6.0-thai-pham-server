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
	Say("§· nhËn hç trî ®¼ng cÊp")
	return
end

local task = GetTask(idtasknhancapchuyensv)
if task > 0 then
	Say("§· nhËn hç trî ®¼ng cÊp")
	return
end
local nAddLevel = 20
ST_LevelUp(nAddLevel)
SetTask(idtasknhancapchuyensv,1)--da nhan ho tro dang cap
end	

function chuyensv_hotrotrangbi()

if isnvnhanthem() == 0 then
	Say("§· nhËn hç trî")
	return
end

if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËn.",0);
		return
end

local task = GetTask(idtasknhantrangbichuyensv)
if task > 0 then
	Say("§· nhËn hç trî trang bÞ")
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

SetTask(idtasknhantrangbichuyensv,1)--da nhan ho tro trang bÞ
end

function hotro_khoa_tgian60vv(idex,songay)
ITEM_SetExpiredTime(idex, 24*60*songay);
SyncItem(idex);
SetItemBindState(idex,-2) -- Khoa bao hiem vinh vien
end

function g7hkmptuchon()

	local tbSay = {}
	tinsert(tbSay,"ThiÕu l©m quyÒn ./#g7hkmptuchonok(1)")
	tinsert(tbSay,"ThiÕu l©m c«n ./#g7hkmptuchonok(2)")
	tinsert(tbSay,"ThiÕu l©m ®ao ./#g7hkmptuchonok(3)")
	tinsert(tbSay,"Thiªn v­ong chuú ./#g7hkmptuchonok(4)")
	tinsert(tbSay,"Thiªn v­ong th­ong ./#g7hkmptuchonok(5)")
	tinsert(tbSay,"Thiªn v­ong ®ao ./#g7hkmptuchonok(6)")
	tinsert(tbSay,"Nga my kiÕm ./#g7hkmptuchonok(7)")
	tinsert(tbSay,"Nga mi chuëng ./#g7hkmptuchonok(8)")
	tinsert(tbSay,"Nga mi buff ./#g7hkmptuchonok(9)")
	tinsert(tbSay,"Thuý yªn ®ao ./#g7hkmptuchonok(10)")
	tinsert(tbSay,"Thuý yªn song ®ao ./#g7hkmptuchonok(11)")
	tinsert(tbSay,"Ngò ®éc chuëng ./#g7hkmptuchonok(12)")
	tinsert(tbSay,"TiÕp theo ./g7hkmptuchon2")
	Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
	
end

function g7hkmptuchon2()
	
	local tbSay = {}
	tinsert(tbSay,"Trë vÒ ./g7hkmptuchon")
	tinsert(tbSay,"Ngò ®éc ®ao ./#g7hkmptuchonok(13)")
	tinsert(tbSay,"Ngò ®éc bïa ./#g7hkmptuchonok(14)")
	tinsert(tbSay,"§uêng m«n phi ®ao ./#g7hkmptuchonok(15)")
	tinsert(tbSay,"§uêng m«n ná ./#g7hkmptuchonok(16)")
	tinsert(tbSay,"§uêng m«n phi tiªu ./#g7hkmptuchonok(17)")
	tinsert(tbSay,"§uêng m«n bÉy ./#g7hkmptuchonok(18)")
	tinsert(tbSay,"C¸i bang rång ./#g7hkmptuchonok(19)")
	tinsert(tbSay,"C¸i bang bæng ./#g7hkmptuchonok(20)")
	tinsert(tbSay,"Thiªn nhÉn kÝch ./#g7hkmptuchonok(21)")
	tinsert(tbSay,"Thiªn nhÉn bïa ./#g7hkmptuchonok(22)")
	tinsert(tbSay,"Thiªn nhÉn ®ao ./#g7hkmptuchonok(23)")
	tinsert(tbSay,"TiÕp theo ./g7hkmptuchon3")
	Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)

end

function g7hkmptuchon3()
	local tbSay = {}
	tinsert(tbSay,"Vâ ®ang khÝ ./#g7hkmptuchonok(24)")
	tinsert(tbSay,"Vâ ®ang kiÕm ./#g7hkmptuchonok(25)")
	tinsert(tbSay,"C«n l«n ®ao ./#g7hkmptuchonok(26)")
	tinsert(tbSay,"C«n l«n kiÕm ./#g7hkmptuchonok(27)")
	tinsert(tbSay,"C«n l«n bïa ./#g7hkmptuchonok(28)")
	tinsert(tbSay,"Trë vÒ ./g7hkmptuchon2")
	Say("B©y giê ®¹i hiÖp chän hÖ ph¸i bÞ theo ý m×nh", getn(tbSay), tbSay)
end

function g7hkmptuchonok(nId)

	if isnvnhanthem() == 0 then
	Say("§· nhËn hç trî")
	return
	end
	
	if CalcFreeItemCellCount() < 60 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 60 « trèng råi h·y nhËn.",0);
		return
	end	

	local task = GetTask(idtasknhanHKMP)
	if task >= 3 then
		Say("ChØ ®­îc nhËn hç trî tèi ®a 3 mãn HKMP")
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
		Say("Chøc n¨ng ®æi tªn nh©n vËt t¹m thêi ch­a më.")
		return 1;
	end

	local solandoimp = 0
	local gt_task = GetTask(idtaskdoitenmienphi);
	local solancl = solandoimp - gt_task

	server_loadfile("\\dulieu\\bandbygm.dat");	

	local tbSay = {}
	tinsert(tbSay,"KiÓm tra tªn nh©n vËt ./query_rolename")
	if solancl > 0 then
		tinsert(tbSay,"§æi tªn nh©n vËt miÔn phÝ ./change_rolename2")
		tinsert(tbSay,"§Ó ta suy nghÜ l¹i ./thoat")
		Say("<color=yellow>"..GetName().."<color> ng­¬i cã "..solancl.." lÇn ®æi tªn miÔn phÝ cã muèn thùc hiÖn kh«ng?", getn(tbSay), tbSay)
	else
		tinsert(tbSay,"§æi tªn nh©n vËt ./change_rolename3")
		tinsert(tbSay,"§Ó ta suy nghÜ l¹i ./thoat")
		Say("<color=yellow>"..GetName().."<color> ng­¬i muèn ®æi tªn nh©n vËt ph¶i tiªu hao <color=red>"..phidoitennv.."<color> l­îng cã muèn thùc hiÖn kh«ng?", getn(tbSay), tbSay)
	end
end

function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
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
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	--AskClientForString("on_change_rolename", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt míi vµo");
	local tendakiemtra = GetRename()
	if tendakiemtra ~= "" and tendakiemtra ~= "0" then
		local tbOpt = {}
		tinsert(tbOpt,"§ång ý ®æi ./on_change_rolename")
		tinsert(tbOpt,"Kh«ng ®Ó ta kiÓm tra l¹i tªn kh¸c ./Quit")
		Say("§¹i hiÖp cã muèn ®æi tªn thµnh <color=red>"..tendakiemtra.."<color>", getn(tbOpt), tbOpt)
		else
		Say("§¹i hiÖp kiÓm tra tªn tr­íc khi ®æi")
	end
end

function on_change_rolename()
	local gt_task = GetTask(idtaskdoitenmienphi)
	local new_name = GetRename()
	if (GetName() == new_name) then
			Talk(1, "", "<#> §¹i hiÖp muèn ®æi tªn g×?")
	else
		SetTask(idtaskdoitenmienphi,gt_task + 1);
		SaveRename("0");
		RenameRole(new_name);
	end
end

function change_rolename3()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end

	--AskClientForString("on_change_rolename3", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt míi vµo");

	local tendakiemtra = GetRename()
	if tendakiemtra ~= "" and tendakiemtra ~= "0" then
		local tbOpt = {}
		tinsert(tbOpt,"§ång ý ®æi ./on_change_rolename3")
		tinsert(tbOpt,"Kh«ng ®Ó ta kiÓm tra l¹i tªn kh¸c ./Quit")
		Say("§¹i hiÖp cã muèn ®æi tªn thµnh <color=red>"..tendakiemtra.."<color>", getn(tbOpt), tbOpt)
		else
		Say("§¹i hiÖp kiÓm tra tªn tr­íc khi ®æi")
	end

end

function on_change_rolename3()
	local new_name = GetRename()
	if (GetName() == new_name) then
		Talk(1, "", "<#> B¹n muèn ®æi tªn g×?")
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
		Say("Kh¸ch quan kh«ng mang ®ñ tiÒn v¹n!", 0)
		return -1;
	end

	--if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
	--	Msg2Player("Trõ tiÒn ®ång thÊt b¹i !")
	--	return -1;
	--end
	
	Pay(soxu)
	return 1;--du dieu kien mua

end;

