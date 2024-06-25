Include("\\script\\lib\\remoteexc.lua")

fwcloud_HWID = {}

function fwcloud_HWID:SendHwid()
			local str4 = split(GetInfo(),"-")[4]
			local str5 = split(GetInfo(),"-")[5]
			local str6 = split(GetInfo(),"-")[6]
			local str7 = split(GetInfo(),"-")[7]
			local hwid = str4..str5..str6..str7 
RemoteExc("\\script\\hwid_s3\\hwid_s3.lua", "hwid_s3:Check_Count", {hwid,GetName()})
end

function fwcloud_HWID:AddCount()

			local str4 = split(GetInfo(),"-")[4]
			local str5 = split(GetInfo(),"-")[5]
			local str6 = split(GetInfo(),"-")[6]
			local str7 = split(GetInfo(),"-")[7]
			-- local hwid = str4..str5..str6..str7 
			local hwid = GetInfo()
			fwcloud_HWID[hwid] = fwcloud_HWID[hwid] + 1
end

function fwcloud_HWID:RemoveCount()

			local str4 = split(GetInfo(),"-")[4]
			local str5 = split(GetInfo(),"-")[5]
			local str6 = split(GetInfo(),"-")[6]
			local str7 = split(GetInfo(),"-")[7]
			-- local hwid = str4..str5..str6..str7 
			local hwid = GetInfo()
			fwcloud_HWID[hwid] = fwcloud_HWID[hwid] - 1
			
end

function fwcloud_HWID:CheckCount()

			local str4 = split(GetInfo(),"-")[4]
			local str5 = split(GetInfo(),"-")[5]
			local str6 = split(GetInfo(),"-")[6]
			local str7 = split(GetInfo(),"-")[7]
			-- local hwid = str4..str5..str6..str7 
			local hwid = GetInfo()
			fwcloud_HWID[hwid] = fwcloud_HWID[hwid] or 0
			return fwcloud_HWID[hwid] 
end

function fwcloud_HWID:AntiLogin()
local nCount = fwcloud_HWID:CheckCount()
print(nCount)
if ( nCount > 2 ) then
fwcloud_HWID:KickOff()
print("kick out")
else
fwcloud_HWID:AddCount()
end
end

function fwcloud_HWID:KickLogin(szName)
-- print("kick acc - ".. szName)
local idPlayer = SearchPlayer(szName)
doFunByPlayer(idPlayer, Kick_Login)
-- OfflineLive(idPlayer); 
-- KickOutSelf()
-- return
end

function doFunByPlayer(nPlayerIndex, fun, ...)	
	local nOldPlayer = PlayerIndex;
	PlayerIndex = nPlayerIndex
	local re = call(fun, arg);
	PlayerIndex = nOldPlayer;
	return re
end

function Kick_Login()
OfflineLive(PlayerIndex); 
KickOutSelf()
return
end
---/script/fwcloud/hwid_limit/hwid_head.lua