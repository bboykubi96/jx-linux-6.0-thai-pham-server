IncludeLib("SETTING")

Include( "\\script\\task\\system\\task_string.lua" );


Include("\\script\\activitysys\\npcdailog.lua")

Include("\\script\\misc\\daiyitoushi\\toushi_head.lua");
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua");
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua");
Include("\\script\\lib\\gb_modulefuncs.lua");
Include("\\script\\global\\skills_table.lua")

--Include("\\script\\doiphai\\monphai\\hoason.lua")
Include("\\script\\doiphai\\monphai\\thienvuong.lua")
Include("\\script\\doiphai\\monphai\\thieulam.lua")
Include("\\script\\doiphai\\monphai\\duongmon.lua")
Include("\\script\\doiphai\\monphai\\ngudoc.lua")
Include("\\script\\doiphai\\monphai\\ngamy.lua")
Include("\\script\\doiphai\\monphai\\thuyyen.lua")
Include("\\script\\doiphai\\monphai\\caibang.lua")
Include("\\script\\doiphai\\monphai\\thiennhan.lua")
Include("\\script\\doiphai\\monphai\\vodang.lua")
Include("\\script\\doiphai\\monphai\\conlon.lua")



function main()
	--dofile("script/doiphai/chuyenphai.lua")
	--do Say("Chuc nang dang tam dong! Quay lai sau") return end

	if (CheckGlobalTradeFlag() == 0) then		-- È«¾Ö¾­¼·ÏµÝ³½»Ò×¿ª¹Ø
		return
	end
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<dec><npc>§Ó tr¶i nghiÖm vµ vui tháa víi c¸c m«n ph¸i kh¸c nhau,tÊt c¶ nh÷ng nh©n vËt cÊp ®é tõ <color=cyan>Trïng Sinh 1 CÊp 150<color> trë lªn ®Òu cã c¬ héi chuyÓn ®æi m«n ph¸i víi nhau ngay t¹i thÕ giíi <color=green>Vâ L©m HuyÒn Tho¹i<color>.C¸c ®ång ®¹o tù do chuyÓn m«n ph¸i mäi lóc,mäi n¬i.Yªu cÇu giao nép <color=cyan> 1 TÝn VËt M«n Ph¸i<color> mçi khi chuyÓn ®æi m«n ph¸i míi!!<color>"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
	"Giao nép tÝn vËt m«n ph¸i/giaotinvat",	
	"Ta muèn chuyÓn ®æi m«n ph¸i kh¸c/doi11phai",	
	
	}	
	
	--ÖØ¸·×Ïòþ
	--tbDailog:AddOptEntry("ÎÒÏëÇëÈËÖØ¸·×Ïòþ×°±¸", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--µ¯³ö¶Ô»°¿ò
	tbDailog:Show()
	

	
end


function giaotinvat()
	local bFlag = toushiCheckApplyState();
	
	--if (bFlag == TOUSHI_SUCCEED) then
		GiveItemUI("Nép lªn tÝn vËt m«n ph¸i", "§Ó tÝn vËt m«n ph¸i vµo phÝa d­íi chç trèng", "toushiApplyShowXinWu", "OnCancel", 1);
	--else
		--CreateTaskSay({TB_TOUSHI_ERR_MSG[bFlag], "KÕt thóc ®èi tho¹i/OnCancel"});
	--end
	
end





function doi11phai()
		local tbSay = {}
		tinsert(tbSay,"Thiªn V­¬ng./oldentencetv")
		tinsert(tbSay,"ThiÕu L©m./oldentencetl")
       	tinsert(tbSay,"§­êng M«n./oldentencedm")
		tinsert(tbSay,"Ngò §éc./oldentencend")
		tinsert(tbSay,"Nga My./oldentencenm")
		tinsert(tbSay,"Thóy Yªn./oldentencety")
       	tinsert(tbSay,"C¸i Bang./oldentencecb")
		tinsert(tbSay,"Thiªn NhÉn./oldentencetn")
		tinsert(tbSay,"Vâ §ang./oldentencevd")
		tinsert(tbSay,"C«n L«n./oldentencecl")
       --	tinsert(tbSay,"Hoa S¬n./oldentencehs")
		tinsert(tbSay,"Tho¸t/no")
		Say(" <color=red>§¹i hiÖp cÇn chuyÓn ®æi m«n ph¸i nµo.Xin h·y lùa chän cÈn thËn ? <color> ", getn(tbSay), tbSay)
end
function OnCancel() 

end 
