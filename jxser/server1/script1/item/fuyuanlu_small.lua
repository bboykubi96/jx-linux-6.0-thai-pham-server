-- ��Ե¶��С��
-- Fanghao_Wu 2004.9.6

Include( "\\script\\global\\fuyuan.lua" )

function main()
	--dofile("script/item/fuyuanlu_small.lua")
	FuYuan_Start();
	if( FuYuan_Add( 10 ) ~= 1 ) then
		Msg2Player( "B�n t�m th�i ch�a th� s� d�ng Ph�c Duy�n, tr��c ti�n h�y �i t�m V� L�m Minh Truy�n Nh�n � c�c th�nh ph� l�n �� m� c�ng n�ng n�y. " );
		return 1;
	end	
end