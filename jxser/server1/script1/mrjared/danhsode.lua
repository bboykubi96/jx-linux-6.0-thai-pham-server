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
Talk(1,"","Ch�c N�ng T�m ��ng !")
		return
end


	local tbGiaiLo= {04,09,10,18,23,30,36,45,51,59,62,66,71,72,76,77,80,81,83,92,94,95};
function main1()
		

		local szTitle = "<color=red>Ch� s�ng b�c<color>.<enter><color=yellow>Ng��i c� mu�n ��i ��i kh�ng ?<color><enter>H�y ��nh c��c v�i ta th� m�t v�n xem v�n may c�a ng��i th� n�o... ! <enter>H�n xui do tr�i, li�u m�ng do ng��i<enter>Script L� �� by <color=green>V� L�m Mien Phi<color>"
		local tbOpt =
	{
		{"V�ng ta mu�n th� 1 l�n", game},		
		{"Ta mu�n h�i th�m m�t ch�t", help},
		{"Ta mu�n r�t ti�n ��ng t� l�n th�ng l� tr��c", ruttiendong},
		{"Tho�t"},
	}
	local nHour = tonumber(GetLocalDate("%H%M"));
	if (nHour<1800 and nHour>=1300) then	
	tinsert(tbOpt, 1, {"Ta mu�n ch�i L� b�ng ti�n v�n (23 v�n-1 �i�m).", game1})
	tinsert(tbOpt, 1, {"Ta mu�n ch�i L� b�ng ti�n ��ng (23 ti�n ��ng-1 �i�m).", gamexu})
	elseif (nHour<1300 and nHour>=0000) then	
	tinsert(tbOpt, 1, {"Ta mu�n nh�n th��ng ��nh L� ti�n ��ng (80 ti�n ��ng- 1 �i�m).", traothuongloxu})
	tinsert(tbOpt, 1, {"Ta mu�n nh�n th��ng ��nh L� ti�n v�n (80 v�n-1 �i�m).", traothuonglo})
	--tinsert(tbOpt, 1, {"V�ng ta mu�n th� 1 l�n ch�i L� b�ng ti�n v�n.", game1})
	--tinsert(tbOpt, 1, {"V�ng ta mu�n th� 1 l�n ch�i L� b�ng ti�n .", gamexu})
	--tinsert(tbOpt, 1, {"V�ng ta mu�n th� 1 l�n ch�i L� xu.", gamexu})
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

	 AskClientForNumber("tiencuoc",1,GetCash(),"<#>Nh�p s� ti�n c��c !")
end;

function tiencuoc(nMoney)
if GetCash()<nMoney then
	Talk(1,"","B�n kh�ng �� ti�n")
	return
end
OpenDice(nMoney)
end

function help()
	Talk(5, "", "Ng�y x�a ta l� �� t� <color=red>C�i Bang<color> ng��i c� tin ko ?", "Ha ha ha ! V� ham m� c� b�c n�n ta b� tr�c xu�t kh�i s� m�n........ !", "Nh�ng v�n xui ch� theo ta m�t th�i gian ng�n, �ng tr�i qu� nhi�n c� m�t..............", "B�y gi� ta �� l� ph� h� c�a v�ng <color=green>D��ng Ch�u<color> n�y, ng��i c� mu�n th� c��c �� l�m gi�u kh�ng ?", "M�t ng�y n�o �� ta s� ph�c h�ng l�i <color=red>C�i Bang<color> ! h�y ch� �� ! ha ha ha !...");
end;
function game1()
	if GetLevel()<120 then
	Say("Ng��i ch�a ��t t�i level 120 ch�a th� ghi l�.")
	return
	end
	local Date1 = tonumber(date("%Y%m%d"))
	if GetTask(5300)==Date1	 then 
	Talk(1,"","B�n �� ghi l� v�i s� <color=red>"..GetTask(5301).."<color> ng�y h�m nay r�i. Mai h�y quay l�i ��nh ti�p nh�..")	
	return
	end
	 AskClientForNumber("ghisolo",1,100,"<#>Nh�p con L� b�n mu�n ��nh !")
end;
function ghisolo(nSoLo)
	SetTask(5301,nSoLo)
	Talk(1,"ghilo","B�n �� ��nh con l� <color=red>"..nSoLo.."<color> gi� h�y ghi s� �i�m b�n mu�n ��nh v�o d��i ��y.")
	--logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ��nh con l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoLo))
