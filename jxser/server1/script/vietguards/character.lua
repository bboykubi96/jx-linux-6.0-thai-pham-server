

function vietguardslua_autoinfo(autovlbs,kid,kimyen,autopk,login)
--	if (kimyen ~= 0) and (kimyen ~= 3) then
--		logplayer("dulieu/autorack/KY.log",format("Th�i gian : %s  - T�i kho�n [ %s ] - Nh�n v�t : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - kick by %d",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount"), kimyen))
--		GetInfo("kick")	
--	end;

	if  (autopk ~= 0) then
		logplayer("dulieu/autorack/vlpk12.log",format("Th�i gian : %s  - T�i kho�n [ %s ] - Nh�n v�t : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s]",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		GetInfo("kick")	
	end;

	if  (login ~= 0) then
		logplayer("dulieu/autorack/login.log",format("Th�i gian : %s  - T�i kho�n [ %s ] - Nh�n v�t : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - kick by [%d]",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount"),login))
		GetInfo("kick")	
	end;
end


function vietguardslua_updateinfo(hwid,ip,iplan,acc)
	if (GetInfo("hwidcount") == 0) or (GetInfo("iplan") == 0) or (GetInfo("acc") == 0) or (GetInfo("ipcount") == 0) then
		logplayer("dulieu/check_login_acc/check_login_"..date("%d_%m_%Y")..".log",format("TG : %s  - ID [ %s ] - NV : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - Ph�n C�ng PC Ho�c Ph�n M�m Can Thi�p",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		--GetInfo("thongbao","Kh�ng ��nh D�ng ���c Ph�n C�ng PC Ho�c S� D�ng Ph�n M�m Can Thi�p Game,H� Th�ng T� ��ng Kick,Xin Li�n H� Admin Qua Fanpage")
		GetInfo("kick")	
		return
	end;	

	if ( GetInfo("hwidcount") > 6) or ( GetInfo("acc") > 7 ) or (GetInfo("ipcount") > 24) then
		logplayer("dulieu/check_login_acc/check_login_"..date("%d_%m_%Y")..".log",format("TG : %s  - ID [ %s ] - NV : [ %s ] - hwidcount : [%s] - acc : [%s] - iplan : [%s]- ipcount : [%s] - ��ng Nh�p V��t Qu� S� Acc",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(), GetInfo("hwidcount"), GetInfo("acc"), GetInfo("iplan"), GetInfo("ipcount")))
		--GetInfo("thongbao","B�n �� ��ng Nh�p V��t Qu� S� Acc Cho Ph�p l� 4ACC-PC,H� Th�ng T� ��ng Kick")
		GetInfo("kick")	
		return
	end
	logplayer("dulieu/login/loghwid_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Th�i Gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ]  - %s %s %s %d",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),hwid,ip,iplan,acc))
end


function vietguardslua_chatmat(noidung)

logplayer("dulieu/loghwid_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n :  [ %s] - Nh�n v�t : [%s ]  - N�i dung :  %s",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),noidung))
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


