-- ÁÙ°²¡¡Ö°ÄÜ¡¡Ò©µêÀÏ°å
-- by£ºDan_Deng(2003-09-16)

-- Á¶ÖÆ»ìÔªÁé¢¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say(10855,
		3,
		"Giao dÞch/yes",
		"Mua M¸u Nhanh (2000 l­îng - 1 b×nh)/okmuamau",
		-- "LuyÖn ch?hçn nguyªn linh l?refine",
		"Kh«ng giao dÞch/Cancel")
end;

function yes()
	Sale(12)  				--µ¯³ö½»Ò×¿ò
end


function okmuamau()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("§¹i hiÖp kh«ng ®ñ ng©n l­îng ®Ó mua m¸u nhanh.")
		return
	end
end