-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\item\\ib\\shenxingfu.lua");
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")



function main()
dofile("script/item/chucphucnew.lua")




--chucphucnv()
return 1
end

cauchuc1 = "nam moi bot xao"
cauchuc2 = "c�u ch�c 2"
cauchuc3 = "c�u ch�c 3"
cauchuc4 = "c�u ch�c 4"
cauchuc5 = "c�u ch�c 5"
cauchuc6 = "c�u ch�c 6"
cauchuc7 = "c�u ch�c 7"
cauchuc8 = "c�u ch�c 8"
cauchuc9 = "c�u ch�c 9"
cauchuc10 = "c�u ch�c 10"

function chucphucnv(rolename)
	if (FALSE(rolename)) then rolename = "NguyenVanA";end
	--if KiemTraNhanVatOnOFF(rolename) then return end
	SetTaskTemp(246, SearchPlayer(rolename));
	local tbSay = {}
	TenNV = rolename
		tinsert(tbSay,"Nh�p t�n ng��i nh�n./NhapTenNhanVat")
		tinsert(tbSay,cauchuc1.."./#chucphuc1(TenNV)")
		tinsert(tbSay,cauchuc2.."./#chucphuc2(TenNV)")
		tinsert(tbSay,cauchuc3.."./#chucphuc3(TenNV)")
		tinsert(tbSay,cauchuc4.."./#chucphuc4(TenNV)")
		tinsert(tbSay,cauchuc5.."./#chucphuc5(TenNV)")
		tinsert(tbSay,cauchuc6.."./#chucphuc6(TenNV)")
		tinsert(tbSay,cauchuc7.."./#chucphuc7(TenNV)")
		tinsert(tbSay,cauchuc8.."./#chucphuc8(TenNV)")
		tinsert(tbSay,cauchuc9.."./#chucphuc9(TenNV)")
		tinsert(tbSay,cauchuc10.."./#chucphuc10(TenNV)")
			tinsert(tbSay,"K�t th�c ��i tho�i./no")
		Say("Ng��i nh�n: ".. rolename, getn(tbSay), tbSay)
return 1
end

function chucphuc1(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc1.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc2(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc2.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc3(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc3.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc4(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc4.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc5(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc5.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc6(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc6.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc7(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc7.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc8(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc8.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc9(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc9.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc10(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc10.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end


function chucphuc(nVar)
--Msg2Player(nVar)
	local nCount = CalcEquiproomItemCount(6,1,4502,1)
	if (nCount < 1) then
		Say("<color=yellow>V� b�ng h�u n�y ta kh�ng th�y thi�p c�a ng��i ��u c� ! Khi n�o c� ��  h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	local PlayerIndex = GetTaskTemp(246);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
else
	local PlayerIndex = GetTaskTemp(246);
	CallPlayerFunction(PlayerIndex, AddOwnExp, 500000);
ConsumeEquiproomItem(1, 6,1,4502,1)
Say("B�n �� g�i l�i ch�c t�i ng��i b�n c�a m�nh")
AddOwnExp(200000)
cauchuc(nVar)
--Msg2Player(KiemTraTen(rolename))
	return CallPlayerFunction(PlayerIndex, Say, "B�n nh�n ���c l�i ch�c t�t ��p nh�t t� " .. GetName() .."h�y ch� � b�ng tin", 0);
end
--ConsumeEquiproomItem(1, 6,1,4500,1)
--Msg2Player("chuc phuc ok")
end

function NhapTenNhanVatOKE(Name)
if Name == GetName() then
Say("B�n ch� c� th� t�m t�n ng��i kh�c")
return
end
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return chucphucnv(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return chucphucnv(Name)
end

function NhapTenNhanVat()
	return AskClientForString("NhapTenNhanVatOKE", "", 1, 20, "Nh�p t�n nh�n v�t");
end

function KiemTraNhanVatOnOFF(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5985) == 1 then
		Talk(1, "", "Nh�n v�t �ang <color=yellow>Offline Live<color> <enter>kh�ng th� l�y PlayerIndex!")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "Nh�n v�t kh�ng ��ng c�ng th�nh th� ho�c t�n nh�n v�t kh�ng ��ng")
		return 1
	else
		return nil
	end
end



GetNameAdmin = NameAdministrator1;
function KiemTraTen(Name)
	if Name == GetNameAdmin then
		return "T�n nh�n v�t: <color=black><bclr=red>"..Name.."";
	else
		return "T�n nh�n v�t: <color=black><bclr=green>"..Name.."";
	end
end

function HienThiTenNhanVat(Name)
	if SearchPlayer(Name) == 0 then
		return "TK: <color=red>Offline<color>";
	else
		return "TK: <color=green>"..callPlayerFunction(SearchPlayer(Name), GetAccount).."<color>";
	end
end


function LevelNhanVat(Name)
	if SearchPlayer(Name) == 0 then
		return " ��ng c�p : <color=red>Offline<color>";
	else
		return "         ��ng c�p : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetLevel).."<color>";
	end
end

function cauchuc(nNameA)
local r=random(1,8)
if r==1 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 1")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==2 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 2")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==3 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 3")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==4 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 4")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==5 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 5")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==6 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 6")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==7 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 7")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==8 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 8")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==9 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 9")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==10 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> g�i t�i <color=yellow> " .. nNameA .. " <color> C�u ch�c 10")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

end