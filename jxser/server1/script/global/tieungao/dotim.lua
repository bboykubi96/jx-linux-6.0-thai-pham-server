--Script by mcteam

Include("\\script\\global\\autoexec_head.lua")


function muabangxu(soxu)

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
	if (nCurTD < soxu) then
		Say("Kh�ch quan kh�ng mang �� Ti�n ��ng!", 0)
		return -1;
	end

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Tr� ti�n ��ng th�t b�i !")
		return -1;
	end
	
	return 1;--du dieu kien mua

end;

function muabangtienvan(sltienphaitra)

	local sltien = GetCash()
	if(sltien < sltienphaitra) then
		Say("Kh�ch quan kh�ng mang ��: "..sltienphaitra.." l��ng")
		return -1
	end

	Pay(sltienphaitra)	

	return 1;--du dieu kien mua

end;


function gmtrangbitim()
	--do Say("Ch�c n�ng n�y �ang t�m ��ng") return end

	local tbOpt = {}
	--tinsert(tbOpt,"Mua trang b� 6 d�ng ./nhando6dong")
	tinsert(tbOpt,"Mua nguy�n li�u �p  ./nguyenlieuep")
	tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
	Say("Th� r�n # Ta chuy�n b�n c�c lo�i v�t ph�m �� kh�m n�m trang b� T�m, kh�ch quan c�n g�?", getn(tbOpt), tbOpt)
end

function nguyenlieuep()
	local tab_Content = {
		"Huy�n tinh/cuahanghuyentinh",
		"Kho�ng th�ch 1 b� # gi�: 100 v�n/#cuahangkhoangthachsltienphaitra(1000000)",
		--"S�t th� gi�n/stg",
		--"Th�y tinh/thuyti",
		"Ph�c duy�n/cuahangphucduyen",
		"K�t th�c ��i tho�i."
	}
	Say("Kh�ch quan mu�n mua g�?", getn(tab_Content), tab_Content);
end;

function cuahangkhoangthachsltienphaitra(sotien)
	local trutien = muabangtienvan(sotien);
	if(trutien  == -1) then
		return
	end
	kdb();
	Msg2Player("�� nh�n ���c 1 b� kho�ng th�ch!")
end

function cuahangphucduyen()
	local tab_Content = {
		"Ph�c duy�n l� ti�u # gi�: 20 v�n /#muaphucduyenkvan(122,200000)",
		"Ph�c duy�n l� trung # gi�: 50 v�n /#muaphucduyenkvan(123,400000)",
		"Ph�c duy�n l� ��i # gi�: 100 v�n /#muaphucduyenkvan(124,1000000)",
		"K�t th�c ��i tho�i."
	}
	Say("Kh�ch quan mu�n mua g�?", getn(tab_Content), tab_Content);

end;

function muaphucduyenkvan(idpd,sotien)
	local trutien = muabangtienvan(sotien);
	if(trutien  == -1) then
		return
	end
	AddItem(6,1,idpd,1,0,0,0)
	Msg2Player("�� nh�n ���c 1 h�p ph�c duy�n!")

end;

function cuahanghuyentinh()
	local tab_Content = {
		"Huy�n tinh c�p 4 # gi�: 8 xu/#muahtinhbangxu(4,8)",
		"Huy�n tinh c�p 5 # gi�: 10 xu/#muahtinhbangxu(5,10)",
		"Huy�n tinh c�p 6 # gi�: 15 xu/#muahtinhbangxu(6,15)",
		"Huy�n tinh c�p 7 # gi�: 20 xu/#muahtinhbangxu(7,20)",
		"Huy�n tinh c�p 8 # gi�: 30 xu/#muahtinhbangxu(8,30)",
		"Huy�n tinh c�p 9 # gi�: 40 xu/#muahtinhbangxu(9,40)",
		"K�t th�c ��i tho�i."
	}
	Say("Kh�ch quan mu�n mua g�?", getn(tab_Content), tab_Content);
end;

function muahtinhbangxu(cap,xu)
	local truxu = muabangxu(xu);
	if(truxu == -1) then
		return
	end
	AddItem(6,1,147,cap,0,0,0) 
	Msg2Player("�� nh�n ���c 1 vi�n huy�n tinh!")
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
--AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) --hien 1
AddItem(6,1,150,1,0,0,0) --an 1 kim
AddItem(6,1,150,1,1,0,0) --an 1 moc
AddItem(6,1,150,1,2,0,0) --an 1 thuy
AddItem(6,1,150,1,3,0,0) --an 1 hoa
AddItem(6,1,150,1,4,0,0) --an 1 tho

