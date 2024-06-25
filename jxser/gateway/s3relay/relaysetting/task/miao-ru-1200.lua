	Include( "\\RelaySetting\\Task\\bosswhere.lua")

	Include( "\\RelaySetting\\Task\\GoldBossHead.lua");

	Sid = 51312

	Interval = 1440;

	Count = 0;

	StartHour=12;

	StartMin=0;

	function NewBoss()

	str = "Nghe n„i Nga Mi Æ÷ tˆ Di÷u Nh≠  n’u nh≠ g«n Æ©y d‹ h∏ s¨n!"

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	return 1, where[ "miaoru "][Random(getn(where. miaoru))+1], 513, 90;

	end;


