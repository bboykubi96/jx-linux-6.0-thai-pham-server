-------------------------------------------------------------------***Create*By*Heart*Doldly***---------------------------------------------------------------------------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\vng_lib\\bittask_lib.lua")
-----------------------------------
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
        --"NhËn Th­ëng 7 Ngµy/NhanTanThu",
	"NhËn Th­ëng §ît 1(Tr­íc 13h59)/NhanThuongHN_Dot1",
	"NhËn Th­ëng §ît 2(sau 14h00)/NhanThuongHN_Dot2",
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
                           --{szName="TiÒn Xu",tbProp={4,1496,1,1,0,0},nCount=5000,nExpiredTime=1440,nBindState = -2},
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
                       --{szName="TiÒn Xu",tbProp={4,1496,1,1,0,0},nCount=5000,nExpiredTime=1440,nBindState = -2},
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
			Talk(1,"","<color=yellow>Thêi Gian NhËn Th­ëng §ît 2 Tõ 14h:00 §Õn 23h:59<color>")
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
                      -- {szName="TiÒn Xu",tbProp={4,1496,1,1,0,0},nCount=5000,nExpiredTime=1440,nBindState = -2},
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