AddItem(6,1,151,1,0,0,0) --hien 2
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) --hien 3
AddItem(6,1,154,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end

function nhando6dong()	
	local tab_Content = {
		"V� Kh�/vukhi6dong",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"V�t ph�m h� tr�/khoangth",
		"M�t n�/manat",
		"Trang b� b�ch kim/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function vukhi6dong()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,0,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,0,10,2,0,30,240,10,340,130,310)--thuy
		AddQualityItem(2,0,0,0,10,3,0,160,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,0,10,4,0,110,470,10,300,30,380)--tho
		
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,1,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,1,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,1,10,3,0,160,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,1,10,4,0,150,470,10,300,160,380)--tho
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,2,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,2,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,2,10,3,0,110,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,2,10,4,0,150,470,10,300,160,380)--tho	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,10,220,140,290,30,270)
		AddQualityItem(2,0,0,3,10,1,0,150,480,30,230,140,320)
		AddQualityItem(2,0,0,3,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,3,10,3,0,110,460,30,360,150,270)
		AddQualityItem(2,0,0,3,10,4,0,110,470,10,300,160,380)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,10,220,140,290,30,270)
		AddQualityItem(2,0,0,4,10,1,0,40,480,30,230,140,320)
		AddQualityItem(2,0,0,4,10,2,0,130,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,4,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,0,4,10,4,0,40,470,10,300,160,380)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,110,220,140,290,30,270)
		AddQualityItem(2,0,0,5,10,1,0,110,480,30,230,140,320)
		AddQualityItem(2,0,0,5,10,2,0,110,450,10,310,140,340)--thuy
		AddQualityItem(2,0,0,5,10,3,0,110,460,30,360,150,270)
		AddQualityItem(2,0,0,5,10,4,0,110,470,10,300,160,380)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,0,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,0,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,0,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,0,10,4,0,40,470,10,300,160,380)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,1,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,1,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,1,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,1,10,4,0,40,470,10,300,160,380)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,2,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,2,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,2,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,2,10,4,0,40,470,10,300,160,380)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()

		AddQualityItem(2,0,2,0,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,0,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,0,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,0,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,0,10,4,0,90,300,150,380,160,270)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,1,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,1,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,1,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,1,10,4,0,90,300,150,380,160,270)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,2,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,2,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,2,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,2,10,4,0,90,300,150,380,160,270)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,3,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,3,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,3,10,3,0,150,280,90,360,160,270)
		AddQualityItem(2,0,2,3,10,4,0,90,300,150,380,160,270)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,4,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,4,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,4,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,4,10,4,0,90,300,150,380,160,270)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,5,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,5,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,5,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,5,10,4,0,90,300,150,380,160,270)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,6,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,6,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,6,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,6,10,4,0,90,300,150,380,160,270)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,8,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,8,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,8,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,8,10,4,0,90,300,150,380,160,270)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,9,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,9,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,9,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,9,10,4,0,90,300,150,380,160,270)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,10,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,10,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,10,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,10,10,4,0,90,300,150,380,160,270)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,11,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,11,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,11,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,11,10,4,0,90,300,150,380,160,270)

end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,12,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,12,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,12,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,12,10,4,0,90,300,150,380,160,270)

end


function tienquan()
		AddQualityItem(2,0,2,8,13,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,8,13,1,0,90,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,8,13,2,0,310,150,340,160,270)
		AddQualityItem(2,0,2,8,13,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,8,13,4,0,90,300,150,380,160,270)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,0,10,4,0,150,300,160,380,180,270)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,1,10,4,0,150,300,160,380,180,270)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,2,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,2,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,2,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,2,10,4,0,150,300,160,380,180,270)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,3,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,3,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,3,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,3,10,4,0,150,300,160,380,180,270)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,4,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,4,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,4,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,4,10,4,0,150,300,160,380,180,270)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,5,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,5,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,5,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,5,10,4,0,150,300,160,380,180,270)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,6,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,6,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,6,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,6,10,4,0,150,300,160,380,180,270)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,7,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,7,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,7,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,7,10,4,0,150,300,160,380,180,270)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,8,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,8,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,8,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,8,10,4,0,150,300,160,380,180,270)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,9,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,9,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,9,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,9,10,4,0,150,300,160,380,180,270)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,10,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,10,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,10,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,10,10,4,0,150,300,160,380,180,270)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,11,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,11,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,11,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,11,10,4,0,150,300,160,380,180,270)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,12,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,12,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,12,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,12,10,4,0,150,300,160,380,180,270)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,13,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,13,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,13,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,13,10,4,0,150,300,160,380,180,270)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,8,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,8,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,8,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,8,0,10,4,0,150,300,160,380,180,270)		
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,8,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,8,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,8,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,8,1,10,4,0,150,300,160,380,180,270)	
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,6,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,6,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,6,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,6,0,10,4,0,150,300,160,380,180,270)	
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,6,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,6,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,6,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,6,1,10,4,0,150,300,160,380,180,270)	
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,0,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,0,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,0,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,0,10,4,0,150,300,160,380,70,270)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,1,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,1,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,1,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,1,10,4,0,150,300,160,380,70,270)
end


function kimlu()

		AddQualityItem(2,0,5,2,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,2,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,2,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,2,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,2,10,4,0,150,300,160,380,70,270)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,3,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,3,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,3,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,3,10,4,0,150,300,160,380,70,270)
end