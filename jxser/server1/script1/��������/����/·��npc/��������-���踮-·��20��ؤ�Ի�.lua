-- script viet hoa By http://tranhba.com ##���### ###�## �#�#20#�###�#� ��##�###

function main(sel)

-- script viet hoa By http://tranhba.com UTask_world36 = GetTask(64);

if (UTask_world36 == 0) then 
Talk(3, "select", "#�###��#####", "######�ⷴ��⩰#���####�#�", "#�###���ķ�#ݩ##��#İ�##�######�###�#�##�#��#��##�׳��#�У��#�#���#�����###��##�####�#�#�####��#####�#�#�#�#��##ķ##⩣��#�#���#���#󰳷#�##�####��#����######�##��##�#����ߩ##���##ߴ�##�Фⷴ#��###")
return
end;

-- script viet hoa By http://tranhba.com if (UTask_world36 == 1) then 
Say("#�###���ķ�#ݩ##��#İ�##�######�###�#�##�#��#��##�׳��#�У��#�#���#�����###��##�####�#�#�####��#####�#�#�#�#��##ķ##⩣��#�#���#���#󰳷#�##�####��#����######�##��##�#����ߩ##���##ߴ�##�Фⷴ#��###", 0)
-- script viet hoa By http://tranhba.com end;

end;


function select()
Say("��####�и�#�####", 2, "####/accept", "�#####/refuse");
end;


function accept()

if (GetCash() > 1000) then							-- script viet hoa By http://tranhba.com �#�###
	Talk(2, "select1", "#######�⩵#�###�##�##ķ#�ķ�##�#�#�##", "#�###����######�#�##ķ#�###�⩷�#��##�##�#�#�###���##��###⩷�#Ű�###�##�#ߤ#��###��####�#��##�####��###߲#��#�#���###�##�###и####ݴ###ķ�###㷵�#��ݰ�##")	
else
	Say("#�###�����ķ߲�###�#�#####�##��#��##ķ#ĺ�ߩ#�#ĸ׸###", 0)
end;

end;


function refuse()
end;


function select1()
Pay(GetCash()/3)
AddOwnExp(1000)	
SetTask(64, 1)
end;
