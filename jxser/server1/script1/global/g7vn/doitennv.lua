IncludeLib("SETTING");
Include("\\script\\lib\\pay.lua");
-- Include("\\script\\misc\\rename\\rename_func.lua")
Include("\\script\\global\\rename_head.lua")

TSK_Rename_Role = 4020
TSKV_ReName_UseLimit	=  7 * 60 * 24 * 60	 --Th�i gian ��i t�n nh�n v�t sau 7 ng�y

function doitennv()
local nCurTime			= GetCurServerTime()
local nTSKVTime_ReName	= GetTask(TSK_Rename_Role);
local szMsg_RN  		= nil;

	if nTSKVTime_ReName + TSKV_ReName_UseLimit >= nCurTime then
			
		local nTime = (nTSKVTime_ReName + TSKV_ReName_UseLimit - nCurTime);
		local nDay	= floor(nTime  / (24*60*60) );
			  nTime	= mod( nTime, 24*60*60);
		local nHour	= floor( nTime / (60*60) );
			  nTime	= mod(nTime, 60*60);
		local nMin	= floor(nTime / 60 );
		local nSec	= mod(nTime, 60);
			
		szMsg_RN = format("<color=yellow>%d ng�y %d gi� %d ph�t %d gi�y<color>",nDay,nHour,nMin,nSec);
	end
	local szTitle;
	local tbOpt;
	if szMsg_RN ~= nil then
		szTitle	= format("Xin ch�o <color=yellow>%s<color>, trong th�i gian 7 ng�y ch� ���c ��i t�n m�t l�n duy nh�t, ��i hi�p ��i th�m %s r�i h�y th� l�i.",GetName(),szMsg_RN)
		tbOpt = 
		{
			"X�c nh�n/OnCancel"
		}
	else
		szTitle	= format("Xin ch�o ��i hi�p <color=yellow>%s<color>, ��i hi�p mu�n ��i t�n �? L�u � khi ��i t�n ch� ch�p nh�n k� t� <color=red>S� v� Ch�<color> c� d�u v� kh�ng d�u.C� th� s� d�ng kho�ng tr�ng theo ph�m t�t <color=red>ALT + 0217<color>.Ngo�i ra ko ch�p nh�n b�t c� k� t� n�o.Ph� ��i t�n 1 l�n <color=green> <50 Ti�n ��ng Kh�ng Kh�a><color>.",GetName())
		tbOpt = 
		{
			format("X�c nh�n/change_rolename"),
			"H�y b� /OnCancel"
		}
	end
	Say(szTitle, getn(tbOpt), tbOpt);
	return 1;


end
function OnCancel()
	
end


function change_rolename()
	Say("<#> C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		3,
		"<#> T�m hi�u t�n nh�n v�t c�n s� d�ng ���c kh�ng/query_rolename",
		"<#> B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"<#> �� ta suy ngh� l�i/cancel")
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end

function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	else
	local nCount_tiendoiten = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount_tiendoiten >= 50)  then
	AskClientForString("on_change_rolename", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t m�i v�o");
	else
		Say("<#> Thay ��i t�n nh�n v�t c�n c� <color=yellow>50 Ti�n ��ng (Kh�ng Kh�a)<color>, c� �� ti�n r�i ��n nh�!", 0)
	end
end
end
function on_change_rolename(new_name)
	
		if (GetName() == new_name) then
			Talk(1, "", "<#> B�n mu�n ��i t�n g�?")
		else  
			ConsumeEquiproomItem(50, 4, 417, 1, -1)
			RenameRole(new_name);
			Msg2SubWorld("<color=cyan>��i hi�p<color> <color=yellow>"..GetName().."<color> <color=cyan>ti�n h�nh <color> <color=yellow>��i T�n Nh�n V�t M�i<color> <color=cyan>th�nh c�ng.Qu� th�c l� m�t c�i t�n th�t ��p.<color>")	

		end
	end
