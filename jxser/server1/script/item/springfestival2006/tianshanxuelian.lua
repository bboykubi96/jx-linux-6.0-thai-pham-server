IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua")  --������ۼӾ���Ĺ�������
Include("\\script\\lib\\pay.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
    
	dofile("script/item/tianshanxuelian.lua")
	dofile("script/global/g7vn/g7configall.lua")

if GetTask(5969)<2 then

Say("Thi�n S�n Tuy�t Li�n ch� d�nh cho nh�ng Nh�n v�t �� c�i l�o 2 tr� l�n")
return 1
end

	if GetTask(5969)==2 and GetLevel() < 200 then 
			local nCureLevel = GetLevel()
		local nAddLevel = 200 - nCureLevel
		ST_LevelUp(nAddLevel)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Thi�n S�n Tuy�t Li�n<color> l�n ngay lv 200 + c�i l�o 2")
	WriteLogPro("dulieu/log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Thien Son\n");
	return 0
	else
		Say("B�n kh�ng �� �i�u ki�n �� s� d�ng, xin ki�m tra l�i")
			return 1;
			end
			
			end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
