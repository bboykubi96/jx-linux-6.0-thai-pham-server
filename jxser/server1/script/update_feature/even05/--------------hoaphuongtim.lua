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
Talk(1,"","Ng��i Ch�a Nh�n M�c ��c Bi�t  "..event.." L�n, l�m sao �n Th�m ��y ��y!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh�ng �n �� "..tiendong.." Hoa Ph��ng �� l�m sao  �n Th�m L�n S� D�ng ��y!")
return end
if (GetTask(4953) >= 2) then
		Say("<color=green>Ng��i Ch� C� Th� Reset Even 2 L�n L� T�i �a, H�y C� G�ng �n Cho T�i Kho�n Kh�c, Xin C�m �n\n<color>")
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
				Msg2Player("Ch�c M�ng Ng��i �� T�ng Th�m L�n S� D�ng Hoa Ph��ng ��")
                         Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� SD Hoa Ph��ng T�m, <color=red>T�ng Th�m 1 L�n SD Hoa Ph��ng �� <color>  ")
                            WriteLogPro("dulieu/even/hoaphuongtim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");
		
			else
				Talk(1,"","C�n Ph�i ��t 40000 Hoa Ph��ng �� M�i C� Th� S� D�ng") return 1
			end
		else
			Talk(1,"","C�p 150 Tr� L�n M�i C� Th� S� D�ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m N�y �� Qu� H�n T� ��ng M�t �i")
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end