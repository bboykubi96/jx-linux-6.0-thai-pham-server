IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\g7vn\\g7libgm.lua")

--tham khao them
--http://phongvantruyenky.us/huongdan/index.php?subaction=showfull&id=1450675308&archive=&start_from=&ucat=&

xumuaveso = 90

VeSoMayMan2016 = {}

function muavesoshow()

	local szTitle = "<npc>Oh! Xin chµo <color=cyan>"..GetName().." <color> ®¹i hiÖp, ng­¬i cã muèn thö vËn may kh«ng! T¹i ®©y hµng ngµy vµo lóc 08h00 ®Õn 18h00 diÔn ra ho¹t ®éng VÐ Sè May M¾n, 18h00 c«ng bè kÕt qu¶ vµ nhËn gi¶i tõ 19h00 ®Õn 07h00 ngµy h«m sau"
	local tbOpt =
	{
		{"Mua sè", chonso},
		{"Xem sè ®· mua", sodamua},
		{"Xem kÕt qu¶", xemketqua},
		{"NhËn th­ëng", nhanthuong},
		{"KÕt thóc"},
	}
	
CreateNewSayEx(szTitle, tbOpt)
end

function nhanthuong()

	--local gio = tonumber(GetLocalDate("%H%M"))
	--if gio > 0000 and gio < 1805 then
		--Say("Ngµy h«m nay vÉn ch­a cã kÕt qu¶")
		--return
	--end

	local szTime = date("%Y-%m-%d")
	AskClientForString("nhanthuongOK",szTime, 1, 10,"NhËp vµo ngµy")
end

function nhanthuongOK(xemNgay)
	local phanthuong ={
		[1]  = 
		{
			{szName = "§iÓm Kinh NghiÖm", nExp_tl=100000000},
			{szName = "TiÒn ®ång", tbProp={4,417,1,1,0,0}, nCount=500},
			{szName = "Tói ThÇn Tµi", tbProp={6,1,4300,0,0,0,0}, nCount=1, nExpiredTime=2 * 24 * 60},
		},
		[2]  = 
		{
			{szName = "§iÓm Kinh NghiÖm", nExp_tl=100000000},
			{szName = "TiÒn ®ång", tbProp={4,417,1,1,0,0}, nCount=400},
		},
		[3]  = 
		{
			{szName = "§iÓm Kinh NghiÖm", nExp_tl=100000000},
			{szName = "TiÒn ®ång", tbProp={4,417,1,1,0,0}, nCount=300},
		},
		[4]  = 
		{
			{szName = "§iÓm Kinh NghiÖm", nExp_tl=100000000},
			{szName = "TiÒn ®ång", tbProp={4,417,1,1,0,0}, nCount=200},
		},
		[5]  = 
		{
			{szName = "§iÓm Kinh NghiÖm", nExp_tl=100000000},
			{szName = "TiÒn ®ång", tbProp={4,417,1,1,0,0}, nCount=100},
		},
	}

	local arrConSoTG = kiemtragiai(xemNgay)
	local kiemtra1 = danhangiai(xemNgay,1)

	if kiemtra1 == 1 then
		Say("§¹i hiÖp ®· nhËn th­ëng ngµy <color=green>"..xemNgay.."<color> råi cßn g×")
		return
	end

	sodamuaOK(xemNgay)
	xemketquaOK(xemNgay)

	Msg2Player("§· nhËn gi¶i 1:"..arrConSoTG[1].." lÇn")
	Msg2Player("§· nhËn gi¶i 2:"..arrConSoTG[2].." lÇn")
	Msg2Player("§· nhËn gi¶i 3:"..arrConSoTG[3].." lÇn")
	Msg2Player("§· nhËn gi¶i 4:"..arrConSoTG[4].." lÇn")
	Msg2Player("§· nhËn gi¶i 5:"..arrConSoTG[5].." lÇn")

	local OUPUT_FILE_PATH = "settings/giftcode/vesonhangiai.txt"
	for i = 1,5 do
		local solan = tonumber(arrConSoTG[i])
		if  solan> 0 then
			for j=1, solan do
				if phanthuong[i] then
					tbAwardTemplet:Give(phanthuong[i], 1 , {"PhanThuongVeSo", format("NhanGiai%dPhanThuongVeSo", i)})
					AddGlobalCountNews("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn ®­îc phÇn th­ëng vÐ sè may m¾n <color=red>gi¶i "..i.."<color>", 2)

					--local szTime = date("%Y-%m-%d")
					local szOut = "0\t" .. 1 .. "\t" .. GetName() .. "\t" .. i .. "\t" .. xemNgay .. "\n"
					G7VNAppendFile(OUPUT_FILE_PATH, szOut)
				end
			end
		end
	end

end

