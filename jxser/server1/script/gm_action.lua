function KickOut()
KickOutSelf()
print("OK")
end
Include("\\script\\lib\\string.lua")
function BlockIP()
local tbOwnIP = split(GetIP()," ")
local szStr = tbOwnIP[1]
execute(format("csf -d %s",tostring(szStr)))
end

function BanChat()
SetChatFlag(1)
Msg2Player("<color=green>B�n b� GM c�m chat. Vui l�ng li�n h� v�i h� tr� tr�n fanpage �� bi�t th�m chi ti�t. Ch�c b�n ch�i game vui v�.")
-- KickOutSelf()
end

function OpenChat()
SetChatFlag(0);
Msg2Player("<color=green>B�n ���c GM m� kh�a chat. Vui l�ng kh�ng t�i ph�m n�u kh�ng mu�n b� c�m chat v�nh vi�n. C�m �n ch�c b�n ch�i game vui v�.")
KickOutSelf()
-- SetAutoHangMapFlag(0)
end

function MoveToBaLangXin()-- giai ket
NewWorld(53,1600,3200)
end

function BlockHWID()
DynamicExecute("\\script\\global\\check_client.lua","InsertHWID",GetName())
OfflineLive(PlayerIndex); 
KickOutSelf()
end