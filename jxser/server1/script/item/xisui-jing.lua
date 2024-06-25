--Tay tuy kinh edit by G7VN

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)
	--dofile("script/item/xisui-jing.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	times = GetTask(81)
	point= {
		{pot=1,msg="Mét ®iÓm "},
		{pot=2,msg="Ch­a høa "},
		{pot=3,msg="Mét sè "},
		{pot=4,msg="Kh«ng İt "},
		{pot=5,msg="H¬i nhiÒu "}
	}
	str ={
		"B¹n ®· xem kü quyÓn TÈy Tñy kinh nh­ng kh«ng thÓ hiÓu: ( ",
		"B¹n ®· ®äc 'TÈy Tñy Kinh', nhËn ®­îc %s",
		"B¹n ®· xem kü quyÓn TÈy Tñy kinh nh­ng kh«ng thÓ hiÓu: ( "
	}
	level = GetLevel()
	if(level < 90) then  --µÈ¼¶Ì«µÍ£¬²»ÈÃÊ¹ÓÃ
		Msg2Player(str[1])
		return 1
	end
	if(times > gioihanTTK) then --Ê¹ÓÃ³¬¹ı´ÎÊı
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[3])
		return 1
	end
	if(level > 89) then --°´µÈ¼¶·ÖÅäÇ±ÄÜ
		level = 89
	end
	index = floor((level -80)/2) +1
	AddProp(point[index].pot)
	SetTask(81,times+1)
	Msg2Player("Sö dông lÇn thø: "..times.." - "..format(str[2],point[index].msg))
	return 0
end