function kiemtragiai(xemNgay)

	local arrConSo = {}

	local OUPUT_FILE_PATH = "settings/giftcode/vesomayman.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)

	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	local i = 1
	for _, tbRow in tbFile2 do
		local ConSo = tbRow[1] or ""
		local MyName = tbRow[2] or ""
		local MyAccount = tbRow[3] or ""
		local MyNgay = tbRow[4] or ""

		if MyName == GetName() and MyNgay == xemNgay then
			arrConSo[i] = ConSo
			i = i + 1
		end
	end

	local arrConSoKQ = 
	{
		[1] = 0,
		[2] = 0,
		[3] = 0,
		[4] = 0,
		[5] = 0,
	}

	local OUPUT_FILE_PATH1 = "settings/giftcode/ketquaveso.txt"
	local tbFile1 = LoadTabFile(OUPUT_FILE_PATH1)

	if not tbFile1 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	local j = 1
	for _, tbRow1 in tbFile1 do
		
		local ConSo1 = tbRow1[1] or ""
		local MyNgay1 = tbRow1[2] or ""
		local Giai1 = tbRow1[3] or ""

		if Giai1 == "1" and MyNgay1 == xemNgay then
			arrConSoKQ[1] = ConSo1
		end
		if Giai1 == "2" and MyNgay1 == xemNgay then
			arrConSoKQ[2] = ConSo1
		end
		if Giai1 == "3" and MyNgay1 == xemNgay then
			arrConSoKQ[3] = ConSo1
		end
		if Giai1 == "4" and MyNgay1 == xemNgay then
			arrConSoKQ[4] = ConSo1
		end
		if Giai1 == "5" and MyNgay1 == xemNgay then
			arrConSoKQ[5] = ConSo1
		end

	end

	local arrConSoTG = 
	{
		[1] = 0,
		[2] = 0,
		[3] = 0,
		[4] = 0,
		[5] = 0,
	}

	for k=1, i do
		if arrConSo[k] == arrConSoKQ[1] then
			arrConSoTG[1] = arrConSoTG[1] + 1
		end
	end
	for k=1, i do
		if arrConSo[k] == arrConSoKQ[2] then
			arrConSoTG[2] = arrConSoTG[2] + 1
		end
	end
	for k=1, i do
		if arrConSo[k] == arrConSoKQ[3] then
			arrConSoTG[3] = arrConSoTG[3] + 1
		end
	end
	for k=1, i do
		if arrConSo[k] == arrConSoKQ[4] then
			arrConSoTG[4] = arrConSoTG[4] + 1
		end
	end
	for k=1, i do
		if arrConSo[k] == arrConSoKQ[5] then
			arrConSoTG[5] = arrConSoTG[5] + 1
		end
	end

	return arrConSoTG

end

function VeSoMayMan2016:quaysobangtay()
	local giai1 = random(1,99)
	local giai2 = random(1,99)
	local giai3 = random(1,99)
	local giai4 = random(1,99)
	local giai5 = random(1,99)
	
	local ngay = tonumber(date("%d"))
	local thang = tonumber(date("%m"))
	local nam = tonumber(date("%y"))

	local ngaythangnam = ""..ngay.."-"..thang.."-20"..nam..""
	
	local str1 = "KÕt qu¶ VÐ Sè May M¾n ngµy "..ngaythangnam.." gi¶i nhÊt: <color=red>"..giai1.."<color> nhanh ch©n ®Õn nhËn gi¶i t¹i Chñ Sßng B¹c L©m An 182/189";
	AddGlobalCountNews(str1, 2)
	self:ghigiaithuong("1",giai1)

	local str2 = "KÕt qu¶ VÐ Sè May M¾n ngµy "..ngaythangnam.." gi¶i nh×: <color=red>"..giai2.."<color> nhanh ch©n ®Õn nhËn gi¶i t¹i Chñ Sßng B¹c L©m An 182/189";
	AddGlobalCountNews(str2, 2)
	self:ghigiaithuong("2",giai2)

	local str3 = "KÕt qu¶ VÐ Sè May M¾n ngµy "..ngaythangnam.." gi¶i ba: <color=red>"..giai3.."<color> nhanh ch©n ®Õn nhËn gi¶i t¹i Chñ Sßng B¹c L©m An 182/189";
	AddGlobalCountNews(str3, 2)
	self:ghigiaithuong("3",giai3)

	local str4 = "KÕt qu¶ VÐ Sè May M¾n ngµy "..ngaythangnam.." gi¶i bèn: <color=red>"..giai4.."<color> nhanh ch©n ®Õn nhËn gi¶i t¹i Chñ Sßng B¹c L©m An 182/189";
	AddGlobalCountNews(str4, 2)
	self:ghigiaithuong("4",giai4)

	local str5 = "KÕt qu¶ VÐ Sè May M¾n ngµy "..ngaythangnam.." gi¶i n¨m: <color=red>"..giai5.."<color> nhanh ch©n ®Õn nhËn gi¶i t¹i Chñ Sßng B¹c L©m An 182/189";
	AddGlobalCountNews(str5, 2)
	self:ghigiaithuong("5",giai5)

end

function VeSoMayMan2016:quaysotudong(nParamHandle, nResultHandle)
	self:quaysobangtay()
end

