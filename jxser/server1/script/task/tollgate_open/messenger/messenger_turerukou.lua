-------------------------------------------------------------------------
-- FileName		:	messenger_turerukou.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-08-31 22:21:14
-- Desc			:   ǧ�������
-------------------------------------------------------------------------

Include("\\script\\task\\tollgate\\killbosshead.lua") --������ͼ�����
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") --��������������ݱ�����
Include("\\script\\event\\birthday_jieri\\200905\\message\\message.lua");

Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")--�����乤�ߺ���

Include("\\script\\lib\\common.lua");

Include("\\script\\activitysys\\functionlib.lua")--����lib:DoFunByPlayer

function main()
	local tbDialog =
	{
		  "Ti�p nh�n nhi�m v� /ture_gettask", 
                  "B�t ��u nhi�m v� /ture_try_starttask", 
                  "Ti�p t�c nhi�m v� /ture_continuetask", 
                  "R�i �i khu v�c /ture_movecity", 
                  "Sau n�y tr� l�i /no",
	}
--	if (tbBirthday0905:IsActDate() == 1) then
--		tinsert(tbDialog, 3, "��ǧ�����ͼ������/birthday0905_ture");
--	end
	 Describe(DescLink_YiGuan..": T� ta ��y b�t ��u cho m�i ng��i ph�n c�ng c� th� nhi�m v�, c� g�ng l�n nga. T� ��i tr��ng b�t ��u nhi�m v� h�p th�nh ��i �em d� d�ng h�n ho�n th�nh nhi�m v�. B�y gi� ng��i ngh� l�m c�i g� ?",getn(tbDialog), unpack(tbDialog))
end

function ture_gettask()
	local Uworld1204 = nt_getTask(1204)  --�Ǣ���ҵ����������ÿ���������ʱ���
	local Uworld1028 = nt_getTask(1028)  --�������������
--
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": Th�t xin l�i, ng�i tr��c m�t c�p b�c kh�ng c� ��t t�i 120 c�p y�u c�u. Xin m�i ��t t�i c�p b�c t�i t�m ta n�a �i.",1,"K�t th�c ��i tho�i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..": Th�t xin l�i, ng�i tr��c m�t nhi�m v� t�n s� kh�ng ho�n th�nh, kh�ng th� nh�n gi�ng nhau nhi�m v�, xin m�i ho�n th�nh nhi�m v� tr��c, c�m �n.",1,"K�t th�c ��i tho�i/no")
	elseif (  messenger_givetime() == 10 ) then  --�鿴�����Ƿ��йؿ�ʱ��
		Describe(DescLink_YiGuan..": th�t xin l�i, ng�i h�m nay ng��i �� s� d�ng th�i gian t�n s� �� h�t, xin m�i ng�y mai tr� l�i.",1,"K�t th�c ��i tho�i/no")
	else	
                nt_setTask( 1204,1 )
		nt_setTask( 1203,10) --������ʹ����Ĳ���
	end
end

function ture_starttask()
	if ( nt_getTask(1203) == 10 ) then
		nt_setTask(1211,GetGameTime())              --:��������ʼʱ��
		nt_setTask(1203,20)
		DisabledUseTownP(1)			--���ûسǷ�				--1������	--0������
		SetFightState(1);			--��ս��״̬				--1����	--0���ر�
		SetLogoutRV(1);				--���ߺ�������Ϊһ��������		--1�����ߺ�����Ϊһ��������	--0�����ߺ�������Ϊһ��������
		SetPunish(0);				--�ر������ͷ�					--1���������ͷ�		--0��û�������ͷ�
		SetCreateTeam(1);			--�������					--1���������		--0�����������
		ForbidChangePK(1);   		--���ܸ���pk״̬		--1�����ܸ���pk״̬		--0:���Ը���pk״̬
		SetPKFlag(0);               --����Ϊ����ģʽ            
		SetDeathScript("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua");
		SetPos(1414,3191);
		Msg2Player("Nhi�m v� b�t ��u t�nh gi�.")
	elseif ( nt_getTask(1203) == 20 ) then
		Describe(DescLink_YiGuan.."Ng��i �� b�t ��u nhi�m v�, kh�ng c�n b�t ��u n�a",1,"K�t th�c ��i tho�i/no")
	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		Describe(DescLink_YiGuan.."Ng��i �� ho�n th�nh nhi�m v�, th� n�o c�n ph�i b�t ��u nhi�m v� ��y ? mau r�i �i �i ",1,"K�t th�c ��i tho�i/no")
	elseif ( nt_getTask(1203) == 0 ) then
		Describe(DescLink_YiGuan.."Ng��i nhi�m v� t�n s� �� th�t b�i, xin mau r�i kh�i ��y.",1,"K�t th�c ��i tho�i/no")
	end
