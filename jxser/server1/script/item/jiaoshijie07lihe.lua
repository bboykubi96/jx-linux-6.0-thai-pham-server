-- script viet hoa By http://tranhba.com #×£##ó07µ#º#
Include("\\script\\lib\\award.lua");
Include("\\script\\event\\teacher_day_200711\\head.lua");
function main()
	local nDate = tonumber(GetLocalDate("%y%m%d%H"));
	if (nDate >= TeacherDay200711_START_TIME and nDate <= TeacherDay200711_UseLimitTime) then-- script viet hoa By http://tranhba.com 2007Äª11¤¢17Ìâ #¸2007Äª12¤¢02Ìâ 24#·00
		local tbAwardItemPic =
		{
			{nGID =6, nDID = 1, nPID = 1599, szName = "#ð", nRate = 10},-- script viet hoa By http://tranhba.com #°#ð#±##	
			{nGID =6, nDID = 1, nPID = 1600, szName = "£#", nRate = 10},  -- script viet hoa By http://tranhba.com #°£##±##	
			{nGID =6, nDID = 1, nPID = 1601, szName = "##", nRate = 10},   -- script viet hoa By http://tranhba.com #°###±##	
			{nGID =6, nDID = 1, nPID = 1602, szName = "#µ", nRate = 10},   -- script viet hoa By http://tranhba.com #°#µ#±##	
			{nGID =6, nDID = 0, nPID = 20, szName = "·#####ãª", nRate = 60},   -- script viet hoa By http://tranhba.com ·#####ãª
		}
		local nItemIndex=TeacherDay200711_RandomGetOne(tbAwardItemPic,1,getn(tbAwardItemPic));
		AddItem(tbAwardItemPic[nItemIndex]["nGID"],tbAwardItemPic[nItemIndex]["nDID"],tbAwardItemPic[nItemIndex]["nPID"],1,0,0);
		Msg2Player(format("###· %d %s",1,tbAwardItemPic[nItemIndex]["szName"]))
		WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tGetItem %d %s.","2007Äª¤#Ä##×£##ó###¯",GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),1,tbAwardItemPic[nItemIndex]["szName"] ));
		return 0;
	else
		Say("¤#Ä##×£##ó###¯ß##¸£#",0)
		return 0;
	end
end

-- script viet hoa By http://tranhba.com #######ó#####Äß######·
function TeacherDay200711_RandomGetOne(Item_Talbe,start_index,end_index)
	local rtotal=100000;
	local rcur=random(1,rtotal);
	local rstep=0;
	for i=start_index,end_index do
		Item_Talbe[i]["nRate"] = Item_Talbe[i]["nRate"] or 100;
		rstep=rstep+floor(Item_Talbe[i]["nRate"]*rtotal/100);
		if(rcur <= rstep) then
			return i
		end
	end
	return -1
end
