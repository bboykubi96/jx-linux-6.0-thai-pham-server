Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--���а�
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ��������ͷ�ļ�
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- �������Ľ���ͷ�ļ�
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


function main()
	
	
	dofile("script//global//tinvatdatau.lua")
	if 1==2 then
	Say("T�n v�t t�m th�i ch�a ���c s� d�ng")
	return 1;
	end
	local ntime = GetTask(3001)
	nusetime = ntime * 5
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	

	
	if GetTask(3001) >= 4 then Say("M�t ng�y ch� s� d�ng t�n v�t D� T�u 4 l�n") return 1 end
	Say("C�c h� v�a t�ng th�nh c�ng th�m 5 nhi�m v� d� t�u trong ng�y")
	SetTask(3001,GetTask(3001) + 1)
	return 0
		
end