function VeSoMayMan2016:ghigiaithuong(nGiai,nValue)
	
	local OUPUT_FILE_PATH = "settings/giftcode/ketquaveso.txt"
	local STT = 1
	local szTime = date("%Y-%m-%d")
	local szOut = STT.."\t" .. nValue .. "\t" .. szTime .. "\t" .. nGiai .. "\n"
	local fs_log = openfile(OUPUT_FILE_PATH, "a");
	write(fs_log, ""..szOut.."");
	closefile(fs_log);

end

function chonso()

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if nCurTD < xumuaveso then
		Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ <color=gold>TiÒn ®ång<color> råi k×a<color>!")
		return
	end

	local gio = tonumber(GetLocalDate("%H%M"))

	if gio < 0000 or gio > 1755 then
		Say("T¹i ®©y hµng ngµy vµo lóc <color=green>00h00 ®Õn 17h55<color> diÔn ra ho¹t ®éng VÐ Sè May M¾n, <color=green>18h00<color> c«ng bè kÕt qu¶ vµ nhËn gi¶i sau <color=green>18h05<color>")
		return
	end

	AskClientForNumber("chonsoOK", 1, 99,"NhËp sè 1 ®Õn 99")
end

function chonsoOK(zVar)
	local OUPUT_FILE_PATH = "settings/giftcode/vesomayman.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
	local STT = 1

	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end

	if (ConsumeEquiproomItem(xumuaveso,4,417,1,1)== 1) then

	--WRITE FILE
	local szTime = date("%Y-%m-%d")
	local szOut = STT.."\t" .. zVar .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
	G7VNAppendFile(OUPUT_FILE_PATH, szOut)
	Msg2Player("§· chän mua sè: "..zVar.."")

	else
		Talk(1,"","<color=pink>§¹i hiÖp vui lßng thö l¹i 1 lÇn n÷a<color>!") 
	end

end

function sodamua()

local szTime = date("%Y-%m-%d")
AskClientForString("sodamuaOK",szTime, 1, 10,"NhËp vµo ngµy")
end

function sodamuaOK(xemNgay)
	local arrConSo = {}

	local OUPUT_FILE_PATH = "settings/giftcode/vesomayman.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)

	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	local i = 1
	for _, tbRow in tbFile2 do

		local ConSo = tbRow[1] or ""
		local MyName = tbRow[2] or ""
		local MyAccount = tbRow[3] or ""
		local MyNgay = tbRow[4] or ""

		if MyName == GetName() and MyNgay == xemNgay then
			arrConSo[i] = ConSo
			i = i + 1
		end

	end

	if i == 1 then 
		Say("Ngµy "..xemNgay.." ch­a mua sè nµo")
		return
	end
	
	Msg2Player("Ngµy <color=orange>"..xemNgay.."<color> ®· chän:")
	for j=1, i-1 do
		Msg2Player("Con sè :<color=orange> "..arrConSo[j].."")
	end

end

function danhangiai(xemNgay)
	local OUPUT_FILE_PATH = "settings/giftcode/vesonhangiai.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)

	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	for _, tbRow in tbFile2 do

		local ConSo = tbRow[1] or ""
		local MyName = tbRow[2] or ""
		local Giai = tbRow[3] or ""
		local MyNgay = tbRow[4] or ""

		if MyName == GetName() and MyNgay == xemNgay then
			return 1
		end

	end
	return 0
end

function xemketqua()
	local szTime = date("%Y-%m-%d")
	AskClientForString("xemketquaOK",szTime, 1, 10,"NhËp vµo ngµy")
end

function xemketquaOK(xemNgay)

	local arrConSo = 
	{
		[1] = 0,
		[2] = 0,
		[3] = 0,
		[4] = 0,
		[5] = 0,
	}

	local OUPUT_FILE_PATH = "settings/giftcode/ketquaveso.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)

	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	local i = 1
	for _, tbRow in tbFile2 do

		
		local ConSo = tbRow[1] or ""
		local MyNgay = tbRow[2] or ""
		local Giai = tbRow[3] or ""

		if Giai == "1" and MyNgay == xemNgay then
			arrConSo[1] = ConSo
		end

		if Giai == "2" and MyNgay == xemNgay then
			arrConSo[2] = ConSo
		end

		if Giai == "3" and MyNgay == xemNgay then
			arrConSo[3] = ConSo
		end

		if Giai == "4" and MyNgay == xemNgay then
			arrConSo[4] = ConSo
		end

		if Giai == "5" and MyNgay == xemNgay then
			arrConSo[5] = ConSo
		end

	end
	
	Msg2Player("KÕt qu¶ vÐ sè ngµy: <color=orange>"..xemNgay.."")
	Msg2Player("Gi¶i 1 sè :<color=orange> "..arrConSo[1].."")
	Msg2Player("Gi¶i 2 sè :<color=orange> "..arrConSo[2].."")
	Msg2Player("Gi¶i 3 sè :<color=orange> "..arrConSo[3].."")
	Msg2Player("Gi¶i 4 sè :<color=orange> "..arrConSo[4].."")
	Msg2Player("Gi¶i 5 sè :<color=orange> "..arrConSo[5].."")

end

 --Luu bang file txt

function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			--local nValue = tonumber(TabFile_GetCell(szFile, i + 1, j + 1))
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end

function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;