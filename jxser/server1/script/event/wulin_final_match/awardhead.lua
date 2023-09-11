IncludeLib("FILESYS")
IncludeLib("TITLE")
IncludeLib("ITEM")

ZONEAWARD_TASKID_FIRST = 1111	--能够领取的一等奖，0未领过，-1领完了
ZONEAWARD_TASKID_SECOND = 1112	--能够领取的二等奖，0未领过，-1领完了
ZONEAWARD_TASKID_THIRD = 1113	--能够领取的三等奖，0未领过，-1领完了
ZONEAWARD_TASKID_ACTORAWARD = 1114	--能否领取区服选手奖励，0未领过，-1领完了
ZONEAWARD_TASKID_LEADAWARD	= 1115	--能否领取区服领队奖励，0未领过，-1领完了
ZONEAWARD_TASKID_SINGLE = 1116	--能否领取单项赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_DOUBLE = 1117	--能否领取双人赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_FIVE = 1118	--能否领取五行赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_TEN = 1119		--能否领取十全赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_SIXTEEN = 1120	--能否领取十六人赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_ZONE = 1121	--能否领取区服团体赛的奖励，0未领过，-1领完了
ZONEAWARD_TASKID_TITLEID = 1122	--当前玩家领取的是哪个头衔ID


WL_GOLDITEMCOUNT = 28	--随机能够获得的大黄金数量，在表WL_TAB_MATCHAWARD中的前这个多个
WL_RANDOM_BASE = 10000	--获得奖励概率的基数
WL_TAB_MATCHAWARD = {	--武林大会红包可以获得的物品，概率，
	{	"梦龙之金丝正红袈裟",	0.001	,	{	0,2	},	},
	{	"伏魔之紫金棍",	0.001	,	{	0,6	},	},
	{	"四空之降魔戒刀",	0.0005	,	{	0,11	},	},
	{	"撼天之金环大眼神锤",	0.0001	,	{	0,16	},	},
	{	"继业之奔雷钻龙枪",	0.0001	,	{	0,21	},	},
	{	"御龙之亮银宝刀",	0.0005	,	{	0,26	},	},
	{	"无间之倚天剑",	0.0005	,	{	0,31	},	},
	{	"无魇之洗象玉扣",	0.001	,	{	0,39	},	},
	{	"无尘之清心向善珠",	0.001	,	{	0,42	},	},
	{	"栖凰之凤仪刀",	0.0005	,	{	0,46	},	},
	{	"碧海之鸳鸯连环刀",	0.001	,	{	0,51	},	},
	{	"幽胧之墨蛛软履",	0.001	,	{	0,60	},	},
	{	"冥幻之邪刹毒刃",	0.001	,	{	0,61	},	},
	{	"咒缚之灭雷颈符",	0.001	,	{	0,67	},	},
	{	"冰寒之弹指飞刀",	0.0005	,	{	0,71	},	},
	{	"天光之花雨漫天",	0.0005	,	{	0,76	},	},
	{	"森荒之飞星夺魂",	0.001	,	{	0,81	},	},
	{	"地魄之黑焰冲天链",	0.001	,	{	0,87	},	},
	{	"同仇之降龙丐衣",	0.001	,	{	0,92	},	},
	{	"敌忾之绿玉杖",	0.0004	,	{	0,96	},	},
	{	"魔煞之鬼谷幽冥枪",	0.0005	,	{	0,101	},	},
	{	"魔煌之金甲盔",	0.001	,	{	0,106	},	},
	{	"魔嗜之山海飞鸿履",	0.001	,	{	0,115	},	},
	{	"凌岳之无极玄玉佩",	0.0003	,	{	0,119	},	},
	{	"及丰之真武剑",	0.0001	,	{	0,121	},	},
	{	"霜晶之千年寒铁",	0.0005	,	{	0,126	},	},
	{	"雷穹之天地护符",	0.001	,	{	0,132	},	},
	{	"雾幻之北冥道冠",	0.001	,	{	0,136	},	},
	{	"定国之青纱长衫",	0.01	,	{	0,159	},	},
	{	"定国之钨砂发冠",	0.005	,	{	0,160	},	},
	{	"定国之赤绢软靴",	0.01	,	{	0,161	},	},
	{	"定国之紫藤护腕",	0.01	,	{	0,162	},	},
	{	"定国之银蚕腰带",	0.01	,	{	0,163	},	},
	{	"安邦之冰晶石项链",	0.005	,	{	0,164	},	},
	{	"安邦之菊花石指环",	0.005	,	{	0,165	},	},
	{	"安邦之田黄石玉佩",	0.005	,	{	0,166	},	},
	{	"安邦之鸡血石戒指",	0.005	,	{	0,167	},	},
	{	"侠骨之铁血衫",	0.005	,	{	0,186	},	},
	{	"侠骨之多情环",	0.01	,	{	0,187	},	},
	{	"侠骨之丹心戒",	0.01	,	{	0,188	},	},
	{	"侠骨之情意结",	0.002	,	{	0,189	},	},
	{	"柔情之巾帼霓裳",	0.001	,	{	0,190	},	},
	{	"柔情之淑女项链",	0.01	,	{	0,191	},	},
	{	"柔情之凤仪戒指",	0.01	,	{	0,192	},	},
	{	"柔情之慧心玉佩",	0.003	,	{	0,193	},	},
	{	"神秘矿石",	0.01	,	{	6,1,398,1,0,0,0	},	},
	{	"武林秘籍",	0.075	,	{	6,1,26,1,0,0,0	},	},
	{	"洗髓经",	0.075	,	{	6,1,22,1,0,0,0	},	},
	{	"紫水晶",	0.12	,	{	239	},	},
	{	"兰水晶",	0.12	,	{	238	},	},
	{	"绿水晶",	0.12	,	{	240	},	},
	{	"猩红宝石",	0.1	,	{	353	},	},
	{	"十级玄晶矿石",	0.001	,	{	6,1,147,10,0,0,0	},	},
	{	"九级玄晶矿石",	0.003	,	{	6,1,147,9,0,0,0	},	},
	{	"八级玄晶矿石",	0.01	,	{	6,1,147,8,0,0,0	},	},
	{	"七级玄晶矿石",	0.03	,	{	6,1,147,7,0,0,0	},	},
	{	"六级玄晶矿石",	0.2	,	{	6,1,147,6,0,0,0	},	},
}