end

function ture_try_starttask()
	if ( nt_getTask(1203) == 10 ) then
		--�Լ���ʼ����
		local nTeamSize = GetTeamSize();
		if nTeamSize > 1 and IsCaptain() ~= 1 then
			Describe(DescLink_YiGuan..": Ng��i kh�ng ph�i l� ��i tr��ng, kh�ng th� b�t ��u nhi�m v� ",1,"K�t th�c ��i tho�i/no")
			return
		end
		
		local nTaskCode,_ = %get_task_order()
		ture_real_starttask_one(nTaskCode);
		
    	if (nTeamSize > 1) then
    		--���ж�Ա��ʼ����
    		for i=1,nTeamSize do
    			local nMemberIndex = GetTeamMember(i)
    			print(format("nMemberIndex:%d", nMemberIndex))
    			if nMemberIndex >= 0 then
    			
--    			if(CallPlayerFunction(nMemberIndex, IsCaptain)~=1)then
--    				CallPlayerFunction(nMemberIndex, ture_real_starttask_member, nTaskCode)
--    			end
        			if(lib:DoFunByPlayer(nMemberIndex, IsCaptain)~=1)then
    					lib:DoFunByPlayer(nMemberIndex, ture_real_starttask_member, nTaskCode);
    				end
    			else
    				print(format("nMemberIndex:%d error", nMemberIndex))
				end
    		end
    	end
    	
    	WriteLog(format("Account:%s[Name:%s] B�t ��u nhi�m v� t�n s�, h�p th�nh ��i nh�n s� v� [%d]",
			GetAccount(),
			GetName(),
			nTeamSize
			)
		);
	elseif ( nt_getTask(1203) == 20 or nt_getTask(1203) == 21 ) then
		Describe(DescLink_YiGuan..": Ng��i �� m� m�i nhi�m v�, kh�ng c�n n�a b�t ��u.",1,"K�t th�c ��i tho�i/no")
	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		Describe(DescLink_YiGuan..": Nhi�m v� �� ho�n th�nh, th� n�o c�n c�n b�t ��u ��y ? nhanh l�n m�t ch�t r�i �i n�i n�y �i.",1,"K�t th�c ��i tho�i/no")
	elseif ( nt_getTask(1203) == 0 ) then
		Describe(DescLink_YiGuan..": Ng��i �� ho�n th�nh nhi�m v� t�n s�, nhanh l�n m�t ch�t r�i �i n�i n�y �i!",1,"K�t th�c ��i tho�i/no")
	end
end

function ture_real_starttask_one(nTaskCode)
	nt_setTask(1202,0)--��յ�ǰ�������
	ture_real_starttask(nTaskCode)
	
	local szMsg,nCount = get_task_string(nTaskCode)
	szMsg = format("Ng��i b�t ��u ng�y b�o kho ��a tin nhi�m v�, mau n�m l�y th�i c� m� ra 5 c� b�o r��ng ho�n th�nh nhi�m v�, xin ch� � theo nh� tr�t t� m� ra<color=yellow>%s<color>", szMsg)
	Msg2Player(szMsg)
