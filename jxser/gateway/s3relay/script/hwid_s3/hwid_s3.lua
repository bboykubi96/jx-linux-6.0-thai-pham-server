Include("\\script\\lib\\remoteexc.lua")
hwid_s3 = {}
function hwid_s3:Add_Count(nHwid)
hwid_s3[nHwid] = hwid_s3[nHwid] + 1
end

function hwid_s3:Remove_Count(nName)
if ( hwid_s3[hwid_s3[nName]] == nil or hwid_s3[hwid_s3[nName]] == "" ) then
return
end
hwid_s3[hwid_s3[nName]] = hwid_s3[hwid_s3[nName]] - 1
end

function hwid_s3:Check_Count(nHwid,nName)
hwid_s3[nHwid] = hwid_s3[nHwid] or 0
hwid_s3[nName] = nHwid or 0
hwid_s3:Add_Count(nHwid)
if ( hwid_s3[nHwid] > 8 ) then
RemoteExc("\\script\\fwcloud\\hwid_limit\\hwid_head.lua", "fwcloud_HWID:KickLogin", {nName})
return
end


end