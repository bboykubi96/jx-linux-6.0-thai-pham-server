--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/item/vitenambirthday/birthdaycake002.lua")
	--do Say("��o c� �� h�t h�n s� d�ng...") return 0 end

	TSK_UseExpLimit3= 3916	
	local nExpLimit = GetTask(TSK_UseExpLimit3); 
	if ( nExpLimit >= 500) then
		Say("S� d�ng B�nh  �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	if (GetLevel() < 60) then
		Say("Th�t ��ng ti�c, ch� c� ng��i ch�i <color=yellow>c�p tr�n 60<color> m�i c� th� s� d�ng.",0)
		return 1;
	end
		AddOwnExp(1000000);
	if GetTask(TSK_UseExpLimit3) == 99 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
			local nrand = random(0,1)
			if nrand == 0 then
				AddItem(0, 1,random(0,2),10,random(0,4),100,10)
			else
			
				AddItem(0, 0,random(1,5),10,random(0,4),100,10)
			end
			for i=1,2 do
				AddItem(6,1,71,1,0,0)
			end

			
		logplayer("dulieu/moc100db.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 100 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

			
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1tri�u �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3916).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 199 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
		--for i=1095,1098 do

		--	AddItem(6,1,i,1,0,0)
		--end
		AddItem(6,1,1181,1,0,0)
		AddEventItem(random(238,240))
		logplayer("dulieu/moc200db.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 200 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1 trieu �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 299 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
		
		
		AddEventItem(353)
		for i=1,2 do
			AddItem(6,1,2744,1,0,0)
			AddItem(6,1,1181,1,0,0)
		end
			
		logplayer("dulieu/moc300db.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 300 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		Msg2Player("B�n "..GetName().."<color=green> nh�n 1 trieu �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 399 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
		AddEventItem(353)
		for i=1,2 do
			AddItem(6,1,2744,1,0,0)
			AddItem(6,1,1181,1,0,0)
			AddItem(6,1,4336,1,0,0)

		end

		logplayer("dulieu/moc400db.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 400 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1trieu �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 499 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
		AddItem(6,1,2424,1,0,0)
		AddItem(6,1,random(33,43),1,0,0)
		local ttkvlmt = random(1,2)
		if ttkvlmt == 1 then
		AddItem(6,1,22,1,0,0)
		else 
		AddItem(6,1,26,1,0,0)
		end
		for i=1,2 do
			AddItem(6,1,2744,1,0,0)
			AddItem(6,1,1181,1,0,0)
			AddItem(6,1,4336,1,0,0)

		end

		logplayer("dulieu/moc500db.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 500 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	
		
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1trieu �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end




	SetTask(TSK_UseExpLimit3,nExpLimit+1);

				itemrandome()
	
	return 0;
	end
	
function itemrandome()
 	
	c = random(1,300)
	if  c  == 299 or c == 298 or c == 300 or c == 297 then
			
			AddItem(6,1,122,1,0,0)
			
	
	elseif c== 295  then
		
		AddItem( 6,1,123,1,0,0 ) 
		

		

		
	elseif c == 296  then
		
		AddItem( 6,1,124,1,0,0 ) 

	elseif c== 294   then
		
		AddItem(6,1,125,1,0,0)		
		

		
	else
		

		

	end

end




function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end