WL_ZONEAWARD_TIME = {20050811,20050818} --武林大会奖励中，所有玩家都可以领的奖，发奖时间
WL_AWARD_TIME = {20050811,20050911}		--武林大会奖励中，区服选手都可以领的奖，发奖时间


WL_FILE_ZONEAWARD = "\\data\\wulin\\zoneaward.dat"		--记录了所有区获得的冠、亚、季军数
WL_TAB_ZONEINFO = {	--参加武林大会的区服表
{"1-1",11},
{"1-2",12},
{"1-3",13},
{"2-1",21},
{"2-2",22},
{"2-3",23},
{"3-1",31},
{"3-2",32},
{"3-3",33},
{"4-1",41},
{"4-2",42},
{"4-3",43},
{"5-1",51},
{"5-2",52},
{"6-1",61},
{"6-2",62},
{"6-3",63},
{"7-1",71},
{"7-2",72},
{"7-3",73},
{"8-1",81},
{"8-2",82},
{"9-1",91},
{"9-2",92},
{"10-1",101},
{"10-2",102},
{"11-1",111},
{"11-2",112},
{"11-3",113},
{"12-1",121},
{"12-2",122},
{"13-1",131},
{"13-2",132},
{"14-1",141},
{"15-1",151},
{"16-1",161},
{"17-1",171},
{"18-1",181},
{"19-1",191},
{"20-1",201},
{"20-2",202},
{"22-1",221},
}

