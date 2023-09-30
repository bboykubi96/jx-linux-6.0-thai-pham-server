
LuckyTurntable = {}
LuckyTurntable.Protocol = "emSCRIPT_PROTOCOL_LUCKY_TURNTABLE"
LuckyTurntable.tbProtocol = {
	PLAY = 1,
	INQUIRY_AWARD = 2,
	SYNC_AWARD = 3,
	GET_AWARD = 4,
	GET_TIMES_AWARD = 5,
	OPEN_WINDOW = 6,
}

-- Moc thuong vong quay
LuckyTurntable.TimesAwardCount = {
	[1] = 30,
	[2] = 60,
	[3] = 100,
	[4] = 150,
	[5] = 200,
}

LuckyTurntable.TASK_TOTAL_COUNT = 4088	--Tong so lan su dung vong quay may man
LuckyTurntable.TASK_TOTAL_AWARD = 4089	--Moc quay nhan thuong (TimesAwardCount)