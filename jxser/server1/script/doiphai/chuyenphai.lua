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

	if (CheckGlobalTradeFlag() == 0) then		-- ȫ�־���ϵݳ���׿���
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
	tbDailog.szTitleMsg = "<dec><npc>�� tr�i nghi�m v� vui th�a v�i c�c m�n ph�i kh�c nhau,t�t c� nh�ng nh�n v�t c�p �� t� <color=cyan>Tr�ng Sinh 1 C�p 150<color> tr� l�n ��u c� c� h�i chuy�n ��i m�n ph�i v�i nhau ngay t�i th� gi�i <color=green>V� L�m Huy�n Tho�i<color>.C�c ��ng ��o t� do chuy�n m�n ph�i m�i l�c,m�i n�i.Y�u c�u giao n�p <color=cyan> 1 T�n V�t M�n Ph�i<color> m�i khi chuy�n ��i m�n ph�i m�i!!<color>"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
	"Giao n�p t�n v�t m�n ph�i/giaotinvat",	
	"Ta mu�n chuy�n ��i m�n ph�i kh�c/doi11phai",	
	
	}	
	
	--�ظ�����
	--tbDailog:AddOptEntry("���������ظ�����װ��", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--�����Ի���
	tbDailog:Show()
	

	
end


function giaotinvat()
	local bFlag = toushiCheckApplyState();
	
	--if (bFlag == TOUSHI_SUCCEED) then
		GiveItemUI("N�p l�n t�n v�t m�n ph�i", "�� t�n v�t m�n ph�i v�o ph�a d��i ch� tr�ng", "toushiApplyShowXinWu", "OnCancel", 1);
	--else
		--CreateTaskSay({TB_TOUSHI_ERR_MSG[bFlag], "K�t th�c ��i tho�i/OnCancel"});
	--end
	
end





function doi11phai()
		local tbSay = {}
		tinsert(tbSay,"Thi�n V��ng./oldentencetv")
		tinsert(tbSay,"Thi�u L�m./oldentencetl")
       	tinsert(tbSay,"���ng M�n./oldentencedm")
		tinsert(tbSay,"Ng� ��c./oldentencend")
		tinsert(tbSay,"Nga My./oldentencenm")
		tinsert(tbSay,"Th�y Y�n./oldentencety")
       	tinsert(tbSay,"C�i Bang./oldentencecb")
		tinsert(tbSay,"Thi�n Nh�n./oldentencetn")
		tinsert(tbSay,"V� �ang./oldentencevd")
		tinsert(tbSay,"C�n L�n./oldentencecl")
       --	tinsert(tbSay,"Hoa S�n./oldentencehs")
		tinsert(tbSay,"Tho�t/no")
		Say(" <color=red>��i hi�p c�n chuy�n ��i m�n ph�i n�o.Xin h�y l�a ch�n c�n th�n ? <color> ", getn(tbSay), tbSay)
end
function OnCancel() 

end 
