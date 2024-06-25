ROLENAMEQUERY_FREE		= 0		-- �ý�ɫ��δ��ʹ��
ROLENAMEQUERY_INVALID	= 1		-- �ý�ɫ���Ƿ�
ROLENAMEQUERY_USED		= 2		-- �ý�ɫ���ѱ�ʹ��
                                -- 
ROLENAMECHANGE_SUCCESS	= 0		-- �����ɹ�
ROLENAMECHANGE_FAILURE	= 1		-- ����ʧ��
ROLENAMECHANGE_INVALID	= 2		-- �ý�ɫ���Ƿ�
ROLENAMECHANGE_USED		= 3		-- �ý�ɫ���ѱ�ʹ��
ROLENAMECHANGE_ONLINE	= 4		-- �ý�ɫ����

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
		msg = msg .. " t�n nh�n v�t n�y ch�a b� s� d�ng"
	elseif (result == ROLENAMEQUERY_USED) then
		msg = msg .. " t�n nh�n v�t n�y �� c� ng��i s� d�ng"
	else
		msg = msg .. " t�n nh�n v�t n�y v� hi�u, kh�ng th� s� d�ng"
	end
	Talk(1, "", msg)
end

function ChangeNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMECHANGE_FAILURE) then
		msg = msg .. " t�n nh�n v�t n�y kh�ng th� s� d�ng"
	elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then
		msg = msg .. " t�n nh�n v�t n�y �� c� ng��i s� d�ng"
	else
		msg = msg .. " t�n nh�n v�t n�y v� hi�u, kh�ng th� s� d�ng"
	end
	Talk(1, "", msg)
end
