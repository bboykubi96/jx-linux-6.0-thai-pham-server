-- ´óÀí Ö°ÄÜ Ò©µêÀÏ°å
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("VÞ kh¸ch nµy mua mét Ýt thuèc phßng th©n ®i.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--µ¯³ö½»Ò×¿ò
end

if TEACHERSWITCH then
	-- tinsert(OPTIONS, "°ïÎÒ·ÅÒ©¾Æ/brew")
end
tinsert(OPTIONS, "Giao dÞch/yes")
--tinsert(OPTIONS, "Mua M¸u Nhanh/muamaucucnhanh2")
tinsert(OPTIONS, "Kh«ng cÇn/Cancel")


function muamaucucnhanh2()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end