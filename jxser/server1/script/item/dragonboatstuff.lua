function main() 
	local a = "Ğ¡ÁúÖÛ = 1¸öÁúÍ·+1¸öÁúÎ²+1¸öÁúÉí+1¸öÁú¹Ç+4¸öéÖ½°+1¸ö¶æ+1¸ö¹Ä";
	local b = "<enter>´«Í³ÁúÖÛ = 1¸öĞ¡ÁúÖÛ+4¸öéÖ½°";
	local c = "<enter>ÂíÍ·ÁúÖÛ = 1¸öĞ¡ÁúÖÛ+1¸ö´«Í³ÁúÖÛ+1¸öÁúÍ·";
Say(a..b..c, 2,"Trang kÕ tiÕp /nextpage","T¾t /no"); 
return 1; 
end 

function nextpage() 
	local d = "ÄñÍ·ÁúÖÛ = 1¸öÂíÍ·ÁúÖÛ1¸ö+1¸ö´«Í³ÁúÖÛ+1¸öÁúÍ·";
	local e = "<enter>ÊŞĞÎÁúÖÛ = 1¸öÄñÍ·ÁúÖÛ+1¸öÂíÍ·ÁúÖÛ+1¸öÁúÍ·";
	local f = "<enter>¾ŞĞÍÁúÖÛ = 1¸öÊŞĞÎÁúÖÛ+1¸öÄñÍ·ÁúÖÛ+1¸öÂíÍ·ÁúÖÛ";
Say(d..e..f, 2,"Trang tr­íc /main","T¾t /no"); 
end 

function no() 
end