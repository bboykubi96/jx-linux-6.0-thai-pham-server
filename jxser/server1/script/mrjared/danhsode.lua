Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua");
function main()
--dofile("script/mrjared/danhsode.lua");
main1()
--khoaliadi()
end


function khoaliadi()
Talk(1,"","Chøc N¨ng T¹m §ãng !")
		return
end


	local tbGiaiLo= {04,09,10,18,23,30,36,45,51,59,62,66,71,72,76,77,80,81,83,92,94,95};
function main1()
		

		local szTitle = "<color=red>Chñ sßng b¹c<color>.<enter><color=yellow>Ng­¬i cã muèn ®æi ®êi kh«ng ?<color><enter>H·y ®¸nh c­îc víi ta thö mét v¸n xem vËn may cña ng­¬i thÕ nµo... ! <enter>Hªn xui do trêi, liÒu m¹ng do ng­êi<enter>Script L« §Ò by <color=green>Vâ L©m Mien Phi<color>"
		local tbOpt =
	{
		{"V©ng ta muèn th÷ 1 lÇn", game},		
		{"Ta muèn hái th¨m mét chót", help},
		{"Ta muèn rót tiÒn ®ång tõ lµn th¾ng l« tr­íc", ruttiendong},
		{"Tho¸t"},
	}
	local nHour = tonumber(GetLocalDate("%H%M"));
	if (nHour<1800 and nHour>=1300) then	
	tinsert(tbOpt, 1, {"Ta muèn ch¬i L« b»ng tiÒn v¹n (23 v¹n-1 ®iÓm).", game1})
	tinsert(tbOpt, 1, {"Ta muèn ch¬i L« b»ng tiÒn ®ång (23 tiÒn ®ång-1 ®iÓm).", gamexu})
	elseif (nHour<1300 and nHour>=0000) then	
	tinsert(tbOpt, 1, {"Ta muèn nhËn th­ëng ®¸nh L« tiÒn ®ång (80 tiÒn ®ång- 1 ®iÓm).", traothuongloxu})
	tinsert(tbOpt, 1, {"Ta muèn nhËn th­ëng ®¸nh L« tiÒn v¹n (80 v¹n-1 ®iÓm).", traothuonglo})
	--tinsert(tbOpt, 1, {"V©ng ta muèn th÷ 1 lÇn ch¬i L« b»ng tiÒn v¹n.", game1})
	--tinsert(tbOpt, 1, {"V©ng ta muèn th÷ 1 lÇn ch¬i L« b»ng tiÒn .", gamexu})
	--tinsert(tbOpt, 1, {"V©ng ta muèn th÷ 1 lÇn ch¬i L« xu.", gamexu})
	end
		CreateNewSayEx(szTitle, tbOpt)	
		

		---SetTask(5300,1)
		---SetTask(5303,0)
		--SetTask(5301,7)
		--SetTask(5304,1)
		--SetTask(5307,0)
		--SetTask(5308,0)
end

function game()

	 AskClientForNumber("tiencuoc",1,GetCash(),"<#>NhËp sè tiÒn c­îc !")
end;

function tiencuoc(nMoney)
if GetCash()<nMoney then
	Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return
end
OpenDice(nMoney)
end

function help()
	Talk(5, "", "Ngµy x­a ta lµ ®Ö tö <color=red>C¸i Bang<color> ng­¬i cã tin ko ?", "Ha ha ha ! V× ham mª cê b¹c nªn ta bÞ trôc xuÊt khái s­ m«n........ !", "Nh­ng vËn xui chØ theo ta mét thêi gian ng¾n, «ng trêi qu¶ nhiªn cã m¾t..............", "B©y giê ta ®· lµ phó hé cña vïng <color=green>D­¬ng Ch©u<color> nµy, ng­êi cã muèn thñ c­îc ®Ó lµm giµu kh«ng ?", "Mét ngµy nµo ®ã ta sÏ phôc h­ng l¹i <color=red>C¸i Bang<color> ! h·y chê ®ã ! ha ha ha !...");
end;
function game1()
	if GetLevel()<120 then
	Say("Ng­¬i ch­a ®¹t tíi level 120 ch­a thÓ ghi l«.")
	return
	end
	local Date1 = tonumber(date("%Y%m%d"))
	if GetTask(5300)==Date1	 then 
	Talk(1,"","B¹n ®· ghi l« víi sè <color=red>"..GetTask(5301).."<color> ngµy h«m nay råi. Mai h·y quay l¹i ®¸nh tiÕp nhÐ..")	
	return
	end
	 AskClientForNumber("ghisolo",1,100,"<#>NhËp con L« b¹n muèn ®¸nh !")
