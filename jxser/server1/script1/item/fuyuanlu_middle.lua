-- ¸£ÔµÂ¶£¨ÖÐ£©
-- Fanghao_Wu 2004.9.6

Include( "\\script\\global\\fuyuan.lua" )

function main()
	--dofile("script/item/fuyuanlu_middle.lua")
	FuYuan_Start();
	if( FuYuan_Add( 20 ) ~= 1 ) then
		Msg2Player( "B¹n t¹m thêi ch­a thÓ sö dông Phóc Duyªn, tr­íc tiªn h·y ®i t×m Vâ L©m Minh TruyÒn Nh©n ë c¸c thµnh phè lín ®Ó më c«ng n¨ng nµy. " );
		return 1;
	end	
end