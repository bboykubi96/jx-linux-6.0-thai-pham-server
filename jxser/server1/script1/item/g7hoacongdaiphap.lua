
Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)

	--dofile("script/item/g7hoacongdaiphap.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	local solanhochoacongTong = GetTask(idtaskhochoacongdaiphap_Tong)
	if solanhochoacongTong >= hochoacongdaiphap_MAXTong then
		Msg2Player("��i hi�p �� ��t ��n c�nh gi�i t�i cao c�a v� h�c r�i")
		return 1;
	end

	local solanhoc = GetTask(idtaskhochoacongdaiphap)
	if solanhoc >= hochoacongdaiphap_MAX then
		Msg2Player("S� d�ng Th�n m�c h��ng ��nh �� t�n �i to�n b� c�ng l�c trong ng��i m�i c� th� luy�n ti�p. N�u nh� t�n kh�ng h�t ho�c n�i l�c �i nh�m s� b� t�u h�a nh�p ma")
		return 1;
	end

	AddProp(diemtiemnanghoc_hoacongdaiphap)
	SetTask(idtaskhochoacongdaiphap,solanhoc+1)
	SetTask(idtaskhochoacongdaiphap_Tong,solanhochoacongTong+1)
	Msg2Player("L�c ��u m�i h�p thu s� kh�ng c� c�m gi�c g� nh�ng m� v� sau c�ng l�c s� gia t�ng b�i ph�n")
	return 0
	
end

