IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")


function vietguardslua_autoinfo(autovlbs,kid,kimyen,autopk)
if autovlbs == 1 then
logplayer("dulieu/log_auto/s6ctc_auto_"..date("%d_%m_%Y").."MM.txt",format("%s-IP: %s\t%s\t%s\t%s - autovlbs = 1 [ VLBS ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetIP(),GetAccount(),GetName(),GetLevel()));	
end
if kid == 1 then
logplayer("dulieu/log_auto/s6ctc_auto_"..date("%d_%m_%Y").."MM.txt",format("%s-IP: %s\t%s\t%s\t%s - kid = 1 [ KID ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetIP(),GetAccount(),GetName(),GetLevel()));	
end
if kimyen == 1 then
logplayer("dulieu/log_auto/s6ctc_auto_"..date("%d_%m_%Y").."MM.txt",format("%s-IP: %s\t%s\t%s\t%s - kimyen = 1 [ KY GËC ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetIP(),GetAccount(),GetName(),GetLevel()));	
end
if kimyen == 2 then
logplayer("dulieu/log_auto/s6ctc_auto_"..date("%d_%m_%Y").."MM.txt",format("%s-IP: %s\t%s\t%s\t%s - kimyen = 2 [ KY CRACK ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetIP(),GetAccount(),GetName(),GetLevel()));	
end
if autopk == 1 then
logplayer("dulieu/log_auto/s6ctc_auto_"..date("%d_%m_%Y").."MM.txt",format("%s-IP: %s\t%s\t%s\t%s - autopk = 1 [ VLPK ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetIP(),GetAccount(),GetName(),GetLevel()));	
end
end



function vietguardslua_updateinfo(hwid,ip,iplan,acc)
end


function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end