end;
function ghisolo(nSoLo)
	SetTask(5301,nSoLo)
	Talk(1,"ghilo","B¹n ®· ®¸nh con l« <color=red>"..nSoLo.."<color> giê h·y ghi sè ®iÓm b¹n muèn ®¸nh vµo d­íi ®©y.")
	--logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· ®¸nh con l« [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoLo))
end
function ghilo()
local nTien= GetCash()/230000
	 AskClientForNumber("diemlo",1,nTien,"<#>NhËp sè ®iÓm L«!")
end
function diemlo(nDiemLo)
	local Date1 = tonumber(date("%Y%m%d"))
	if nDiemLo >20 then
	Say("Ng­¬i ®¸nh qu¸ lín ta kh«ng thÓ nhËn ®­îc. ChØ ®­îc ®¸nh tèi ®a 20 ®iÓm mét nh©n vËt 1 ngµy")
	return
	end	
	if GetCash() <nDiemLo*230000 then
	Say("Ng­¬i kh«ng mang theo ®ñ tiÒn")
	return
	end
	Pay(nDiemLo*230000)
	SetTask(5302,nDiemLo)
	SetTask(5300,Date1)
	Talk(1,"","B¹n ®· ghi <color=red>"..nDiemLo.." ®iÓm <color>  con l« <color=red>"..GetTask(5301).." <color> (tiÒn v¹n).")
	Msg2SubWorld("<color=green>"..GetName().." ®· ghi <color=pink>"..nDiemLo.." ®iÓm <color>  con l« <color=red>"..GetTask(5301).." <color> (tiÒn v¹n).")
	logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· ®¸nh con l« [%s] víi sè ®iÓm lµ [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetTask(5301),GetTask(5302)))
end
function traothuonglo()
	local Date1 = tonumber(date("%Y%m%d"))
	local Date30 = tonumber(date("%d"))
	local szLo = GetTask(5302)
	local tienthang=GetTask(5302)*80
	if GetTask(5303)==Date1 then
	Talk(1,"","B¹n ®· nhËn th­ëng ngµy h«m nay råi.")
	return
	end
	if   GetTask (5300)~= Date1-1 then
	Talk(1,"","B¹n ch­a ghi l« ch­a thÓ nhËn th­ëng.")	
	return
	end
	for i=1, getn(%tbGiaiLo) do
	if GetTask(5300)==Date1-1 then
		if GetTask(5301) == %tbGiaiLo[i] then 
		Earn(szLo*800000)
		Say("B¹n ®· ®¸nh tróng <color=red>"..szLo.."<color> ®iÓm l« con l« <color=red>"..GetTask(5301).."<color> vµ nhËn ®­îc <color=red>"..tienthang.."<color> v¹n l­îng")
		Msg2SubWorld(" <color=yellow>"..GetName().."<color> ®· ®¸nh tróng <color=yellow>"..szLo.."<color> ®iÓm l« con l« <color=yellow>"..GetTask(5301).."<color> vµ nhËn ®­îc <color=yellow>"..tienthang.."<color> v¹n l­îng")
		SetTask(5303,Date1)
		logplayer("dulieu/thongtintrunggiailode.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· nhËn gi¶i th­ëng lµ [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),tienthang))
		break
		end
	end
	end
end
function gamexu()
	if GetLevel()<120 then
	Say("Ng­¬i ch­a ®¹t tíi level 120 ch­a thÓ ghi l«.")
	return
	end
	local Date = tonumber(date("%Y%m%d"))
	if GetTask(5304)==Date	 then 
	Talk(1,"","B¹n ®· ghi l« víi sè <color=red>"..GetTask(5305).."<color> ngµy h«m nay råi. Mai h·y quay l¹i ®¸nh tiÕp nhÐ..")	
	return
	end
	 AskClientForNumber("ghisoloxu",1,100,"<#>NhËp con L« b¹n muèn ®¸nh !")
end;
function ghisoloxu(nSoLoXu)
	SetTask(5305,nSoLoXu)
	Talk(1,"ghiloxu","B¹n ®· ®¸nh con l« <color=red>"..nSoLoXu.."<color> giê h·y ghi sè ®iÓm b¹n muèn ®¸nh vµo d­íi ®©y.")
	--logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· ®¸nh con l« [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoLo))
end
function ghiloxu()
local nTienXu= CalcEquiproomItemCount(4,417,1,1)/23
	 AskClientForNumber("diemloxu",1,100,"<#>NhËp sè ®iÓm L«!")
