ROLENAMEQUERY_FREE		= 0		-- ¸Ã½ÇÉ«ÃûÎ´±»Ê¹ÓÃ
ROLENAMEQUERY_INVALID	= 1		-- ¸Ã½ÇÉ«Ãû·Ç·¨
ROLENAMEQUERY_USED		= 2		-- ¸Ã½ÇÉ«ÃûÒÑ±»Ê¹ÓÃ
                                -- 
ROLENAMECHANGE_SUCCESS	= 0		-- ¸üÃû³É¹¦
ROLENAMECHANGE_FAILURE	= 1		-- ¸üÃûÊ§°Ü
ROLENAMECHANGE_INVALID	= 2		-- ¸Ã½ÇÉ«Ãû·Ç·¨
ROLENAMECHANGE_USED		= 3		-- ¸Ã½ÇÉ«ÃûÒÑ±»Ê¹ÓÃ
ROLENAMECHANGE_ONLINE	= 4		-- ¸Ã½ÇÉ«ÔÚÏß

IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\global\\g7vn\\g7libgm.lua")

function SaveRename(nVar)
	local szFile = "\\dulieu\\bandbygm.dat"
	local szAccount = GetAccount();
	server_setdata(szFile,"ACCOUNT_RENAME",szAccount,nVar);
	server_savedata(szFile);
end

function QueryNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMEQUERY_FREE) then
		SaveRename(newname)
		msg = msg .. " tªn nh©n vËt nµy ch­a bÞ sö dông"
	elseif (result == ROLENAMEQUERY_USED) then
		msg = msg .. " tªn nh©n vËt nµy ®· cã ng­êi sö dông"
	else
		msg = msg .. " tªn nh©n vËt nµy v« hiÖu, kh«ng thÓ sö dông"
	end
	Talk(1, "", msg)
end

function ChangeNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMECHANGE_FAILURE) then
		msg = msg .. " tªn nh©n vËt nµy kh«ng thÓ sö dông"
	elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then
		msg = msg .. " tªn nh©n vËt nµy ®· cã ng­êi sö dông"
	else
		msg = msg .. " tªn nh©n vËt nµy v« hiÖu, kh«ng thÓ sö dông"
	end
	Talk(1, "", msg)
end
