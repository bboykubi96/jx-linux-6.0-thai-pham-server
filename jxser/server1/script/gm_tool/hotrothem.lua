function dotim()	local tab_Content = {
		"V� Kh�/weapon",
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

function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
	--	"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
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
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		--AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		--AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
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
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
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
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
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
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
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
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkim()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end


function dohoangkim()
local tab_Content =
{
"Trang B� Thanh C�u/settc",
"Trang B� V�n L�c/setvl",
"Trang B� Th��ng Lang/settl",
"Trang B� Huy�n Vi�n/sethv",
"Trang B� T� M�ng/tumang",
"Trang B� Kim �/kimo",
"Trang B� B�ch H�/bachho",
"Trang B� X�ch L�n/xichlan",
"Trang B� Minh Ph��ng/minhphuong",
"Trang B� ��ng Long/danglong",
"Trang B� Tinh S��ng/tinhsuong",
"Trang B� Nguy�t Khuy�t/nguyetkhuyet",
"Tho�t./no",
"Tr� l�i"
}
Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end

function xichlan()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sexichlan(1)",
"Thi�u L�m B�ng/#sexichlan(2)",
"Thi�u L�m �ao/#sexichlan(3)",
"Thi�n V��ng Ch�y/#sexichlan(4)",
"Thi�n V��ng Th��ng/#sexichlan(5)",
"Thi�n V��ng �ao/#sexichlan(6)",
"Nga Mi Ki�m/#sexichlan(7)",
"Nga Mi Ch��ng/#sexichlan(8)",
"Th�y Y�n �ao/#sexichlan(9)",
"Th�y Y�n Song �ao/#sexichlan(10)",
"Ng� ��c Ch��ng/#sexichlan(11)",
"Ng� ��c �ao/#sexichlan(12)",
"���ng M�n Phi �ao/#sexichlan(13)",
"���ng M�n N�/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sexichlan(15)",
"C�i Bang R�ng/#sexichlan(16)",
"C�i Bang B�ng/#sexichlan(17)",
"Thi�n Nh�n K�ch/#sexichlan(18)",
"Thi�n Nh�n �ao/#sexichlan(19)",
"V� �ang Quy�n/#sexichlan(20)",
"V� �ang Ki�m/#sexichlan(21)",
"C�n L�n �ao/#sexichlan(22)",
"C�n L�n Ki�m/#sexichlan(23)",
"Hoa S�n Kh� T�ng/#sexichlan(24)",
"Hoa S�n Ki�m T�ng/#sexichlan(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sexichlan(nId)
for i = 2655, 2664 do
AddGoldItem(0,10*nId+i-10)
end
end


function minhphuong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#seminhphuong(1)",
"Thi�u L�m B�ng/#seminhphuong(2)",
"Thi�u L�m �ao/#seminhphuong(3)",
"Thi�n V��ng Ch�y/#seminhphuong(4)",
"Thi�n V��ng Th��ng/#seminhphuong(5)",
"Thi�n V��ng �ao/#seminhphuong(6)",
"Nga Mi Ki�m/#seminhphuong(7)",
"Nga Mi Ch��ng/#seminhphuong(8)",
"Th�y Y�n �ao/#seminhphuong(9)",
"Th�y Y�n Song �ao/#seminhphuong(10)",
"Ng� ��c Ch��ng/#seminhphuong(11)",
"Ng� ��c �ao/#seminhphuong(12)",
"���ng M�n Phi �ao/#seminhphuong(13)",
"���ng M�n N�/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#seminhphuong(15)",
"C�i Bang R�ng/#seminhphuong(16)",
"C�i Bang B�ng/#seminhphuong(17)",
"Thi�n Nh�n K�ch/#seminhphuong(18)",
"Thi�n Nh�n �ao/#seminhphuong(19)",
"V� �ang Quy�n/#seminhphuong(20)",
"V� �ang Ki�m/#seminhphuong(21)",
"C�n L�n �ao/#seminhphuong(22)",
"C�n L�n Ki�m/#seminhphuong(23)",
"Hoa S�n Kh� T�ng/#seminhphuong(24)",
"Hoa S�n Ki�m T�ng/#seminhphuong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function seminhphuong(nId)
for i = 2905, 2914 do
AddGoldItem(0,10*nId+i-10)
end
end

function danglong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sedanglong(1)",
"Thi�u L�m B�ng/#sedanglong(2)",
"Thi�u L�m �ao/#sedanglong(3)",
"Thi�n V��ng Ch�y/#sedanglong(4)",
"Thi�n V��ng Th��ng/#sedanglong(5)",
"Thi�n V��ng �ao/#sedanglong(6)",
"Nga Mi Ki�m/#sedanglong(7)",
"Nga Mi Ch��ng/#sedanglong(8)",
"Th�y Y�n �ao/#sedanglong(9)",
"Th�y Y�n Song �ao/#sedanglong(10)",
"Ng� ��c Ch��ng/#sedanglong(11)",
"Ng� ��c �ao/#sedanglong(12)",
"���ng M�n Phi �ao/#sedanglong(13)",
"���ng M�n N�/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sedanglong(15)",
"C�i Bang R�ng/#sedanglong(16)",
"C�i Bang B�ng/#sedanglong(17)",
"Thi�n Nh�n K�ch/#sedanglong(18)",
"Thi�n Nh�n �ao/#sedanglong(19)",
"V� �ang Quy�n/#sedanglong(20)",
"V� �ang Ki�m/#sedanglong(21)",
"C�n L�n �ao/#sedanglong(22)",
"C�n L�n Ki�m/#sedanglong(23)",
"Hoa S�n Ki�m T�ng/#sedanglong(24)",
"Hoa S�n Kh� T�ng/#sedanglong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sedanglong(nId)
for i = 3155, 3164 do
AddGoldItem(0,10*nId+i-10)
end
end

function tinhsuong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setinhsuong(1)",
"Thi�u L�m B�ng/#setinhsuong(2)",
"Thi�u L�m �ao/#setinhsuong(3)",
"Thi�n V��ng Ch�y/#setinhsuong(4)",
"Thi�n V��ng Th��ng/#setinhsuong(5)",
"Thi�n V��ng �ao/#setinhsuong(6)",
"Nga Mi Ki�m/#setinhsuong(7)",
"Nga Mi Ch��ng/#setinhsuong(8)",
"Th�y Y�n �ao/#setinhsuong(9)",
"Th�y Y�n Song �ao/#setinhsuong(10)",
"Ng� ��c Ch��ng/#setinhsuong(11)",
"Ng� ��c �ao/#setinhsuong(12)",
"���ng M�n Phi �ao/#setinhsuong(13)",
"���ng M�n N�/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setinhsuong(15)",
"C�i Bang R�ng/#setinhsuong(16)",
"C�i Bang B�ng/#setinhsuong(17)",
"Thi�n Nh�n K�ch/#setinhsuong(18)",
"Thi�n Nh�n �ao/#setinhsuong(19)",
"V� �ang Quy�n/#setinhsuong(20)",
"V� �ang Ki�m/#setinhsuong(21)",
"C�n L�n �ao/#setinhsuong(22)",
"C�n L�n Ki�m/#setinhsuong(23)",
"Hoa S�n Ki�m T�ng/#setinhsuong(24)",
"Hoa S�n Kh� T�ng/#setinhsuong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setinhsuong(nId)
for i = 3405, 3414 do
AddGoldItem(0,10*nId+i-10)
end
end

function nguyetkhuyet()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setnguyetkhuyet(1)",
"Thi�u L�m B�ng/#setnguyetkhuyet(2)",
"Thi�u L�m �ao/#setnguyetkhuyet(3)",
"Thi�n V��ng Ch�y/#setnguyetkhuyet(4)",
"Thi�n V��ng Th��ng/#setnguyetkhuyet(5)",
"Thi�n V��ng �ao/#setnguyetkhuyet(6)",
"Nga Mi Ki�m/#setnguyetkhuyet(7)",
"Nga Mi Ch��ng/#setnguyetkhuyet(8)",
"Th�y Y�n �ao/#setnguyetkhuyet(9)",
"Th�y Y�n Song �ao/#setnguyetkhuyet(10)",
"Ng� ��c Ch��ng/#setnguyetkhuyet(11)",
"Ng� ��c �ao/#setnguyetkhuyet(12)",
"���ng M�n Phi �ao/#setnguyetkhuyet(13)",
"���ng M�n N�/#setnguyetkhuyet(14)",
"Trang sau/nguyetkhuyet2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function nguyetkhuyet2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setnguyetkhuyet(15)",
"C�i Bang R�ng/#setnguyetkhuyet(16)",
"C�i Bang B�ng/#setnguyetkhuyet(17)",
"Thi�n Nh�n K�ch/#setnguyetkhuyet(18)",
"Thi�n Nh�n �ao/#setnguyetkhuyet(19)",
"V� �ang Quy�n/#setnguyetkhuyet(20)",
"V� �ang Ki�m/#setnguyetkhuyet(21)",
"C�n L�n �ao/#setnguyetkhuyet(22)",
"C�n L�n Ki�m/#setnguyetkhuyet(23)",
"Hoa S�n Ki�m T�ng/#setnguyetkhuyet(24)",
"Hoa S�n Kh� T�ng/#setnguyetkhuyet(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setnguyetkhuyet(nId)
for i = 3655, 3664 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachho()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sebachho(1)",
"Thi�u L�m B�ng/#sebachho(2)",
"Thi�u L�m �ao/#sebachho(3)",
"Thi�n V��ng Ch�y/#sebachho(4)",
"Thi�n V��ng Th��ng/#sebachho(5)",
"Thi�n V��ng �ao/#sebachho(6)",
"Nga Mi Ki�m/#sebachho(7)",
"Nga Mi Ch��ng/#sebachho(8)",
"Th�y Y�n �ao/#sebachho(9)",
"Th�y Y�n Song �ao/#sebachho(10)",
"Ng� ��c Ch��ng/#sebachho(11)",
"Ng� ��c �ao/#sebachho(12)",
"���ng M�n Phi �ao/#sebachho(13)",
"���ng M�n N�/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sebachho(15)",
"C�i Bang R�ng/#sebachho(16)",
"C�i Bang B�ng/#sebachho(17)",
"Thi�n Nh�n K�ch/#sebachho(18)",
"Thi�n Nh�n �ao/#sebachho(19)",
"V� �ang Quy�n/#sebachho(20)",
"V� �ang Ki�m/#sebachho(21)",
"C�n L�n �ao/#sebachho(22)",
"C�n L�n Ki�m/#sebachho(23)",
"Hoa S�n Kh� T�ng/#sebachho(24)",
"Hoa S�n Ki�m T�ng/#sebachho(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sebachho(nId)
for i = 2405, 2414 do
AddGoldItem(0,10*nId+i-10)
end
end

function kimo()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sekimo(1)",
"Thi�u L�m B�ng/#sekimo(2)",
"Thi�u L�m �ao/#sekimo(3)",
"Thi�n V��ng Ch�y/#sekimo(4)",
"Thi�n V��ng Th��ng/#sekimo(5)",
"Thi�n V��ng �ao/#sekimo(6)",
"Nga Mi Ki�m/#sekimo(7)",
"Nga Mi Ch��ng/#sekimo(8)",
"Th�y Y�n �ao/#sekimo(9)",
"Th�y Y�n Song �ao/#sekimo(10)",
"Ng� ��c Ch��ng/#sekimo(11)",
"Ng� ��c �ao/#sekimo(12)",
"���ng M�n Phi �ao/#sekimo(13)",
"���ng M�n N�/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sekimo(15)",
"C�i Bang R�ng/#sekimo(16)",
"C�i Bang B�ng/#sekimo(17)",
"Thi�n Nh�n K�ch/#sekimo(18)",
"Thi�n Nh�n �ao/#sekimo(19)",
"V� �ang Quy�n/#sekimo(20)",
"V� �ang Ki�m/#sekimo(21)",
"C�n L�n �ao/#sekimo(22)",
"C�n L�n Ki�m/#sekimo(23)",
"Hoa S�n Kh� T�ng/#sekimo(24)",
"Hoa S�n Ki�m T�ng/#sekimo(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sekimo(nId)
for i = 2155, 2164 do
AddGoldItem(0,10*nId+i-10)
end
end

function tumang()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setumang(1)",
"Thi�u L�m B�ng/#setumang(2)",
"Thi�u L�m �ao/#setumang(3)",
"Thi�n V��ng Ch�y/#setumang(4)",
"Thi�n V��ng Th��ng/#setumang(5)",
"Thi�n V��ng �ao/#setumang(6)",
"Nga Mi Ki�m/#setumang(7)",
"Nga Mi Ch��ng/#setumang(8)",
"Th�y Y�n �ao/#setumang(9)",
"Th�y Y�n Song �ao/#setumang(10)",
"Ng� ��c Ch��ng/#setumang(11)",
"Ng� ��c �ao/#setumang(12)",
"���ng M�n Phi �ao/#setumang(13)",
"���ng M�n N�/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setumang(15)",
"C�i Bang R�ng/#setumang(16)",
"C�i Bang B�ng/#setumang(17)",
"Thi�n Nh�n K�ch/#setumang(18)",
"Thi�n Nh�n �ao/#setumang(19)",
"V� �ang Quy�n/#setumang(20)",
"V� �ang Ki�m/#setumang(21)",
"C�n L�n �ao/#setumang(22)",
"C�n L�n Ki�m/#setumang(23)",
"Hoa S�n Kh� T�ng/#setumang(24)",
"Hoa S�n Ki�m T�ng/#setumang(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1905, 1914 do
AddGoldItem(0,10*nId+i-10)
end
end

function macblb()
AddItem(6,1,1448,1,0,0)
end

function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function sethv()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#sethv1(1)",
		"Thi�u L�m C�n/#sethv1(2)",
		"Thi�u L�m �ao/#sethv1(3)",
		"Thi�n V��ng Ch�y/#sethv1(4)",
		"Thi�n V��ng Th��ng/#sethv1(5)",
		"Thi�n V��ng �ao/#sethv1(6)",
		"Nga Mi Ki�m/#sethv1(7)",
		"Nga Mi Ch��ng/#sethv1(8)",
		"Th�y Y�n �ao/#sethv1(9)",
		"Th�y Y�n Song �ao/#sethv1(10)",
		"Ng� ��c Ch��ng/#sethv1(11)",
		"Ng� ��c �ao/#sethv1(12)",
		"Trang sau/sethv2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethv2()
	local tab_Content = {
		"���ng M�n Phi �ao/#sethv1(13)",
		"���ng M�n T� Ti�n/#sethv1(14)",
		"���ng M�n Phi Ti�u/#sethv1(15)",
		"C�i Bang R�ng/#sethv1(16)",
		"C�i Bang B�ng/#sethv1(17)",
		"Thi�n Nh�n K�ch/#sethv1(18)",
		"Thi�n Nh�n �ao/#sethv1(19)",
		"V� �ang Kh� /#sethv1(20)",
		"V� �ang Ki�m/#sethv1(21)",
		"C�n L�n �ao/#sethv1(22)",
		"C�n L�n Ki�m/#sethv1(23)",
		"Hoa S�n Kh� T�ng/#sethv1(24)",
		"Hoa S�n Ki�m T�ng/#sethv1(25)",
		"Th�i/no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethv1(nId)
for i=1655,1664 do AddGoldItem(0,10*nId+i-10) end
end

function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#sethkmp1(1)",
		"Thi�u L�m C�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng Ch�y/#sethkmp1(4)",
		"Thi�n V��ng Th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga Mi Ki�m/#sethkmp1(7)",
		"Nga Mi Ch��ng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n Song �ao/#sethkmp1(11)",
		"Ng� ��c Ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c B�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"���ng M�n Phi �ao/#sethkmp1(15)",
		"���ng M�n T� Ti�n/#sethkmp1(16)",
		"���ng M�n Phi Ti�u/#sethkmp1(17)",
		"���ng M�n B�y/#sethkmp1(18)",
		"C�i Bang R�ng/#sethkmp1(19)",
		"C�i Bang B�ng/#sethkmp1(20)",
		"Thi�n Nh�n K�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n B�a/#sethkmp1(23)",
		"V� �ang Kh� /#sethkmp1(24)",
		"V� �ang Ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n Ki�m/#sethkmp1(27)",
		"C�n L�n B�a/#sethkmp1(28)",
		"Th�i/no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function settl()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#settl1(1)",
"Thi�u L�m B�ng/#settl1(2)",
"Thi�u L�m �ao/#settl1(3)",
"Thi�n V��ng Ch�y/#settl1(4)",
"Thi�n V��ng Th��ng/#settl1(5)",
"Thi�n V��ng �ao/#settl1(6)",
"Nga Mi Ki�m/#settl1(7)",
"Nga Mi Ch��ng/#settl1(8)",
"Th�y Y�n �ao/#settl1(9)",
"Th�y Y�n Song �ao/#settl1(10)",
"Ng� ��c Ch��ng/#settl1(11)",
"Ng� ��c �ao/#settl1(12)",
"���ng M�n Phi �ao/#settl1(13)",
"���ng M�n N�/#settl1(14)",
"Trang sau/settl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function settl2()
local tab_Content = {
"���ng M�n Phi Ti�u/#settl1(15)",
"C�i Bang R�ng/#settl1(16)",
"C�i Bang B�ng/#settl1(17)",
"Thi�n Nh�n K�ch/#settl1(18)",
"Thi�n Nh�n �ao/#settl1(19)",
"V� �ang Quy�n/#settl1(20)",
"V� �ang Ki�m/#settl1(21)",
"C�n L�n �ao/#settl1(22)",
"C�n L�n Ki�m/#settl1(23)",
"Hoa S�n Kh� T�ng/#settl1(24)",
"Hoa S�n Ki�m T�ng/#settl1(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function settl1(nId)
for i=1405,1414 do AddGoldItem(0,10*nId+i-10) end
end

function setvl()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setvl1(1)",
"Thi�u L�m B�ng/#setvl1(2)",
"Thi�u L�m �ao/#setvl1(3)",
"Thi�n V��ng Ch�y/#setvl1(4)",
"Thi�n V��ng Th��ng/#setvl1(5)",
"Thi�n V��ng �ao/#setvl1(6)",
"Nga Mi Ki�m/#setvl1(7)",
"Nga Mi Ch��ng/#setvl1(8)",
"Th�y Y�n �ao/#setvl1(9)",
"Th�y Y�n Song �ao/#setvl1(10)",
"Ng� ��c Ch��ng/#setvl1(11)",
"Ng� ��c �ao/#setvl1(12)",
"���ng M�n Phi �ao/#setvl1(13)",
"���ng M�n N�/#setvl1(14)",
"Trang sau/setvl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setvl2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setvl1(15)",
"C�i Bang R�ng/#setvl1(16)",
"C�i Bang B�ng/#setvl1(17)",
"Thi�n Nh�n K�ch/#setvl1(18)",
"Thi�n Nh�n �ao/#setvl1(19)",
"V� �ang Quy�n/#setvl1(20)",
"V� �ang Ki�m/#setvl1(21)",
"C�n L�n �ao/#setvl1(22)",
"C�n L�n Ki�m/#setvl1(23)",
"Hoa S�n Kh� T�ng/#setvl1(24)",
"Hoa S�n Ki�m T�ng/#setvl1(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setvl1(nId)
for i=1155,1164 do AddGoldItem(0,10*nId+i-10) end
end

function settc()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#settc1(1)",
"Thi�u L�m B�ng/#settc1(2)",
"Thi�u L�m �ao/#settc1(3)",
"Thi�n V��ng Ch�y/#settc1(4)",
"Thi�n V��ng Th��ng/#settc1(5)",
"Thi�n V��ng �ao/#settc1(6)",
"Nga Mi Ki�m/#settc1(7)",
"Nga Mi Ch��ng/#settc1(8)",
"Th�y Y�n �ao/#settc1(9)",
"Th�y Y�n Song �ao/#settc1(10)",
"Ng� ��c Ch��ng/#settc1(11)",
"Ng� ��c �ao/#settc1(12)",
"���ng M�n Phi �ao/#settc1(13)",
"���ng M�n N�/#settc1(14)",
"Trang sau/settc2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function settc2()
local tab_Content = {
"���ng M�n Phi Ti�u/#settc1(15)",
"C�i Bang R�ng/#settc1(16)",
"C�i Bang B�ng/#settc1(17)",
"Thi�n Nh�n K�ch/#settc1(18)",
"Thi�n Nh�n �ao/#settc1(19)",
"V� �ang Quy�n/#settc1(20)",
"V� �ang Ki�m/#settc1(21)",
"C�n L�n �ao/#settc1(22)",
"C�n L�n Ki�m/#settc1(23)",
"Hoa S�n Kh� T�ng/#settc1(24)",
"Hoa S�n Ki�m T�ng/#settc1(25)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function settc1(nId)
for i = 905,914 do AddGoldItem(0,10*nId+i-10) end
end





-----------------------------------------------------------------------------------------------------
MATKHAU = {9,7,5,3,1,2}
CheckPassGMA = {{"19992000",1},}
---------------------------------------------------------------------------------------