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
--Say("<color=yellow>Xem Th�ng B�o V� Vi�c G�p Server T�i FanPage FaceBook Game.<enter><color=cyan>�� G�p Server Anh Em Vui L�ng V�o Web<color=red> ctcfree.com <color=cyan>�� ��ng k� v� t�i game.ho�c xem th�ng b�o v� vi�c di chuy�n xu qua server m�i t�i fanpage game.", 0)

Say("<color=green>Vui L�ng Tho�t H�t C�a S� Game �ang Treo<enter><enter>Ch�y File C�p Nh�t m�i v� game ���c<enter><enter>Ch�y File AUTOUPDATE m�i v� game ���c", 0)
end
