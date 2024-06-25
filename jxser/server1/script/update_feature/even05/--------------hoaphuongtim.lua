IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
GIOHOAHONG = 4965; TANGTHEMLANSUDUNG = 4964
--------------------------------------
function main()
local tiendong = 40000
local ktra_tien = GetTask(4965) ;
local event =1
local ktra_event = GetTask(4955) ;
if ktra_event < event then
Talk(1,"","Ng­¬i Ch­a NhËn Mèc ®Æc BiÖt  "..event.." LÇn, lµm sao ¡n Thªm §©y ®©y!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh«ng ¡n ®ñ "..tiendong.." Hoa Ph­îng §á lµm sao  ¡n Thªm LÇn Sö Dông ®©y!")
return end
if (GetTask(4953) >= 2) then
		Say("<color=green>Ng­¬i ChØ Cã ThÓ Reset Even 2 L©n Lµ Tèi §a, H·y Cè G¾ng ¡n Cho Tµi Kho¶n Kh¸c, Xin C¶m ¥n\n<color>")
	return end
dofile("script/update_feature/even05/hoaphuongtim111111111111.lua")

local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if (nDate >= 201903010000) and (nDate <= 202205292400) then
		if (GetLevel() >= 150) then
			if (GetTask(GIOHOAHONG) >= 40000) then
				SetTask(TANGTHEMLANSUDUNG,1)
                              SetTask(4953,GetTask(4953)+1)
                                 SetTask(4955,0)
                                 SetTask(4956,0)
                                 SetTask(4957,0)
                                 SetTask(4958,0)
                                 SetTask(4959,0)
                                 SetTask(4960,0)
                                 SetTask(4962,0)
                                 SetTask(4963,0)
                                 SetTask(4964,0)
                                 SetTask(4965,0)	
				Msg2Player("Chóc Mõng Ng­¬i §· T¨ng Thªm LÇn Sö Dông Hoa Ph­îng §á")
                         Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· SD Hoa Ph­îng TÝm, <color=red>T¨ng Thªm 1 LÇn SD Hoa Ph­îng §á <color>  ")
                            WriteLogPro("dulieu/even/hoaphuongtim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");
		
			else
				Talk(1,"","CÇn Ph¶i §¹t 40000 Hoa Ph­îng §á Míi Cã ThÓ Sö Dông") return 1
			end
		else
			Talk(1,"","CÊp 150 Trë Lªn Míi Cã ThÓ Sö Dông") return 1
		end
	else
		Talk(1,"","VËt PhÈm Nµy §· Qu¸ H¹n Tù §éng MÊt §i")
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end