end
function diemloxu(nDiemLoXu)
	local Date = tonumber(date("%Y%m%d"))
	if nDiemLoXu >20 then
	Say("Ng­¬i ®¸nh qu¸ lín ta kh«ng thÓ nhËn ®­îc. ChØ ®­îc ®¸nh tèi ®a 20 ®iÓm mét nh©n vËt 1 ngµy")
	return
	end	
	if CalcEquiproomItemCount(4,417,1,1)/23 < nDiemLoXu then
	Say("B¹n kh«ng mang theo ®ñ tiÒn")
	return
	end
	for i=1,nDiemLoXu*23 do
	ConsumeEquiproomItem(1,4,417,1,1)
	end
	SetTask(5306,nDiemLoXu)
	SetTask(5304,Date)
	Talk(1,"","B¹n ®· ghi <color=red>"..nDiemLoXu.." ®iÓm <color>  con l« <color=red>"..GetTask(5305).." <color> (tiÒn ®ång).")
	Msg2SubWorld("<color=green>"..GetName().." ®· ghi <color=pink>"..nDiemLoXu.." ®iÓm <color>  con l« <color=red>"..GetTask(5305).." <color> (tiÒn ®ång).")
	logplayer("dulieu/thongtinlode-xu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· ®¸nh con l« [%s] víi sè ®iÓm lµ [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetTask(5305),GetTask(5306)))
end


function traothuongloxu()
	local Date = tonumber(date("%Y%m%d"))
	local szLoxu = GetTask(5306)
	local tienthangxu=GetTask(5306)*80
	local tienthangxu1=GetTask(5306)*80+GetTask(5308)
	if GetTask(5307)==Date then
	Talk(1,"","B¹n ®· nhËn th­ëng ngµy h«m nay råi.")
	return
	end
	if  GetTask(5304)~= Date-1 then
	Talk(1,"","B¹n ch­a ghi l« ch­a thÓ nhËn th­ëng.")	
	return
	end
	if GetTask(5304)==Date-1 and GetTask(5307)~=Date then
	for i=1, getn(%tbGiaiLo) do
		if GetTask(5305) == %tbGiaiLo[i] then 
		SetTask(5308,tienthangxu1)
		Say("B¹n ®· ®¸nh tróng <color=red>"..szLoxu.."<color> ®iÓm con l« <color=red>"..GetTask(5305).."<color> vµ nhËn ®­îc <color=red>"..tienthangxu.." TiÒn §ång<color> ")
		Msg2SubWorld(" <color=yellow>"..GetName().."<color> ®· ®¸nh tróng <color=yellow>"..szLoxu.."<color> ®iÓm l« con l« <color=yellow>"..GetTask(5305).."<color>  vµ nhËn ®­îc <color=yellow>"..tienthangxu.." TiÒn §ång<color>")
		SetTask(5307,Date)
		logplayer("dulieu/thongtintrunggiailode-xu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· nhËn gi¶i th­ëng lµ [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),tienthangxu))
		break
		end
	end
	end
end
function ruttiendong()
	if GetTask(5308)==0 then
			Talk(1, "", "B¹n kh«ng cßn göi ®ång nµo ë ®©y c¶."); 
			return
	end
			Talk(1, "ruttiendong1", "Ng­êi cßn l¹i <color=yellow> "..GetTask(5308).." <color=yellow> tiÒn ®ång göi chç ta. Ng­êi muèn nhËn bao nhiªu?."); 
end;
function ruttiendong1()
	 AskClientForNumber("ruttiendongok",1,GetTask(5308),"<#>NhËp sè tiÒn muèn rót !")
end;
function ruttiendongok(nSoTienDong)
	local nOTrong=nSoTienDong/100
	if CalcFreeItemCellCount() < nOTrong then
			Talk(1, "", "CÇn Ýt nhÊt "..nOTrong.." « trèng trong hµnh trang."); 
			return
	end
	if nSoTienDong > GetTask(5308) then 
			Talk(1, "", "B¹n kh«ng cã ®ñ "..nSoTienDong.." tiÒn ®ång ®Ó rót."); 
	return
	end
	if nSoTienDong<=GetTask(5308) then
	local nSoTienDongSauRut=GetTask(5308)-nSoTienDong
		for i=1,nSoTienDong do
		AddEventItem(417)
		end
		Talk(1, "", "B¹n nhËn ®­îc "..nSoTienDong.." tiÒn ®ång tõ sßng b¹c. B¹n cßn l¹i "..nSoTienDongSauRut.." tiÒn ®ång t¹i sßng b¹c ch­a rót. H·y dän bít hµnh trang tr­íc khi rót."); 
				logplayer("dulieu/thongtinruttienlode-xu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· rót [%s] tiÒn ®ång vµ cßn l¹i [%s] tiÒn ®ång t¹i sßng b¹c  ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoTienDong,nSoTienDongSauRut))
		SetTask(5308,nSoTienDongSauRut)
	end
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end