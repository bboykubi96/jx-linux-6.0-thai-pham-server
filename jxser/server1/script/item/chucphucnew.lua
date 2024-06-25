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
cauchuc2 = "c©u chóc 2"
cauchuc3 = "c©u chóc 3"
cauchuc4 = "c©u chóc 4"
cauchuc5 = "c©u chóc 5"
cauchuc6 = "c©u chóc 6"
cauchuc7 = "c©u chóc 7"
cauchuc8 = "c©u chóc 8"
cauchuc9 = "c©u chóc 9"
cauchuc10 = "c©u chóc 10"

function chucphucnv(rolename)
	if (FALSE(rolename)) then rolename = "NguyenVanA";end
	--if KiemTraNhanVatOnOFF(rolename) then return end
	SetTaskTemp(246, SearchPlayer(rolename));
	local tbSay = {}
	TenNV = rolename
		tinsert(tbSay,"NhËp tªn ng­êi nhËn./NhapTenNhanVat")
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
			tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
		Say("Ng­êi nhËn: ".. rolename, getn(tbSay), tbSay)
return 1
end

function chucphuc1(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc1.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc2(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc2.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc3(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc3.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc4(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc4.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc5(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc5.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc6(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc6.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc7(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc7.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc8(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc8.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc9(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc9.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function chucphuc10(nNameA)
ConsumeEquiproomItem(1, 6,1,4502,1)
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> <color=green>"..cauchuc10.."<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end


function chucphuc(nVar)
--Msg2Player(nVar)
	local nCount = CalcEquiproomItemCount(6,1,4502,1)
	if (nCount < 1) then
		Say("<color=yellow>VÞ b»ng h÷u nµy ta kh«ng thÊy thiÖp cña ng­¬i ®©u c¶ ! Khi nµo cã ®ñ  h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	local PlayerIndex = GetTaskTemp(246);
	if PlayerIndex == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
else
	local PlayerIndex = GetTaskTemp(246);
	CallPlayerFunction(PlayerIndex, AddOwnExp, 500000);
ConsumeEquiproomItem(1, 6,1,4502,1)
Say("B¹n ®· göi lêi chóc tíi ng­êi b¹n cña m×nh")
AddOwnExp(200000)
cauchuc(nVar)
--Msg2Player(KiemTraTen(rolename))
	return CallPlayerFunction(PlayerIndex, Say, "B¹n nhËn ®­îc lêi chóc tèt ®Ñp nhÊt tõ " .. GetName() .."h·y chó ý b¶ng tin", 0);
end
--ConsumeEquiproomItem(1, 6,1,4500,1)
--Msg2Player("chuc phuc ok")
end

function NhapTenNhanVatOKE(Name)
if Name == GetName() then
Say("B¹n chØ cã thÓ t×m tªn ng­êi kh¸c")
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
	return AskClientForString("NhapTenNhanVatOKE", "", 1, 20, "NhËp tªn nh©n vËt");
end

function KiemTraNhanVatOnOFF(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5985) == 1 then
		Talk(1, "", "Nh©n vËt ®ang <color=yellow>Offline Live<color> <enter>kh«ng thÓ lÊy PlayerIndex!")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "Nh©n vËt kh«ng ®øng cïng thµnh thÞ hoÆc tªn nh©n vËt kh«ng ®óng")
		return 1
	else
		return nil
	end
end



GetNameAdmin = NameAdministrator1;
function KiemTraTen(Name)
	if Name == GetNameAdmin then
		return "Tªn nh©n vËt: <color=black><bclr=red>"..Name.."";
	else
		return "Tªn nh©n vËt: <color=black><bclr=green>"..Name.."";
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
		return " §¼ng cÊp : <color=red>Offline<color>";
	else
		return "         §¼ng cÊp : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetLevel).."<color>";
	end
end

function cauchuc(nNameA)
local r=random(1,8)
if r==1 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 1")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==2 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 2")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==3 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 3")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==4 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 4")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==5 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 5")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==6 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 6")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==7 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 7")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==8 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 8")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==9 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 9")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
if r==10 then
	local szNews = format("<pic=7> <color=green>"..GetName().."<color> göi tíi <color=yellow> " .. nNameA .. " <color> C©u chóc 10")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

end