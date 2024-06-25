--Tay tuy kinh edit by G7VN

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)
	--dofile("script/item/xisui-jing.lua")
	dofile("script/global/g7vn/item/banhdauxanh.lua")

	times = GetTask(3025)
	point= {
		{pot=1,msg="Mét ®iÓm "},
		{pot=2,msg="Ch­a høa "},
		{pot=3,msg="Mét sè "},
		{pot=4,msg="Kh«ng Ýt "},
		{pot=5,msg="H¬i nhiÒu "}
	}
	str ={
		"B¹n kh«ng biÕt b¸nh nµy ®Ó lµm g×.: ( ",
		"B¹n ®· ¨n 'B¸nh §Ëu Xanh Nh©n ThÞt Chã', nhËn ®­îc %s",
		"B¹n ®· ¨n ®ñ sè l­îng B¸nh, cÈn thËn béi thùc : ( "
	}
	level = GetLevel()
	if(level < 80) then  --µÈ¼¶Ì«µÍ£¬²»ÈÃÊ¹ÓÃ
		Msg2Player(str[1])
		return 1
	end
	if(times > 14) then --Ê¹ÓÃ³¬¹ý´ÎÊý
		Msg2Player("Sö dông lÇn thø: "..times.." - "..str[3])
		return 1
	end
	if(level > 89) then --°´µÈ¼¶·ÖÅäÇ±ÄÜ
		level = 89
	end
	index = floor((level -80)/2) +1
	AddProp(5)
	SetTask(3025,times+1)
	Msg2Player("Sö dông lÇn thø: "..times.." - "..format(str[2],point[index].msg))
	return 0
end