end

function ture_real_starttask_member(nTaskCode)
	local nMapId, nX, nY = GetWorldPos()
	if nMapId == 395 then
    	if ( nt_getTask(1203) == 10 ) then
    		nt_setTask(1202,0)--��յ�ǰ�������
    		ture_real_starttask(nTaskCode)
    		
    		local szMsg,nCount = get_task_string(nTaskCode)
    		szMsg = format("Ng��i ��i tr��ng �� m� m�i ng�y b�o kho ��a tin nhi�m v�, xin m�i n�m l�y th�i c� t�i ��t �� <color=yellow> ng�y b�o kho <color> m� ra 5 c� b�o r��ng ho�n th�nh nhi�m v�, xin ch� � theo nh� tr�t t� m� ra<color=yellow>%s<color>", szMsg)
    		Msg2Player(szMsg)
    		return
    	elseif ( nt_getTask(1203) == 20 or nt_getTask(1203) == 21 ) then
    		Msg2Player("Ng��i ��i tr��ng �� m� m�i ng�y b�o kho ��a tin nhi�m v�, nhi�m v� c�a ng��i c�ng ��i ng� ��ch b�t ��ng, t� m�nh ho�n th�nh." )
    	elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
    		Msg2Player("Ng��i ��i tr��ng �� m� m�i ng�y b�o kho ��a tin nhi�m v�, nhi�m v� c�a ng��i �� ho�n th�nh, c�ng ��i ng� ��ch b�t ��ng, mau r�i �i ��i ng� �i h�y nhi�m v�")
    	elseif ( nt_getTask(1203) == 0 ) then
    		Msg2Player("Ng��i ��i tr��ng �� m� m�i ng�y b�o kho ��a tin nhi�m v�, ng��i c�n ch�a nh�n n�n nhi�m v�, xin m�i r�i ��i ng� �i")
    	end
    else
    	Msg2Player("Ng��i ��i tr��ng �� m� m�i ng�y b�o kho ��a tin nhi�m v�, ng��i kh�ng c� � ��y b�n �� <color=yellow> ng�y b�o kho <color>, xin m�i m�nh ho�n th�nh")
	end
	
	Msg2Team(format("<color=yellow>%s<color>Nhi�m v� ti�n �� c�ng ��i ng� b�t ��ng.", GetName()))
end

function ture_real_starttask(nTaskCode)
	nt_setTask(1211,GetGameTime())              --:��������ʼʱ��
	nt_setTask(1203,20)
	nt_setTask(1201,nTaskCode)
	DisabledUseTownP(1)			--���ûسǷ�				--1������	--0������
	SetFightState(1);			--��ս��״̬				--1����	--0���ر�
	SetLogoutRV(1);				--���ߺ�������Ϊһ��������		--1�����ߺ�����Ϊһ��������	--0�����ߺ�������Ϊһ��������
	SetPunish(1);				--�������ͷ�					--1���������ͷ�		--0��û�������ͷ�
	--SetCreateTeam(1);			--�������					--1���������		--0�����������
	ForbidChangePK(0);   		--�������pk״̬		--1�����ܸ���pk״̬		--0:���Ը���pk״̬
	SetPKFlag(0);               --����Ϊ����ģʽ            
	SetDeathScript("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua");
	SetPos(1414,3191);
	--Cho b�t t?3 gi�y, tr�h b?�� s�t - Modifiec by DinhHQ - 20110502
	SetProtectTime(3*18)
	AddSkillState(963, 1, 0, 18*3) 	
end

