-- script viet hoa By http://tranhba.com  ���###��###�#��#��###&�#��#��#��
-- script viet hoa By http://tranhba.com  by#�Dan_Deng(2003-09-16)
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-27) ###�##��###

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\map_helper.lua")
npc_name = "<#>�#��#��#"

function default_talk()
-- script viet hoa By http://tranhba.com 	UTask_world42 = GetTask(42)	-- script viet hoa By http://tranhba.com  ��#��###�#��
-- script viet hoa By http://tranhba.com 	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- script viet hoa By http://tranhba.com  �####�#�##���##�##�����####�####�#�#�#�#�###�##��#�#
-- script viet hoa By http://tranhba.com 		Talk(6,"U42_get","�#��#��####���##�#�#####�#�###�####��##�#�","�#��#��#��#��#�####ߤ#��#�#��#�######�#####�߲�###�#######�#��#�#߰##���#�#�##","�##�#��######�##�ⷴ##��#�","�#��#��####��#�###�##��#��#��׷׷##�#�#�#####�����#######�###㣢�##�","�##�#���####�###�###�####�#�##߱��#####","�#��#��#��#��#######��#�####��#�#�###�###")
-- script viet hoa By http://tranhba.com 	else
		Talk(4,"","##��#߿�##9##���###�#��#ݿ�##�###���#�##","###�##�#�#��!","#####��#######��⩿��###��#߲��!","�#��##��##�#��! ")
-- script viet hoa By http://tranhba.com 	end;
end;

function U42_get()
	Say("#��###�#5�߸#.",2,"�###��##�#�#�#/yes1","###��###�#####�#�##�!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","#�#��#�#��#�##���#�#��#�#�#�#��#�########��##�#�#.")
		SetTask(42, 10)
		AddNote("###�##��####�#��#####�#�#��#���#�#�#��##�#�##�##�#### ")
		Msg2Player("###�##��####�#��#####�#�#��#���#�#�#��##�#�##�##�####")
	else
		Talk(1,"","#i##��##�#####������#�####�###�#��!")
	end
end;

function no()
	Talk(1,"","#i##��##�#####������#�####�###�#��!")
end;
