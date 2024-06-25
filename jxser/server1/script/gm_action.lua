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
Msg2Player("<color=green>B¹n bÞ GM cÊm chat. Vui lßng liªn hÖ víi hç trî trªn fanpage ®Ó biÕt thªm chi tiÕt. Chóc b¹n ch¬i game vui vÎ.")
-- KickOutSelf()
end

function OpenChat()
SetChatFlag(0);
Msg2Player("<color=green>B¹n ®­îc GM më khãa chat. Vui lßng kh«ng t¸i ph¹m nÕu kh«ng muèn bÞ cÊm chat vÜnh viÔn. C¶m ¬n chóc b¹n ch¬i game vui vÎ.")
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