function ture_movecity()
--���������ʹ����ʱ����������NPC�ƶ���Fix bug ��Ȼ�����ڳ���PK- Modified by DinhHQ - 20110518
	DisabledUseTownP(0)
	SetFightState(0)	
	SetPunish(1)
	SetCreateTeam(1);
	SetPKFlag(0)
	ForbidChangePK(0);
	SetDeathScript("");
	local name = GetName()
	if ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then
		for i=1,getn(citygo) do
			if ( nt_getTask(1204) == citygo[i][2] ) then
				SetLogoutRV(0);
				NewWorld(citygo[i][7], citygo[i][8], citygo[i][9])
				Msg2Player("Ng�y b�o kho d�ch tr�m "..name.." ��i nh�n ��n "..citygo[i][4].." d�ch tr�m !")
			end
		end	
	elseif ( nt_getTask(1203) == 10 ) or ( nt_getTask(1203) == 0 ) or ( nt_getTask(1203) == 20) or ( nt_getTask(1203) == 21 ) then
		SetLogoutRV(0);
		NewWorld(11,3021,5090)
	end
end

function birthday0905_ture()
	tbBirthday0905.tbTask:reset_task();
	Say("D�ch Quan : t� 19/06/2009 ��n 19/07/2009,l�c 24h, n�u nh� ��i hi�p c� th� xuy�n qua ph�a d��i m�t c�i trong �� khi�u chi�n, ��i hi�p �em ��t ���c 4 c� b�o v�t trung ��ch m�t, l� thi�n t�n �ao. ��i hi�p mu�n tham gia khi�u chi�n sao ?", 8,
		"Ti�p nh�n v� m� ra 100 c� b�o r��ng ./#birthday0905_settask_message(4)", 
                "Ti�p nh�n v� ti�u di�t m�t ��o t�c ./#birthday0905_settask_message(5)", 
                "Ti�p nh�n v� t�m ki�m m�t m�t m�c thi�u n� ./#birthday0905_settask_message(6)", 
                "Ta �� ho�n th�nh nhi�m v� m� ra 100 c� b�o r��ng ./#birthday0905_gettask_message(4)", 
                "Ta �� ho�n th�nh nhi�m v� ti�u di�t m�t ��o t�c ./#birthday0905_gettask_message(5)", 
                "Ta �� ho�n th�nh nhi�m v� t�m ki�m m�t m�t m�c thi�u n� ./#birthday0905_gettask_message(6)", 
                "Ta mu�n bu�ng tha cho tr��c m�t nhi�m v� /birthday0905_cancel_message", 
                "Ta c� vi�c g�p , ch� m�t ch�t tr� l�i ./no");
end

function no()
end

function ture_continuetask()
	if ( nt_getTask(1203) == 10 ) then 
                           Describe(DescLink_YiGuan..": Nhi�m v� c�a ng��i c�n ch�a b�t ��u, kh�ng th� ti�p t�c nhi�m v� ",1," K�t th�c ��i tho�i /no") 
        elseif ( nt_getTask(1203) == 20 ) then 
                           Describe(DescLink_YiGuan..": Nhi�m v� c�a ng��i �� b�t ��u, nhanh l�n m�t ch�t �i m� ra 5 c�i b�o r��ng �i .",1,"K�t th�c ��i tho�i /no") 
        elseif ( nt_getTask(1203) == 21 ) then 
                        ture_real_starttask(nt_getTask(1201)) 
                        Msg2Player("Nhi�m v� c�a ng��i c� th� ti�p t�c ") 
        elseif ( nt_getTask(1203) == 25 or nt_getTask(1203) == 30 ) then 
                         Describe(DescLink_YiGuan..": Nhi�m v� c�a ng��i �� ho�n th�nh, kh�ng c�n ti�p t�c.",1,"K�t th�c ��i tho�i /no") 
        elseif ( nt_getTask(1203) == 0 ) then 
                         Describe(DescLink_YiGuan..": Nhi�m v� c�a ng��i �� m�t b�i, nhanh l�n m�t ch�t r�i �i n�i n�y �i.",1,"K�t th�c ��i tho�i /no") 
        end
end

