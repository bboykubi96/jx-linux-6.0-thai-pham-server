--AntiGames by KN--------------------
IncludeLib("TIMER")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
pPlayerHandle = {}
PASS = "quycan12";
--PASS = "danhhieu";

function pPlayerHandle:ProcessProtocol(szName,szPassword)
	print(format("Server da nhan duoc thong tin tu nhan vat: %s", szName) )
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end
	if szPassword ~= PASS then
		print(format("Nhan vat %s co y pha hoai server", szName) )
		--WriteLogPro("dulieu/Game_phaserver.txt",""..szName.."\t"..GetAccount().."\n");
		thongbaodis()
		return
	end

	CallPlayerFunction(nPlayerIndex, self.StopTimerScript, self); -- tat script
end
function pPlayerHandle:StopTimerScript()
	TM_StopTimer(116)
end
function OnTimer()
	local nPlayerIndex = SearchPlayer(szName)
	print(format("Nhan vat %s co y dung game khac pha hoai server", GetName()) )
	--WriteLogPro("dulieu/Game_phaserver.txt",""..GetName().."\t"..GetAccount().."\n");
	OfflineLive(PlayerIndex); 
	KickOutSelf()	
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function thongbaodis()
--Say("<color=yellow>Xem Th«ng B¸o VÒ ViÖc Gäp Server T¹i FanPage FaceBook Game.<enter><color=cyan>§· Gäp Server Anh Em Vui Lßng Vµo Web<color=red> ctcfree.com <color=cyan>®Ó ®¨ng ký vµ t¶i game.hoÆc xem th«ng b¸o vÒ viÖc di chuyÓn xu qua server míi t¹i fanpage game.", 0)

Say("<color=green>Vui Lßng Tho¸t HÕt Cña Sæ Game §ang Treo<enter><enter>Ch¹y File CËp NhËt míi v« game ®­îc<enter><enter>Ch¹y File AUTOUPDATE míi v« game ®­îc", 0)
end
