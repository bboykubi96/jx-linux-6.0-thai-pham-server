
Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)

	--dofile("script/item/g7thanmochuongdinh.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	local solanhochoacongTong = GetTask(idtaskhochoacongdaiphap_Tong)
	if solanhochoacongTong >= hochoacongdaiphap_MAXTong then
		Msg2Player("��i hi�p �� ��t ��n c�nh gi�i t�i cao c�a v� h�c r�i")
		return 1;
	end

	local solanhochoacong = GetTask(idtaskhochoacongdaiphap)
	if solanhochoacong < hochoacongdaiphap_MAX then
		Msg2Player("Tu luy�n H�a c�ng ��i ph�p ch�a ��t ��n m�c gi�i h�n kh�ng c�n s� d�ng")
		return 1;
	end

	SetTask(idtaskhochoacongdaiphap,0)
	Msg2Player("S� d�ng Th�n m�c h��ng ��nh c�ng l�c gia t�ng b�i ph�n")
	return 0
	
end