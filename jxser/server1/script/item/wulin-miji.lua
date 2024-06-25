Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 
	--dofile("script/item/wulin-miji.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	times = GetTask(80)
	str={
		"B¹n cÇm quyÓn Vâ L©m MËt TŞch nghiªn cøu c¶ nöa ngµy, kÕt qu¶ còng kh«ng lÜnh ngé ®­îc g×. ",
		"B¹n cÇm quyÓn Vâ L©m MËt TŞch nghiªn cøu c¶ nöa ngµy, kÕt qu¶ lÜnh ngé ®­îc chót İt. ",
		"B¹n cÇm quyÓn Vâ L©m MËt TŞch nghiªn cøu c¶ nöa ngµy, kÕt qu¶ còng thu ®­îc mét vµi ®iÒu t©m ®¾c liªn quan ®Õn vâ c«ng ",
		"B¹n ®· nghiÒn ngÉm kü quyÓn Vâ L©m MËt TŞch, nh­ng kh«ng thu ®­îc ®iÒu g× t©m ®¾c "
		}
	if(times >gioihanVLMT) then                -- Ê¹ÓÃ´ÎÊıÒÑ´ïµ½ÉÏÏŞ
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[4])
		return 1
	elseif (GetLevel() < 90) then     -- µÈ¼¶Ğ¡ÓÚ80
		Msg2Player(str[2])
		return 1
	else                            	-- ½±Àø1µã¼¼ÄÜµã
		AddMagicPoint(1)
		SetTask(80,times+1)
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[3])
		return 0
	end
end