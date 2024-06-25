IncludeLib("SETTING");
Include("\\script\\lib\\pay.lua");
-- Include("\\script\\misc\\rename\\rename_func.lua")
Include("\\script\\global\\rename_head.lua")

TSK_Rename_Role = 4020
TSKV_ReName_UseLimit	=  7 * 60 * 24 * 60	 --Thêi gian ®æi tªn nh©n vËt sau 7 ngµy

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
			
		szMsg_RN = format("<color=yellow>%d ngµy %d giê %d phót %d gi©y<color>",nDay,nHour,nMin,nSec);
	end
	local szTitle;
	local tbOpt;
	if szMsg_RN ~= nil then
		szTitle	= format("Xin chµo <color=yellow>%s<color>, trong thêi gian 7 ngµy chØ ®­îc ®æi tªn mét lÇn duy nhÊt, ®¹i hiÖp ®îi thªm %s råi h·y thö l¹i.",GetName(),szMsg_RN)
		tbOpt = 
		{
			"X¸c nhËn/OnCancel"
		}
	else
		szTitle	= format("Xin chµo ®¹i hiÖp <color=yellow>%s<color>, ®¹i hiÖp muèn ®æi tªn ­? L­u ı khi ®æi tªn chØ chÊp nhËn kİ tù <color=red>Sè vµ Ch÷<color> cã dÊu vµ kh«ng dÊu.Cã thÓ s÷ dông kho¶ng trèng theo phİm t¾t <color=red>ALT + 0217<color>.Ngoµi ra ko chÊp nhËn bÊt cø k× tù nµo.Phİ ®æi tªn 1 lÇn <color=green> <50 TiÒn §ång Kh«ng Khãa><color>.",GetName())
		tbOpt = 
		{
			format("X¸c nhËn/change_rolename"),
			"Hñy bá /OnCancel"
		}
	end
	Say(szTitle, getn(tbOpt), tbOpt);
	return 1;


end
function OnCancel()
	
end


function change_rolename()
	Say("<#> C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		3,
		"<#> T×m hiÓu tªn nh©n vËt cßn sö dông ®­îc kh«ng/query_rolename",
		"<#> B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"<#> §Ó ta suy nghÜ l¹i/cancel")
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end

function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	else
	local nCount_tiendoiten = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount_tiendoiten >= 50)  then
	AskClientForString("on_change_rolename", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt míi vµo");
	else
		Say("<#> Thay ®æi tªn nh©n vËt cÇn cã <color=yellow>50 TiÒn §ång (Kh«ng Khãa)<color>, cã ®ñ tiÒn råi ®Õn nhĞ!", 0)
	end
end
end
function on_change_rolename(new_name)
	
		if (GetName() == new_name) then
			Talk(1, "", "<#> B¹n muèn ®æi tªn g×?")
		else  
			ConsumeEquiproomItem(50, 4, 417, 1, -1)
			RenameRole(new_name);
			Msg2SubWorld("<color=cyan>§¹i hiÖp<color> <color=yellow>"..GetName().."<color> <color=cyan>tiÕn hµnh <color> <color=yellow>§æi Tªn Nh©n VËt Míi<color> <color=cyan>thµnh c«ng.Qu¶ thùc lµ mét c¸i tªn thËt ®Ñp.<color>")	

		end
	end
