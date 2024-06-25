Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
	--dofile("script/item/wulin-miji.lua")
	dofile("script/global/g7vn/item/banhkhoaimon.lua")

	times = GetTask(3024)
	str={
		"B¹n cÇm quyÓn Vâ L©m MËt TŞch nghiªn cøu c¶ nöa ngµy, kÕt qu¶ còng kh«ng lÜnh ngé ®­îc g×. ",
		"B¹n cÇm B¸nh Khoai M«n Nh©n ThŞt Chã nghiªn cøu c¶ nöa ngµy, kÕt qu¶ lÜnh ngé ®­îc chót İt. ",
		"B¹n sö dông 'B¸nh Khoai M«n Nh©n ThŞt Chã', Kü n¨ng t¨ng thªm 1 ®iÓm",
		"B¹n cÇm trªn tay B¸nh Khoai M«n Nh©n ThŞt Chã rÊt l©u, ngÉm nghØ t¹i sao nh©n thŞt chã kh«ng ph¶i thŞt heo?"
		}
	if(times >14) then                -- Ê¹ÓÃ´ÎÊıÒÑ´ïµ½ÉÏÏŞ
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[4])
		return 1
	elseif (GetLevel() < 80) then     -- µÈ¼¶Ğ¡ÓÚ80
		Msg2Player(str[2])
		return 1
	else                            	-- ½±Àø1µã¼¼ÄÜµã
		AddMagicPoint(1)
		SetTask(3024,times+1)
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[3])
		return 0
	end
end