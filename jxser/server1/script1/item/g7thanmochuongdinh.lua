
Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)

	--dofile("script/item/g7thanmochuongdinh.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	local solanhochoacongTong = GetTask(idtaskhochoacongdaiphap_Tong)
	if solanhochoacongTong >= hochoacongdaiphap_MAXTong then
		Msg2Player("§¹i hiÖp ®· ®¹t ®Õn c¶nh giíi tèi cao cña vâ häc råi")
		return 1;
	end

	local solanhochoacong = GetTask(idtaskhochoacongdaiphap)
	if solanhochoacong < hochoacongdaiphap_MAX then
		Msg2Player("Tu luyÖn Hãa c«ng ®¹i ph¸p ch­a ®¹t ®Õn møc giíi h¹n kh«ng cÇn sö dông")
		return 1;
	end

	SetTask(idtaskhochoacongdaiphap,0)
	Msg2Player("Sö dông ThÇn méc h­¬ng ®Ønh c«ng lùc gia t¨ng béi phÇn")
	return 0
	
end