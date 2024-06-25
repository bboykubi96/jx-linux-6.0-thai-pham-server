

function vietguardslua_autoinfo(autovlbs,kid,kimyen,autopk,login)
--	if (kimyen ~= 0) and (kimyen ~= 3) then
--		logplayer("dulieu/autorack/KY.log",format("Thêi gian : %s  - Tµi kho¶n [ %s ] - Nh©n vËt : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - kick by %d",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount"), kimyen))
--		GetInfo("kick")	
--	end;

	if  (autopk ~= 0) then
		logplayer("dulieu/autorack/vlpk12.log",format("Thêi gian : %s  - Tµi kho¶n [ %s ] - Nh©n vËt : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s]",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		GetInfo("kick")	
	end;

	if  (login ~= 0) then
		logplayer("dulieu/autorack/login.log",format("Thêi gian : %s  - Tµi kho¶n [ %s ] - Nh©n vËt : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - kick by [%d]",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount"),login))
		GetInfo("kick")	
	end;
end


function vietguardslua_updateinfo(hwid,ip,iplan,acc)
	if (GetInfo("hwidcount") == 0) or (GetInfo("iplan") == 0) or (GetInfo("acc") == 0) or (GetInfo("ipcount") == 0) then
		logplayer("dulieu/check_login_acc/check_login_"..date("%d_%m_%Y")..".log",format("TG : %s  - ID [ %s ] - NV : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - PhÇn Cøng PC HoÆc PhÇn MÒm Can ThiÖp",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		--GetInfo("thongbao","Kh«ng §Þnh D¹ng §­îc PhÇn Cøng PC HoÆc Sö Dông PhÇn MÒm Can ThiÖp Game,HÖ Thèng Tù §éng Kick,Xin Liªn HÖ Admin Qua Fanpage")
		GetInfo("kick")	
		return
	end;	

	if ( GetInfo("hwidcount") > 6) or ( GetInfo("acc") > 7 ) or (GetInfo("ipcount") > 24) then
		logplayer("dulieu/check_login_acc/check_login_"..date("%d_%m_%Y")..".log",format("TG : %s  - ID [ %s ] - NV : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - §¨ng NhËp V­ît Qu¸ Sè Acc",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		--GetInfo("thongbao","B¹n §· §¨ng NhËp V­ît Qu¸ Sè Acc Cho PhÐp lµ 4ACC-PC,HÖ Thèng Tù §éng Kick")
		GetInfo("kick")	
		return
	end
	logplayer("dulieu/login/loghwid_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Thêi Gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ]  - %s %s %s %d",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),hwid,ip,iplan,acc))
end


function vietguardslua_chatmat(noidung)

logplayer("dulieu/loghwid_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n :  [ %s] - Nh©n vËt : [%s ]  - Néi dung :  %s",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),noidung))
return 1

end

function vietguardslua_doimau(thoigian)

	return 1
end



function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end