WL_TAB_ACTORAWARD_INFO = {
--由区服积分排行，每个区服参赛选手能够获得的奖励
		--描述							红包数	经验值
		{ "一个武林大会红包和3亿经验值", 1, 300000000 },
		{ "一个武林大会红包和2亿经验值", 1, 200000000 },
		{ "一个武林大会红包和1亿经验值", 1, 100000000 },
		{ "一个武林大会红包和5000万经验值", 1, 50000000 },
		{ "一个武林大会红包", 1, 0 },
}

WL_TAB_LEADERAWARD_INFO = {
--由区服积分排行，每个区服总领队能够获得的奖励
		{ "大黄金装备一件（随机出）和十个武林大会红包", 10 },
		{ "十二个武林大会红包", 12 },
		{ "八个武林会红包", 8 },
		{ "四个武林大会红包", 4 },
		{ "二个武林大会红包", 2 }
}

WL_TAB_MATCHAWARD_INFO = {
--根据比赛类型不同，每个获奖选手的奖励
[ "SingleMatch" ] = {	{	"一件本门派所有武功技能+1的大黄金装备", 0	},	{	"10个武林大会红包", 10, 6, 1, 831, 1, 0, 0, 0	},	{	"6个武林大会红包", 6, 6, 1, 831, 1, 0, 0, 0	},	{	"3个武林大会红包", 3, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	},
[ "DoubleMatch" ] = {	{	"大黄金装备一件（随机出）和6个武林大会红包", 6, 6, 1, 831, 1, 0, 0, 0	},	{	"8个武林大会红包", 8, 6, 1, 831, 1, 0, 0, 0	},	{	"4个武林大会红包", 4, 6, 1, 831, 1, 0, 0, 0	},	{	"2个武林大会红包", 2, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	},
[ "FiveMatch" ] = {	{	"大黄金装备一件（随机出）和6个武林大会红包", 6, 6, 1, 831, 1, 0, 0, 0	},	{	"8个武林大会红包", 8, 6, 1, 831, 1, 0, 0, 0	},	{	"4个武林大会红包", 4, 6, 1, 831, 1, 0, 0, 0	},	{	"2个武林大会红包", 2, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	},
[ "TenMatch" ] = {	{	"1个十级玄晶矿石", 1, 6,1,147,10,0,0,0	},	{	"6个武林大会红包", 6, 6, 1, 831, 1, 0, 0, 0	},	{	"4个武林大会红包", 4, 6, 1, 831, 1, 0, 0, 0	},	{	"2个武林大会红包", 2, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	},
[ "SixteenMatch" ] = {	{	"1个十级玄晶矿石", 1, 6,1,147,10,0,0,0	},	{	"6个武林大会红包", 6, 6, 1, 831, 1, 0, 0, 0	},	{	"4个武林大会红包", 4, 6, 1, 831, 1, 0, 0, 0	},	{	"2个武林大会红包", 2, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	},
[ "ZoneMatch" ] = {	{	"5个武林大会红包", 5, 6, 1, 831, 1, 0, 0, 0	},	{	"3个武林大会红包", 3, 6, 1, 831, 1, 0, 0, 0	},	{	"2个武林大会红包", 2, 6, 1, 831, 1, 0, 0, 0	},	{	"1个武林大会红包", 1, 6, 1, 831, 1, 0, 0, 0	}	}
}

LEVELTOP10 = "bestlevel.dat"
LEADER_MEMBER = "leadmember.dat"
BID_LEADER = "bidleader.dat"


WL_FACTION = {
			{"shaolin_top5.dat", "ShaoLin_Top5", "少林"},
			{"tianwang_top5.dat", "TianWang_Top5", "天王"},
			{"tangmen_top5.dat", "TangMen_Top5", "唐门"},
			{"wudu_top5.dat", "Wudu_Top5", "五毒"},
			{"emei_top5.dat", "EMei_Top5", "峨嵋"},
			{"cuiyan_top5.dat", "CuiYan_Top5", "翠烟"},
			{"gaibang_top5.dat", "GaiBang_Top5", "丐帮"},
			{"tianren_top5.dat", "TianRen_Top5", "天忍"},
			{"wudang_top5.dat", "WuDang_Top5", "武当"},
			{"kunlun_top5.dat", "KunLun_Top5", "昆仑"}
		  }