end
function ghilo()
local nTien= GetCash()/230000
	 AskClientForNumber("diemlo",1,nTien,"<#>Nh�p s� �i�m L�!")
end
function diemlo(nDiemLo)
	local Date1 = tonumber(date("%Y%m%d"))
	if nDiemLo >20 then
	Say("Ng��i ��nh qu� l�n ta kh�ng th� nh�n ���c. Ch� ���c ��nh t�i �a 20 �i�m m�t nh�n v�t 1 ng�y")
	return
	end	
	if GetCash() <nDiemLo*230000 then
	Say("Ng��i kh�ng mang theo �� ti�n")
	return
	end
	Pay(nDiemLo*230000)
	SetTask(5302,nDiemLo)
	SetTask(5300,Date1)
	Talk(1,"","B�n �� ghi <color=red>"..nDiemLo.." �i�m <color>  con l� <color=red>"..GetTask(5301).." <color> (ti�n v�n).")
	Msg2SubWorld("<color=green>"..GetName().." �� ghi <color=pink>"..nDiemLo.." �i�m <color>  con l� <color=red>"..GetTask(5301).." <color> (ti�n v�n).")
	logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ��nh con l� [%s] v�i s� �i�m l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetTask(5301),GetTask(5302)))
end
function traothuonglo()
	local Date1 = tonumber(date("%Y%m%d"))
	local Date30 = tonumber(date("%d"))
	local szLo = GetTask(5302)
	local tienthang=GetTask(5302)*80
	if GetTask(5303)==Date1 then
	Talk(1,"","B�n �� nh�n th��ng ng�y h�m nay r�i.")
	return
	end
	if   GetTask (5300)~= Date1-1 then
	Talk(1,"","B�n ch�a ghi l� ch�a th� nh�n th��ng.")	
	return
	end
	for i=1, getn(%tbGiaiLo) do
	if GetTask(5300)==Date1-1 then
		if GetTask(5301) == %tbGiaiLo[i] then 
		Earn(szLo*800000)
		Say("B�n �� ��nh tr�ng <color=red>"..szLo.."<color> �i�m l� con l� <color=red>"..GetTask(5301).."<color> v� nh�n ���c <color=red>"..tienthang.."<color> v�n l��ng")
		Msg2SubWorld(" <color=yellow>"..GetName().."<color> �� ��nh tr�ng <color=yellow>"..szLo.."<color> �i�m l� con l� <color=yellow>"..GetTask(5301).."<color> v� nh�n ���c <color=yellow>"..tienthang.."<color> v�n l��ng")
		SetTask(5303,Date1)
		logplayer("dulieu/thongtintrunggiailode.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� nh�n gi�i th��ng l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),tienthang))
		break
		end
	end
	end
end
function gamexu()
	if GetLevel()<120 then
	Say("Ng��i ch�a ��t t�i level 120 ch�a th� ghi l�.")
	return
	end
	local Date = tonumber(date("%Y%m%d"))
	if GetTask(5304)==Date	 then 
	Talk(1,"","B�n �� ghi l� v�i s� <color=red>"..GetTask(5305).."<color> ng�y h�m nay r�i. Mai h�y quay l�i ��nh ti�p nh�..")	
	return
	end
	 AskClientForNumber("ghisoloxu",1,100,"<#>Nh�p con L� b�n mu�n ��nh !")
end;
function ghisoloxu(nSoLoXu)
	SetTask(5305,nSoLoXu)
	Talk(1,"ghiloxu","B�n �� ��nh con l� <color=red>"..nSoLoXu.."<color> gi� h�y ghi s� �i�m b�n mu�n ��nh v�o d��i ��y.")
	--logplayer("dulieu/thongtinlode.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ��nh con l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoLo))
end
function ghiloxu()
local nTienXu= CalcEquiproomItemCount(4,417,1,1)/23
	 AskClientForNumber("diemloxu",1,100,"<#>Nh�p s� �i�m L�!")
end
function diemloxu(nDiemLoXu)
	local Date = tonumber(date("%Y%m%d"))
	if nDiemLoXu >20 then
	Say("Ng��i ��nh qu� l�n ta kh�ng th� nh�n ���c. Ch� ���c ��nh t�i �a 20 �i�m m�t nh�n v�t 1 ng�y")
	return
	end	
	if CalcEquiproomItemCount(4,417,1,1)/23 < nDiemLoXu then
	Say("B�n kh�ng mang theo �� ti�n")
	return
	end
	for i=1,nDiemLoXu*23 do
	ConsumeEquiproomItem(1,4,417,1,1)
	end
	SetTask(5306,nDiemLoXu)
	SetTask(5304,Date)
	Talk(1,"","B�n �� ghi <color=red>"..nDiemLoXu.." �i�m <color>  con l� <color=red>"..GetTask(5305).." <color> (ti�n ��ng).")
	Msg2SubWorld("<color=green>"..GetName().." �� ghi <color=pink>"..nDiemLoXu.." �i�m <color>  con l� <color=red>"..GetTask(5305).." <color> (ti�n ��ng).")
	logplayer("dulieu/thongtinlode-xu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ��nh con l� [%s] v�i s� �i�m l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetTask(5305),GetTask(5306)))
end


function traothuongloxu()
	local Date = tonumber(date("%Y%m%d"))
	local szLoxu = GetTask(5306)
	local tienthangxu=GetTask(5306)*80
	local tienthangxu1=GetTask(5306)*80+GetTask(5308)
	if GetTask(5307)==Date then
	Talk(1,"","B�n �� nh�n th��ng ng�y h�m nay r�i.")
	return
	end
	if  GetTask(5304)~= Date-1 then
	Talk(1,"","B�n ch�a ghi l� ch�a th� nh�n th��ng.")	
	return
	end
	if GetTask(5304)==Date-1 and GetTask(5307)~=Date then
	for i=1, getn(%tbGiaiLo) do
		if GetTask(5305) == %tbGiaiLo[i] then 
		SetTask(5308,tienthangxu1)
		Say("B�n �� ��nh tr�ng <color=red>"..szLoxu.."<color> �i�m con l� <color=red>"..GetTask(5305).."<color> v� nh�n ���c <color=red>"..tienthangxu.." Ti�n ��ng<color> ")
		Msg2SubWorld(" <color=yellow>"..GetName().."<color> �� ��nh tr�ng <color=yellow>"..szLoxu.."<color> �i�m l� con l� <color=yellow>"..GetTask(5305).."<color>  v� nh�n ���c <color=yellow>"..tienthangxu.." Ti�n ��ng<color>")
		SetTask(5307,Date)
		logplayer("dulieu/thongtintrunggiailode-xu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� nh�n gi�i th��ng l� [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),tienthangxu))
		break
		end
	end
	end
end
function ruttiendong()
	if GetTask(5308)==0 then
			Talk(1, "", "B�n kh�ng c�n g�i ��ng n�o � ��y c�."); 
			return
	end
			Talk(1, "ruttiendong1", "Ng��i c�n l�i <color=yellow> "..GetTask(5308).." <color=yellow> ti�n ��ng g�i ch� ta. Ng��i mu�n nh�n bao nhi�u?."); 
end;
function ruttiendong1()
	 AskClientForNumber("ruttiendongok",1,GetTask(5308),"<#>Nh�p s� ti�n mu�n r�t !")
end;
function ruttiendongok(nSoTienDong)
	local nOTrong=nSoTienDong/100
	if CalcFreeItemCellCount() < nOTrong then
			Talk(1, "", "C�n �t nh�t "..nOTrong.." � tr�ng trong h�nh trang."); 
			return
	end
	if nSoTienDong > GetTask(5308) then 
			Talk(1, "", "B�n kh�ng c� �� "..nSoTienDong.." ti�n ��ng �� r�t."); 
	return
	end
	if nSoTienDong<=GetTask(5308) then
	local nSoTienDongSauRut=GetTask(5308)-nSoTienDong
		for i=1,nSoTienDong do
		AddEventItem(417)
		end
		Talk(1, "", "B�n nh�n ���c "..nSoTienDong.." ti�n ��ng t� s�ng b�c. B�n c�n l�i "..nSoTienDongSauRut.." ti�n ��ng t�i s�ng b�c ch�a r�t. H�y d�n b�t h�nh trang tr��c khi r�t."); 
				logplayer("dulieu/thongtinruttienlode-xu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� r�t [%s] ti�n ��ng v� c�n l�i [%s] ti�n ��ng t�i s�ng b�c  ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSoTienDong,nSoTienDongSauRut))
		SetTask(5308,nSoTienDongSauRut)
	end
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end