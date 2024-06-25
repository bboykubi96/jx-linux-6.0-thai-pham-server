Include("\\script\\tong\\tong_header.lua");
IncludeLib("TONG")

function vietguardslua_vaobang(nx)
	local _, nTongID = GetTongName()
	local nCount = TONG_GetMemberCount(nTongID,0) + TONG_GetMemberCount(nTongID,1) + TONG_GetMemberCount(nTongID,2) + TONG_GetMemberCount(nTongID,3) + TONG_GetMemberCount(nTongID,4)
	local nLimit = 500
	if nCount < nLimit then
		logplayer("dulieu/tong/TongJoin_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Thêi gian : %s  - 	Tµi kho¶n [ %s] - 	Nh©n vËt : [%s ]  	- nx [%s] TongCount: %s",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nx,GetTongMemberCount()))
		return 1
	else
		Msg2Player("Sè l­îng thµnh viªn trong bang héi ®· ®¹t tíi "..nLimit.." ng­êi, nªn kh«ng thÓ chiªu mé thªm")
		logplayer("dulieu/tong/TongJoin_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Thêi gian : %s  - 	Tµi kho¶n [ %s] - 	Nh©n vËt : [%s ]  	- nx [%s] TongCount: %s",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nx,GetTongMemberCount()))
		return 0
	end
	
end

function vietguardslua_guiruttien(nUserID, nMoney)
	TONG_ApplyAddMoney(nTongID, nMoney)
	logplayer("dulieu/tong/TongMoney_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Thêi gian : %s  - 	Tµi kho¶n [ %s] - 	Nh©n vËt : [%s ]  	- nUserID [%s]-	nMoney [%s]",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nUserID,nMoney))
end



function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end