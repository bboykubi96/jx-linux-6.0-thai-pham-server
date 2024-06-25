--Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/sinhnhatlan3/banhsinhnhat.lua")
	do Say("§¹o cô ®· hÕt h¹n sö dông...") return 0 end

	TSK_UseExpLimit3= 3911	
	local nExpLimit = GetTask(TSK_UseExpLimit3); 
	if ( nExpLimit >= 2000) then
		Say("Sö dông B¸nh  ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	if (GetLevel() < 120) then
		Say("ThËt ®¸ng tiÕc, chØ cã ng­êi ch¬i <color=yellow>cÊp trªn 80<color> míi cã thÓ sö dông.",0)
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

			
		Msg2Player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ phÇn th­ëng mèc, b¹n ®· sö dông  ®¹t mèc <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
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
		Msg2Player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ phÇn th­ëng mèc, b¹n ®· sö dông  ®¹t mèc <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
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
		
		Msg2Player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ phÇn th­ëng mèc, b¹n ®· sö dông  ®¹t mèc <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
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
		
		Msg2Player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ phÇn th­ëng mèc, b¹n ®· sö dông  ®¹t mèc <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
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

			
		
		Msg2Player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ phÇn th­ëng mèc, b¹n ®· sö dông  ®¹t mèc <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
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
			--Msg2player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm, huyÕt chiÕn lÔ hép, b¹n ®· sö dông  <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	
		
	
	elseif c== 295  then
		
		AddItem( 6,1,4412,1,0,0 ) 
		

		

		--Msg2player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ hoµng kim th¹ch, b¹n ®· sö dông  <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")
	
	elseif c == 296  then
		
		 local ItemIndex = AddItem( 6,1,30126,1,0,0 )
			ITEM_SetExpiredTime(ItemIndex,14*24*60)
		SyncItem(ItemIndex);
		

		--Msg2player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ  s¸ch kü n¨ng ts4, b¹n ®· sö dông  <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")
	

	elseif c== 7   then
		
		AddItem(6,1,3913,1,0,0)		
		

		--Msg2player("B¹n "..GetName().."<color=green> nhËn 1tû ®iÓm kinh nghiÖm vµ  s¸ch 21, b¹n ®· sö dông  <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")
	else
		

		--Msg2Player("B¹n "..GetName().."<color=green> nhËn ®­îc 1tû  ®iÓ kinh nghiÖm , b¹n ®· sö dông  <color=yellow>"..GetTask(3911).." b¸nh sinh nhËt")	

	end

end









