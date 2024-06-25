
Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)

	--dofile("script/item/g7hoacongdaiphap.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	local solanhochoacongTong = GetTask(idtaskhochoacongdaiphap_Tong)
	if solanhochoacongTong >= hochoacongdaiphap_MAXTong then
		Msg2Player("§¹i hiÖp ®· ®¹t ®Õn c¶nh giíi tèi cao cña vâ häc råi")
		return 1;
	end

	local solanhoc = GetTask(idtaskhochoacongdaiphap)
	if solanhoc >= hochoacongdaiphap_MAX then
		Msg2Player("Sö dông ThÇn méc h­¬ng ®Ønh ®Ó t¸n ®i toµn bé c«ng lùc trong ng­êi míi cã thÓ luyÖn tiÕp. NÕu nh­ t¸n kh«ng hÕt hoÆc néi lùc ®i nhÇm sÏ bŞ tÈu háa nhËp ma")
		return 1;
	end

	AddProp(diemtiemnanghoc_hoacongdaiphap)
	SetTask(idtaskhochoacongdaiphap,solanhoc+1)
	SetTask(idtaskhochoacongdaiphap_Tong,solanhochoacongTong+1)
	Msg2Player("Lóc ®Çu míi hÊp thu sÏ kh«ng cã c¶m gi¸c g× nh­ng mµ vÒ sau c«ng lùc sÏ gia t¨ng béi phÇn")
	return 0
	
end

