-- ÁÙ°²¡¡Ö°ÄÜ¡¡Ò©µêÀÏ°å
-- by£ºDan_Deng(2003-09-16)

-- Á¶ÖÆ»ìÔªÁéÂ¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("§au bÖnh th× ph¶i uèng thuèc! Nh­ng ®õng ®Ó cã bÖnh råi míi mua! Lóc ®ã e sÏ cøu kh«ng kŞp!",
		3,
		"Giao dŞch/yes",
		"Ta muèn chÕ t¹o Hçn Nguyªn Linh Lé/refine",
		"Kh«ng giao dŞch/Cancel")
end;

function yes()
	Sale(12)  				--µ¯³ö½»Ò×¿ò
end
