IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua")  --¸øÍæ¼ÒÀÛ¼Ó¾­ÑéµÄ¹«¹²º¯Êý
Include("\\script\\lib\\pay.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
    
	dofile("script/item/tianshanxuelian.lua")
	dofile("script/global/g7vn/g7configall.lua")

if GetTask(5969)<2 then

Say("Thiªn S¬n TuyÕt Liªn chØ dµnh cho nh÷ng Nh©n vËt ®· c¶i l·o 2 trë lªn")
return 1
end

	if GetTask(5969)==2 and GetLevel() < 200 then 
			local nCureLevel = GetLevel()
		local nAddLevel = 200 - nCureLevel
		ST_LevelUp(nAddLevel)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Thiªn S¬n TuyÕt Liªn<color> lªn ngay lv 200 + c¶i l·o 2")
	WriteLogPro("dulieu/log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Thien Son\n");
	return 0
	else
		Say("B¹n kh«ng ®ñ ®iÒu kiÖn ®Ó sö dông, xin kiÓm tra l¹i")
			return 1;
			end
			
			end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
