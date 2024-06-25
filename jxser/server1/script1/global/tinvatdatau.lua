Include("\\script\\lib\\awardtemplet.lua")

--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--ÅÅĞĞ°ñ
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ÈÎÎñÁ´µÄÍ·ÎÄ¼ş
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- ÈÎÎñÁ´µÄ½±ÀøÍ·ÎÄ¼ş
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


function main()
	
	
	dofile("script//global//tinvatdatau.lua")
	if 1==2 then
	Say("Tİn vËt t¹m thêi ch­a ®­îc sö dông")
	return 1;
	end
	local ntime = GetTask(3001)
	nusetime = ntime * 5
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	

	
	if GetTask(3001) >= 4 then Say("Mét ngµy chØ sö dông tİn vËt D· TÈu 4 lÇn") return 1 end
	Say("C¸c h¹ võa t¨ng thµnh c«ng thªm 5 nhiÖm vô d· tÈu trong ngµy")
	SetTask(3001,GetTask(3001) + 1)
	return 0
		
end


