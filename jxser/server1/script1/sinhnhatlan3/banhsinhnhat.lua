--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/sinhnhatlan3/banhsinhnhat.lua")
	do Say("��o c� �� h�t h�n s� d�ng...") return 0 end

	TSK_UseExpLimit3= 3911	
	local nExpLimit = GetTask(TSK_UseExpLimit3); 
	if ( nExpLimit >= 2000) then
		Say("S� d�ng B�nh  �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	if (GetLevel() < 120) then
		Say("Th�t ��ng ti�c, ch� c� ng��i ch�i <color=yellow>c�p tr�n 80<color> m�i c� th� s� d�ng.",0)
		return 1;
	end
		AddOwnExp(1000000000);
	if GetTask(TSK_UseExpLimit3) == 300 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);
			
			AddGoldItem(0, random(2515,2744))

			local ItemIndex  =  AddGoldItem(0, 3552) -- cuong lan
			ITEM_SetExpiredTime(ItemIndex,14*24*60)
			SyncItem(ItemIndex);
			local ItemIndex = AddGoldItem(0, 3477)
			ITEM_SetExpiredTime(ItemIndex, 14*24*60)
			SyncItem(ItemIndex);--ff7
			local ItemIndex  = AddItem( 6,1,2219,1,0,0 ) -- cankhon
			ITEM_SetExpiredTime(ItemIndex,30*24*60)
			SyncItem(ItemIndex);

			
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 500 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);

			AddGoldItem(0, random(2745,2974))
			for i=1,2 do
				local ItemIndex  =  AddGoldItem(0, 3552) -- cuong lan
				ITEM_SetExpiredTime(ItemIndex,14*24*60)
				SyncItem(ItemIndex);
				local ItemIndex = AddGoldItem(0, 3477)
				ITEM_SetExpiredTime(ItemIndex, 14*24*60)
				SyncItem(ItemIndex);--ff7
				local ItemIndex  = AddItem( 6,1,2219,1,0,0 ) -- cankhon
				ITEM_SetExpiredTime(ItemIndex,30*24*60)
				SyncItem(ItemIndex);
			end
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 1000 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);

		AddGoldItem(0, random(2745,2974))
		AddGoldItem(0, random(2515,2744))

			for i=1,3 do
				local ItemIndex  =  AddGoldItem(0, 3552) -- cuong lan
				ITEM_SetExpiredTime(ItemIndex,14*24*60)
				SyncItem(ItemIndex);
				local ItemIndex = AddGoldItem(0, 3477)
				ITEM_SetExpiredTime(ItemIndex, 14*24*60)
				SyncItem(ItemIndex);--ff7
				local ItemIndex  = AddItem( 6,1,2219,1,0,0 ) -- cankhon
				ITEM_SetExpiredTime(ItemIndex,30*24*60)
				SyncItem(ItemIndex);
			end
		
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 1500 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);

		AddGoldItem(0, random(2745,2974))
		AddGoldItem(0, random(2745,2974))
		AddItem( 6,1,398,1,0,0 )
		AddItem( 6,1,398,1,0,0 )


			for i=1,3 do
				local ItemIndex  =  AddGoldItem(0, 3552) -- cuong lan
				ITEM_SetExpiredTime(ItemIndex,14*24*60)
				SyncItem(ItemIndex);
				local ItemIndex = AddGoldItem(0, 3477)
				ITEM_SetExpiredTime(ItemIndex, 14*24*60)
				SyncItem(ItemIndex);--ff7
				local ItemIndex  = AddItem( 6,1,2219,1,0,0 ) -- cankhon
				ITEM_SetExpiredTime(ItemIndex,30*24*60)
				SyncItem(ItemIndex);
			end
		
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end
	if GetTask(TSK_UseExpLimit3) == 1999 then
		SetTask(TSK_UseExpLimit3,nExpLimit+1);

		AddGoldItem(0, random(2745,2974))
		AddGoldItem(0, random(2745,2974))
		AddItem( 6,1,4413,1,0,0 )
		
		local ItemIndex  = AddItem(0,11,481,0,10,10,10,10,10,10,10) --vl chi ton 2skill
		ITEM_SetExpiredTime(ItemIndex,14*24*60)
		SyncItem(ItemIndex);

		local ItemIndex = AddGoldItem(0, 3480)
		ITEM_SetExpiredTime(ItemIndex, 14*24*60)
		SyncItem(ItemIndex);--ff8
		for i=1,4 do
			AddItem( 6,1,398,1,0,0 )
			AddItem( 6,1,30225,1,0,0 )

		end
		local n = random(1,2)
		if n == 1 then
			AddItem( 6, 1, 4149, 1, 1, 0 )
		else 
			AddItem( 6, 1, 4150, 1, 1, 0 )
		end

			
		
		Msg2Player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ph�n th��ng m�c, b�n �� s� d�ng  ��t m�c <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		return 0;

	end




	SetTask(TSK_UseExpLimit3,nExpLimit+1);

				itemrandome()
	
	return 0;
	end
	
function itemrandome()
 	
	c = random(1,300)
	if  c  == 299 or c == 298 or c == 300 or c == 297 then
			for i=1,10 do
			AddItem(6,1,1441,1,0,0)
			end
			--Msg2player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m, huy�t chi�n l� h�p, b�n �� s� d�ng  <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	
		
	
	elseif c== 295  then
		
		AddItem( 6,1,4412,1,0,0 ) 
		

		

		--Msg2player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v� ho�ng kim th�ch, b�n �� s� d�ng  <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")
	
	elseif c == 296  then
		
		 local ItemIndex = AddItem( 6,1,30126,1,0,0 )
			ITEM_SetExpiredTime(ItemIndex,14*24*60)
		SyncItem(ItemIndex);
		

		--Msg2player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v�  s�ch k� n�ng ts4, b�n �� s� d�ng  <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")
	

	elseif c== 7   then
		
		AddItem(6,1,3913,1,0,0)		
		

		--Msg2player("B�n "..GetName().."<color=green> nh�n 1t� �i�m kinh nghi�m v�  s�ch 21, b�n �� s� d�ng  <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")
	else
		

		--Msg2Player("B�n "..GetName().."<color=green> nh�n ���c 1t�  �i� kinh nghi�m , b�n �� s� d�ng  <color=yellow>"..GetTask(3911).." b�nh sinh nh�t")	

	end

end









