-- 注意：各个门派的定义，这份是lua的，C++的定义在\settings\faction_settings.ini
tbFacDef = {}
tbFacDef.nMaxFac = 12
tbFacDef.tbIds = {
    SHAOLIN     = 0,
    TIANWANG    = 1,
    TANGMEN     = 2,
    WUDU        = 3,
    EMEI        = 4,
    CUIYAN      = 5,
    GAIBANG     = 6,
    TIANREN     = 7,
    WUDANG      = 8,
    KUNLUN      = 9,
    HUASHAN     = 10,
    WUHUN       = 11,
}
tbFacDef.tbWholeInfoList =
{
--      [tbFacDef.tbIds.SHAOLIN] = {-- 
--          门派名, 门派ID, 阵营,   头衔ID, 属性
--          任务ID, 
--          137的变量,  137变量的值,        // 就这一项来说，搞不明白是做什么的，入门的时候设置
--          技能Tab,
--          入门公告,
--      },
    [tbFacDef.tbIds.SHAOLIN] = {-- 少林
        szFacName       = "shaolin",
        szFacChName     = "Thi誹 L﹎ ph竔",
        szFacShortName  = "Thi誹 L﹎",
        nFacNumb        = tbFacDef.tbIds.SHAOLIN,
        nCamp           = 1,
        nRankId         = 72,
        nSeries         = 0,
        nTaskId_Fact    = 7,
        nTaskId_90Skill = 122,
        nTaskId_137     = 137,
        nValue_137      = 67,
        n150TaskStep    = 6,
        nJinjieSkillID  = 1220,
        nFactionMapId   = 103,
        tbFactionMapPos = {1845,2983},
        szMsg           = "K� t� h玬 nay %s gia nh藀 m玭 ph竔 Thi誹 L﹎, sau n祔 nh� c竎 huynh ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                14,     -- 行龙不雨[14]
                10,     -- 金刚伏魔[10]（入门）
            },
            [20]    = {
                8,      -- 少林拳法[8]
                4,      -- 少林棍法[4]（10级）
                6,      -- 少林刀法[6]（10级）
            },
            [30]    = {
                15,     -- 不动明王[15]（20级）
            },
            [40]    = {
                16,     -- 罗汉阵[16]（30级）
            },
            [50]    = {
                20,     -- 狮子吼 [20]（40级）
            },
            [60]    = {
                271,    -- 龙爪虎抓[271]
                11,     -- 横扫六合 [11]（50级）
                19,     -- 摩诃无量 [19]（50级）
            },
            [70]    = {
                273,    -- 如来千叶[273]
                21,     -- 易筋经[21]（60级）
            },
            [90]    = {
                {318, 1, "Quy襫 ph竝", "Чt Ma ч Giang"},   -- 达摩渡江[318]            添加熟练度技能 至少添加为1级
                {319, 1, "C玭 ph竝", "Ho祅h T秓 Thi猲 Qu﹏"},   -- 横扫千军[319]（90级）
                {321, 1, "o ph竝", "V� Tng Tr秏 "},     -- 无相斩  [321]（90级）
            },
            [120]   = {
                {709, 1, "Th玭g d鬾g", "Чi Th鮝 Nh� Lai Ch�"}
            },
            [150]   = {
                {1055, 1, "Quy襫 ph竝", "Чi L鵦 Kim Cang Chng"},  -- 大力金刚掌[318]          添加熟练度技能 至少添加为1级
                {1056, 1, "C玭 ph竝", "Vi У Hi課 X�"},    -- 韦陀献杵[319]（90级）
                {1057, 1, "o ph竝", "Tam Gi韎 Quy Thi襫"},    -- 叁戒归禅[321]（90级）
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Thi誹 L﹎ Quy襫 Ph竝. Quy觧 1",56},
                {"Thi誹 L﹎ C玭 ph竝. Quy觧 2",57},
                {"Thi誹 L﹎ o ph竝. Quy觧 3",58}
            },
        },
    },
    
    [tbFacDef.tbIds.TIANWANG] = {-- 天王
        szFacName       = "tianwang",
        szFacChName     = "Thi猲 Vng Bang",
        szFacShortName  = "Thi猲 Vng",
        nFacNumb        = tbFacDef.tbIds.TIANWANG,
        nCamp           = 3,
        nRankId         = 69,
        nSeries         = 0,
        nTaskId_Fact    = 3,
        nTaskId_90Skill = 121,
        nTaskId_137     = 137,
        nValue_137      = 63,
        n150TaskStep    = 4,
        nJinjieSkillID  = 1221,
        nFactionMapId   = 59,
        tbFactionMapPos = {1552,3188},
        szMsg           = "K� t� h玬 nay %s gia nh藀 Thi猲 Vng, nh� c竎 s� huynh ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                34,     -- 惊雷斩[34]  （入门）
                30,     -- 回风落雁[30]（入门）
                29,     -- 斩龙诀[29]  （入门）
            },
            [20]    = {
                26,     -- 天王锤法[26]（10级）
                23,     -- 天王枪法[23]（10级）
                24,     -- 天王刀法[24]（10级）
            },
            [30]    = {
                33,     -- 静心诀[33]  （20级）
            },
            [40]    = {
                37,     -- 泼风斩  [37]（30级）
                35,     -- 阳关三叠[35]（30级）
                31,     -- 行云诀  [31]（30级）
            },
            [50]    = {
                40,     -- 断魂刺  [40]（40级）
            },
            [60]    = {
                42,     -- 金钟罩  [42]（50级）
            },
            [70]    = {
                32,     -- 无心斩  [32] （60级）
                36,     -- 天王战意[36]（镇派）
                41,     -- 血战八方[41] （60级）
                324,    -- 乘龙诀  [324]（60级）
            },
            [90]    = {
                {325, 1, "Ch飝 ph竝", "Truy Phong Quy誸 "},     -- 追风诀  （90级）
                {323, 1, "Thng ph竝", "Truy Tinh Tr鬰 Nguy謙 "},   -- 追星逐月（90级）
                {322, 1, "o ph竝", "Ph� Thi猲 Tr秏 "},     -- 破天斩  （90级）
            },
            [120]   = {
                {708, 1, "Th玭g d鬾g", "Фo H� Thi猲"}    --
            },
            [150]   = {
                {1059, 1, "Ch飝 ph竝", "Tung Ho祅h B竧 Hoang"},  -- 纵横八荒
                {1060, 1, "Thng ph竝", "B� Vng T筸 Kim"},  -- 霸王錾金
                {1058, 1, "o ph竝", "H祇 H飊g Tr秏"},    -- 豪雄斩
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Thi猲 Vng Ch飝 Ph竝. Quy觧 1",37},
                {"Thi猲 Vng Thng ph竝. Quy觧 2",38},
                {"Thi猲 Vng o ph竝.Quy觧 3",39}
            },
        },
    },
    
    [tbFacDef.tbIds.TANGMEN] = {-- 唐门
        szFacName       = "tangmen",
        szFacChName     = "Л阯g M玭",
        szFacShortName  = "Л阯g M玭",
        nFacNumb        = tbFacDef.tbIds.TANGMEN,
        nCamp           = 3,
        nRankId         = 76,
        nSeries         = 1,
        nTaskId_Fact    = 2,
        nTaskId_90Skill = 123,
        nTaskId_137     = 137,
        nValue_137      = 62,
        n150TaskStep    = 7,
        nJinjieSkillID  = 1223,
        nFactionMapId   = 25,
        tbFactionMapPos = {3982,5235},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 Л阯g m玭, c秏 phi襫 c竎 s� huynh s� t� ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                45,     -- 霹雳弹[45 ]（入门）
            },
            [20]    = {
                43,     -- 唐门暗器[43 ]（10级）
                347,    -- 地焰火[347]（10级）
            },
            [30]    = {
                303,    -- 毒刺骨  [303]（20级）
            },
            [40]    = {
                50,     -- 追心箭  [50 ]（30级）
                54,     -- 漫天花雨[54 ]（30级）
                47,     -- 夺魂镖  [47 ]（30级）
                343,    -- 穿心刺  [343]（30级）
            },
            [50]    = {
                345,    -- 寒冰刺  [345]（40级）
            },
            [60]    = {
                349,    -- 雷击术[349]（50级）
            },
            [70]    = {
                249,    -- 小李飞刀[249]（60级）
                48,     -- 心眼  [48 ]（镇派）
                58,     -- 天罗地网[58 ]（60级）
                341,    -- 散花镖  [341]（60级）
            },
            [90]    = {
                {339, 1, "Phi 產o", "Nhi誴 H錸 Nguy謙 秐h"},   -- 摄魂月影[339]（90级）
                {302, 1, "N� ti詎", "B筼 V� L� Hoa"},   -- 暴雨梨花[302]（90级）
                {342, 1, "Phi Ti猽", "C鰑 Cung Phi Tinh"},   -- 九宫飞星[342]（90级）
                {351, 0, "Th玭g d鬾g", "Lo筺 Ho祅 K輈h"},     -- 乱环击  [351]（90级）
            },
            [120]   = {
                {710, 1, "Th玭g d鬾g", "M� 秐h Tung"}
            },
            [150]   = {
                {1069, 1, "Phi 產o", "V� 秐h Xuy猲"},     -- 无影穿
                {1070, 1, "N� ti詎", "Thi誸 Li猲 T� S竧"},    -- 铁莲四杀
                {1071, 1, "Phi Ti猽", "C祅 Kh玭 Nh蕋 Tr辌h"},    -- 乾坤一掷
                {1110, 0, "Th玭g d鬾g", "T輈h L辌h Lo筺 Ho祅 K輈h"},  -- 霹雳乱环击
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Phi o thu藅. Nhi誴 H錸 Nguy謙 秐h",45},
                {"T� Ti詎 thu藅. B筼 V� L� Hoa",27},
                {"Phi Ti猽 thu藅. C鰑 Cung Phi Tinh",46},
                {"H穖 T躰h thu藅.Lo筺 Ho祅 K輈h",28}
            },
        },
    },
    
    [tbFacDef.tbIds.WUDU] = {-- 五毒
        szFacName       = "wudu",
        szFacChName     = "Ng� чc Gi竜",
        szFacShortName  = "Ng� чc",
        nFacNumb        = tbFacDef.tbIds.WUDU,
        nCamp           = 2,
        nRankId         = 80,
        nSeries         = 1,
        nTaskId_Fact    = 10,
        nTaskId_90Skill = 124,
        nTaskId_137     = 137,
        nValue_137      = 70,
        n150TaskStep    = 5,
        nJinjieSkillID  = 1222,
        nFactionMapId   = 183,
        tbFactionMapPos = {1746,2673},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 m玭 Ng� чc gi竜, c秏 phi襫 c竎 s� huynh s� t� ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                63,     -- 毒砂掌  [63]（入门）
                65,     -- 血刀毒杀[65]（入门）
            },
            [20]    = {
                62,     -- 五毒掌法[62]（10级）
                60,     -- 五毒刀法[60]（10级）
                67,     -- 九天狂雷[67]（10级）
            },
            [30]    = {
                70,     -- 赤焰蚀天[70]（20级）
                66,     -- 杂难药经[66]（20级）
            },
            [40]    = {
                68,     -- 幽冥骷髅[68 ]（30级）
                384,    -- 百毒穿心[384]（30级）
                64,     -- 冰蓝玄晶[64 ]（30级）
                69,     -- 无形蛊  [69]（30级）
            },
            [50]    = {
                356,    -- 穿衣破甲  [356]（40级）
                73,     -- 万蛊蚀心[73 ]（40级）
            },
            [60]    = {
                72,     -- 穿心毒刺[72]（50级）
                                        },
            [70]    = {
                71,     -- 天罡地煞手[71 ]（60级）
                75,     -- 五毒奇经[75]（镇派）
                74,     -- 朱蛤青冥  [74 ]（60级）
            },
            [90]    = {
                {353, 1, "Chng ph竝", " Phong Th鵦 C鑤 "},   -- 阴风蚀骨[353]（90级）
                {355, 1, "o ph竝", "Huy襫  Tr秏 "},     -- 玄阴斩  [355]（90级）
                {390, 0, "Th玭g d鬾g", "筺 C﹏ H� C鑤 "},   -- 断筋腐骨[390]（90级）
            },
            [120]   = {
                {711, 1, "Th玭g d鬾g", "H蕄 Tinh Y觤"}
            },
            [150]   = {
                {1066, 1, "Chng ph竝", ""},  -- 形销骨立
                {1067, 1, "o ph竝", ""},  -- 幽魂噬影
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Ng� чc Chng Ph竝. Quy觧 1",47},
                {"Ng� чc o ph竝. Quy觧 2",48},
                {"Ng� чc Nhi誴 T﹎ thu藅. Quy觧 3",49}
            },
        },
    },
    
    [tbFacDef.tbIds.EMEI] = {-- 峨眉
        szFacName       = "emei",
        szFacChName     = "Nga My ph竔",
        szFacShortName  = "Nga Mi",
        nFacNumb        = tbFacDef.tbIds.EMEI,
        nCamp           = 1,
        nRankId         = 64,
        nSeries         = 2,
        nTaskId_Fact    = 1,
        nTaskId_90Skill = 125,
        nTaskId_137     = 137,
        nValue_137      = 61,
        n150TaskStep    = 7,
        nJinjieSkillID  = 1224,
        nFactionMapId   = 13,
        tbFactionMapPos = {1898,4978},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 Nga My ph竔, c秏 phi襫 c竎 s� t� ch� gi竜",
        tbSkillID       =
        {
            [10]    = {
                85,     -- 一叶知秋[85]（入门）
                80,     -- 飘雪穿云[80]（入门）
            },
            [20]    = {
                77,     -- 峨嵋剑法[77]（10级）
                79,     -- 峨嵋掌法[79]（10级）
            },
            [30]    = {
                93,     -- 慈航普渡[93]（20级）
            },
            [40]    = {
                385,    -- 推窗望月[385]（30级）
                82,     -- 四象同归[82]（30级）
                89,     -- 梦蝶    [89]（30级）
            },
            [50]    = {
                86,     -- 流水    [86 ]（40级）
            },
            [60]    = {
                92,     -- 佛心慈佑[92]（50级）
            },
            [70]    = {
                88,     -- 不灭不绝[88]（60级）
                252,    -- 佛法无边[252]（镇派）
                91,     -- 佛光普照[91]（60级）
                282,    -- 清音梵唱[282]（60级）                          
            },
            [90]    = {
                {328, 1, "Ki誱 ph竝", "Tam Nga T� Tuy誸 "},   -- 三峨霁雪[328]（90级）
                {380, 1, "Chng ph竝", "Phong Sng To竔 秐h "},   -- 风霜碎影[380]（90级）
                {332, 0, "Th玭g d鬾g", "Ph� ч Ch髇g Sinh "},   -- 普渡众生[332]（90级）
            },
            [120]   = {
                {712, 1, "Th玭g d鬾g", "B� Nguy謙 Ph蕋 Tr莕"}
            },
            [150]   = {
                {1061, 1, "Ki誱 ph竝", "Ki誱 Hoa V穘 Tinh"},  -- 剑花挽晶
                {1062, 1, "Chng ph竝", "B╪g V� L筩 Tinh"},  -- 冰雨珞晶
                {1114, 1, "H� tr�", "Ng鋍 Tuy襫 T﹎ Kinh"},  -- 玉泉心经
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Di謙 Ki誱 M藅 T辌h",42},
                {"Nga Mi  Ph藅 Quang Chng M藅 T辌h",43},
                {"Ph� ч M藅 T辌h",59}
            },
        },
    },
    
    [tbFacDef.tbIds.CUIYAN] = {-- 翠烟
        szFacName       = "cuiyan", 
        szFacChName     = "Th髖 Y猲 m玭",
        szFacShortName  = "Th髖 Y猲",
        nFacNumb        = tbFacDef.tbIds.CUIYAN,
        nCamp           = 3,
        nRankId         = 67,
        nSeries         = 2,
        nTaskId_Fact    = 6,
        nTaskId_90Skill = 126,
        nTaskId_137     = 137,
        nValue_137      = 66,
        n150TaskStep    = 6,
        nJinjieSkillID  = 1225,
        nFactionMapId   = 154,
        tbFactionMapPos = {403,1361},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 Th髖 Y猲 m玭, c秏 phi襫 c竎 s� t� ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                99,     -- 风花雪月[99 ]（入门）
                102,    -- 风卷残雪[102]（入门）
            },
            [20]    = {
                95,     -- 翠烟刀法[95 ]（10级）
                97,     -- 翠烟双刀[97 ]（10级）
            },
            [30]    = {
                269,    -- 冰心倩影[269]（20级）
            },
            [40]    = {
                105,    -- 雨打梨花[105]（30级）
                113,    -- 浮云散雪[113]（30级）
            },
            [50]    = {
                100,    -- 护体寒冰[100]（30级）
            },
            [60]    = {
                109,    -- 雪影    [109]（40级）
            },
            [70]    = {
                108,    -- 牧野流星[108]（60级）
                114,    -- 冰骨雪心[114]（镇派）
                111,    -- 碧海潮生[111]（60级）
            },
            [90]    = {
                {336, 1, "o ph竝", "B╪g Tung V� 秐h "},   -- 冰踪无影[336]（90级）
                {337, 1, "Song 產o", "B╪g T﹎ Ti猲 T�  "},   -- 冰心仙子[337]（90级）
            },
            [120]   = {
                {713, 1, "Th玭g d鬾g", "Ng� Tuy誸 萵"}
            },
            [150]   = {
                {1063, 1, "o ph竝", "B╪g Tc Ho箃 K�"},  -- 冰雀越枝
                {1065, 1, "Song 產o", "Th駓 Anh Man T�"},  -- 水映曼秀
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Th髖 Y猲 產o ph竝",40},
                {"Th髖 Y猲 song 產o",41}
            },
        },
    },
    
    [tbFacDef.tbIds.GAIBANG] = {-- 丐帮
        szFacName       = "gaibang",
        szFacChName     = "C竔 Bang",
        szFacShortName  = "C竔 Bang",
        nFacNumb        = tbFacDef.tbIds.GAIBANG,
        nCamp           = 1,
        nRankId         = 78,
        nSeries         = 3,
        nTaskId_Fact    = 8,
        nTaskId_90Skill = 128,
        nTaskId_137     = 137,
        nValue_137      = 68,
        n150TaskStep    = 9,
        nJinjieSkillID  = 1227,
        nFactionMapId   = 115,
        tbFactionMapPos = {1501,3672},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 C竔 Bang, c秏 phi襫 c竎 ti襫 b鑙 ch� gi竜!",
        tbSkillID       =
        {
            [10]    = {
                122,    -- 见人伸手[122]（入门）
                119,    -- 沿门托钵[119]（入门）
            },
            [20]    = {
                116,    -- 丐帮掌法[116]（10级）
                115,    -- 丐帮棒法[115]（10级）
            },
            [30]    = {
                129,    -- 化险为夷[129]（20级）
            },
            [40]    = {
                274,    -- 降龙掌[274]（30级）
                124,    -- 打狗阵[124]（30级）
            },
            [50]    = {
                277,    -- 滑不留手[277]（40级
            },
            [60]    = {
                128,    -- 亢龙有悔[128]（50级）
                125,    -- 棒打恶狗[125]（50级）
            },
            [70]    = {
                130,    -- 醉蝶狂舞[130]（镇派）
                360,    -- 逍遥功[360]（60级）
            },
            [90]    = {
                {357, 1, "Chng ph竝", "Phi Long T筰 Thi猲 "},   -- 飞龙在天[357]（90级）
                {359, 1, "B鎛g ph竝", "Thi猲 H� V� C萿 "},   -- 天下无狗[359]（90级）
            },
            [120]   = {
                {714, 1, "Th玭g d鬾g", "H鏽 Thi猲 Kh� C玭g"}
            },
            [150]   = {
                {1073, 1, "Chng ph竝", "Th阨 Th苙g L鬰 Long"},  -- 时乘六龙
                {1074, 1, "B鎛g ph竝", "B鎛g Hu齨h Lc мa"},  -- 棒迥掠地
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"C竔 Bang chng ph竝",54},
                {"C竔 Bang c玭 ph竝",55}
            },
        },
    },
    
    [tbFacDef.tbIds.TIANREN] = {-- 天忍
        szFacName       = "tianren",
        szFacChName     = "Thi猲 Nh蒼 Gi竜",
        szFacShortName  = "Thi猲 Nh蒼",
        nFacNumb        = tbFacDef.tbIds.TIANREN,
        nCamp           = 2,
        nRankId         = 81,
        nSeries         = 3,
        nTaskId_Fact    = 4,
        nTaskId_90Skill = 127,
        nTaskId_137     = 137,
        nValue_137      = 64,
        n150TaskStep    = 9,
        nJinjieSkillID  = 1226,
        nFactionMapId   = 49,
        tbFactionMapPos = {1644,3215},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 Thi猲 Nh蒼 gi竜, b竔 ki課 c竎 s� huynh s� t�!",
        tbSkillID       =
        {
            [10]    = {
                135,    -- 残阳如血[135]（入门）
                145,    -- 弹指烈焰[145]（入门）
            },
            [20]    = {
                132,    -- 天忍矛法[132]（10级）
                131,    -- 天忍刀法[131]（10级）
                136,    -- 火焚莲华[136]（10级）
            },
            [30]    = {
                137,    --幻影飞狐[137]（20级）
            },
            [40]    = {
                141,    -- 烈火情天[141]（30级）
                138,    -- 推山填海[138]（30级）
                140,    -- 飞鸿无迹[140]（30级）
            },
            [50]    = {
                364,    -- 悲酥清风[364]（40级）
            },
            [60]    = {
                143,    -- 厉魔夺魂[143]（50级）
            },
            [70]    = {
                142,    -- 偷天换日[142]（60级）
                150,    -- 天魔解体[150]（镇派）
                148,    -- 魔焰七杀[148]（60级）
            },
            [90]    = {
                {361, 1, "Thng ph竝", "V﹏ Long K輈h"},     -- 云龙击  [361]（90级）
                {362, 1, "o ph竝", "Thi猲 Ngo筰 L璾 Tinh"},   -- 天外流星[362]（90级）
                {391, 0, "Th玭g d鬾g", "Nhi誴 H錸 Lo筺 T﹎ "},   -- 慑魂乱心[391]（90级）
            },
            [120]   = {
                {715, 1, "Th玭g d鬾g", "Ma  Ph� Ph竎h"}
            },
            [150]   = {
                {1075, 1, "Thng ph竝", "Giang H秈 N� Lan"},  -- 江海怒澜
                {1076, 1, "o ph竝", "T藅 H醓 Li謚 Nguy猲"},  -- 疾火燎原
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"V﹏ Long K輈h. M﹗ ph竝",35},
                {"L璾 Tinh. o ph竝",36},
                {"Nhi誴 H錸. Ch� thu藅",53}
            },
        },
    },
    
    [tbFacDef.tbIds.WUDANG] = {-- 武当
        szFacName       = "wudang",
        szFacChName     = "V� ng ph竔",
        szFacShortName  = "V� ng",
        nFacNumb        = tbFacDef.tbIds.WUDANG,
        nCamp           = 1,
        nRankId         = 73,
        nSeries         = 4,
        nTaskId_Fact    = 5,
        nTaskId_90Skill = 129,
        nTaskId_137     = 137,
        nValue_137      = 65,
        n150TaskStep    = 5,
        nJinjieSkillID  = 1228,
        nFactionMapId   = 81,
        tbFactionMapPos = {1574,3224},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 V� ng ph竔, tham ki課 c竎 s� huynh s� t�!",
        tbSkillID       =
        {
            [10]    = {
                153,    -- 怒雷指  [153]（入门）
                155,    -- 沧海明月[155]（入门）
            },
            [20]    = {
                152,    -- 武当拳法[152]（10级）
                151,    -- 武当剑法[151]（10级）
            },
            [30]    = {
                159,    -- 七星阵  [159]（30级）
            },
            [40]    = {
                164,    -- 剥及而复[164]（30级）
                158,    -- 剑飞惊天[158]（30级）
            },
            [50]    = {
                160,    -- 梯云纵  [160]（40级）
            },
            [60]    = {
                157,    -- 坐望无我[157]（50级）
            },
            [70]    = {
                165,    -- 无我无剑[165]（60级）
                166,    -- 太极神功[166]（镇派）
                267,    -- 三环套月[267]（60级）
            },
            [90]    = {
                {365, 1, "Quy襫 ph竝", "Thi猲 мa V� C鵦 "},   -- 天地无极[365]（90级）
                {368, 1, "Ki誱 ph竝", "Nh﹏ Ki誱 H頿 Nh蕋  "},   -- 人剑合一[368]（90级）
            },
            [120]   = {
                {716, 1, "Th玭g d鬾g", "Xu蕋 � B蕋 Nhi詍"}
            },
            [150]   = {
                {1078, 1, "Quy襫 ph竝", "T筼 H鉧 Th竔 Thanh"},  -- 造化太清
                {1079, 1, "Ki誱 ph竝", "Ki誱 Th飝 Tinh H�"},  -- 剑垂星河
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Th竔 C鵦 Quy襫 Ph�. Quy觧 3",33},
                {"Th竔 C鵦 Ki誱 Ph�. Quy觧 2",34}
            },
        },
    },
    
    [tbFacDef.tbIds.KUNLUN] = {-- 昆仑
        szFacName       = "kunlun",
        szFacChName     = "C玭 L玭 ph竔",
        szFacShortName  = "C玭 L玭",
        nFacNumb        = tbFacDef.tbIds.KUNLUN,
        nCamp           = 3,
        nRankId         = 75,
        nSeries         = 4,
        nTaskId_Fact    = 9,
        nTaskId_90Skill = 130,
        nTaskId_137     = 137,
        nValue_137      = 69,
        n150TaskStep    = 5,
        nJinjieSkillID  = 1229,
        nFactionMapId   = 131,
        tbFactionMapPos = {1582,3175},
        szMsg           = "K� t� h玬 nay, %s gia nh藀 C玭 L玭 ph竔, b竔 ki課 c竎 v� o huynh!",
        tbSkillID       =
        {
            [10]    = {
                169,    -- 呼风法  [169]（入门）
                179,    -- 狂雷震地[179]（入门）
            },
            [20]    = {
                167,    -- 昆仑刀法[167]（10级）
                168,    -- 昆仑剑法[168]（10级）
                392,    -- 缠字诀[392]（10级）
                171,    -- 清风符  [171]（10级）
            },
            [30]    = {
                174,    -- 羁绊符  [174]（20级）
            },
            [40]    = {
                178,    -- 一气三清[178]（30级）
                172,    -- 迅雷咒  [172]（30级）
                393,    -- 缺少ID（30级）
                173,    -- 天清地浊[173]（30级）
            },
            [50]    = {
                175,    -- 欺寒傲雪[175]（40级）
                181,    -- 弃心符  [181]（40级）
            },
            [60]    = {
                176,    -- 狂风骤电[176]（50级）
                90,     -- 迷踪幻影[90 ]（50级）
            },
            [70]    = {
                275,    -- 霜傲昆仑[275]（镇派）
                182,    -- 五雷正法[182]（60级）
                630,   -- 第三资料片，增加昆仑新技能"玄天无极"
            },
            [90]    = {
                {372, 1, "o ph竝", "Ng筼 Tuy誸 Ti猽 Phong "},   -- 傲雪啸风[372]（90级）
                {375, 1, "Ki誱 ph竝", "L玦 ng C鰑 Thi猲 "},   -- 雷动九天[375]（90级）
                {394, 0, "Th玭g d鬾g", "T髖 Ti猲 T� C鑤"},   -- 醉仙错骨[394]（90级）
            },
            [120]   = {
                {717, 1, "Th玭g d鬾g", "Lng Nghi Ch﹏ Kh�"}
            },
            [150]   = {
                {1080, 1, "o ph竝", "C鰑 Thi猲 Cng Phong"},  -- 九天罡风
                {1081, 1, "Ki誱 ph竝", "Thi猲 L玦 Ch蕁 Nh筩"},  -- 天雷震岳
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Ng� Phong thu藅",50},
                {"Ng� L玦 thu藅",51},
                {"Ng� T﹎ thu藅",52}
            },
        },
    },
    [tbFacDef.tbIds.HUASHAN] = {-- 华山
        szFacName       = "huashan",
        szFacChName     = "Hoa S琻 ph竔",
        szFacShortName  = " Hoa S琻",
        nFacNumb        = tbFacDef.tbIds.HUASHAN,
        nCamp           = 3,
        nRankId         = 89,
        nSeries         = 2,
        nTaskId_Fact    = 3481, -- 门派任务变量
        nTaskId_90Skill = 3486, -- 90技能任务变量
        nTaskId_137     = 137 , -- 出师任务变量
        nValue_137      = 71  , -- 出师任务变量值
        n150TaskStep    = 9,    -- 150技能任务步骤
        nJinjieSkillID  = 1370, -- 进阶技能(浩然之气)
        nFactionMapId   = 987,
        tbFactionMapPos = {1346,3128},
        szMsg           = "%s b総 u t� h玬 nay gia nh藀 ph竔 Hoa S琻, n g苝 v� b竔 ki課 c竎 v� s� huynh, xin c竎 v� chi誹 c�!",
        tbSkillID       =
        {
            [10] = {
                1347,   -- 白虹贯日(入门)
                1372,   -- 清风送爽(入门)
            },
            [20] = {
                1349,   -- 剑宗总诀(10级)
                1374,   -- 龙扰身  (10级)
            },
            [30] = {
                1350,   -- 养吾剑法(20级)
                1375,   -- 海纳百川(20级)
            },
            [40] = {
                1351,   -- 金雁横空(30级)
                1376,   -- 龙旋剑气(30级)
            },
            [50] = {
                1354,   -- 希夷剑法(40级)
                1378,   -- 气震山河(40级)
            },
            [60] = {
                1355,   -- 天坤倒悬(50级)
                1379,   -- 气贯长虹(50级)
            },
            [70] = {
                1358,   -- 幻眼云湮(镇派)
                1360,   -- 苍松迎客(60级)
                1380,   -- 摩云剑气(60级)
            },
            [90] = {
                {1364, 1, "Hoa S琻 ki誱 t玭g", "箃 M謓h Li猲 Ho祅 Tam Ti猲 Ki誱"},  -- 夺命连环三仙剑(90级)
                {1382, 1, "Hoa S琻 kh� t玭g", "Ph竎h Th筩h Ph� Ng鋍"},       -- 劈石破玉(90级)
            },
            [120] = {
                {1365, 1, "Th玭g d鬾g", "T� H� Ki誱 Kh�"}                   -- 紫霞剑气(120级)
            },
            [150] = {
                {1369, 1, "Hoa S琻 ki誱 t玭g", "C鰑 ki誱 h頿 nh蕋"},  -- 九剑合一
                {1384, 1, "Hoa S琻 kh� t玭g", "Th莕 Quang To祅 Nhi評"},  -- 神光旋绕
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {
                {"Hoa S琻 Ki誱 T玭g-箃 m謓h li猲 ho祅 tam ti猲 ki誱", 4062},
                {"Hoa S琻 Kh� T玭g-B輈h Th筩h Ph� Ng鋍", 4063}
            },
        },
    },
    [tbFacDef.tbIds.WUHUN] = {-- 武魂
        szFacName       = "wuhun",
        szFacChName     = "V� H錸 ",
        szFacShortName  = "V� H錸",
        nFacNumb        = tbFacDef.tbIds.WUHUN,
        nCamp           = 1,
        nRankId         = 90,
        nSeries         = 3,
        nTaskId_Fact    = 4406, -- 门派任务变量
        nTaskId_JMDZ    = 4405,
        nTaskValue_JMDZ = 30*256,
        nTaskId_90Skill = 4407, -- 90技能任务变量
        nTaskId_137     = 137 , -- 出师任务变量
        nValue_137      = 71  , -- 出师任务变量值
        n150TaskStep    = 3,
        nJinjieSkillID  = 1986, -- 进阶技能(精忠报国)
        nFactionMapId   = 1042,
        tbFactionMapPos = {1530,3251},
        szMsg           = "%s t� n祔 gia nh藀 V� H錸, n b竔 ki課 c竎 v� s� huynh, xin c竎 v� chi誹 c�!",
        tbSkillID       =
        {
            [10] = {
                1972,   -- 夺寨扬旗(入门)
                1974,   -- 长缨挥斥(入门)
            },
            [20] = {
                1964,   -- 武魂堂盾法(10级)
                1975,   -- 武魂堂刀法  (10级)
            },
            [30] = {
                1976,   -- 公忠秉性(20级)
            },
            [40] = {
                1965,   -- 请缨提锐旅(30级)
                1977,   -- 撼山击(30级)
            },
            [50] = {
                1963,   -- 朝天阙(40级)
                1979,   -- 怒劈天涯(40级)
            },
            [60] = {
                1980,   -- 孤将百战酣(50级)
            },
            [70] = {
                1982,   -- 武穆遗志(镇派)
                1971,   -- 智勇超伦(60级)
                1981,   -- 饥餐胡虏肉(60级)
            },
            [90] = {
                {1967, 1, "V� H錸 h� Thu蒼", "Tr蕁 Bi猲 Th飝"},  -- 镇边陲(90级)
                {1983, 1, "V� H錸 h� o", "Kh竧 萴 Hung N� Huy誸"},  -- 渴饮匈奴血(90级)
            },
            [120] = {
                {1984, 1, "Th玭g d鬾g", "Trung Vu L璾 Phong"}                   -- 忠武流风(120级)
            },
            [150] = {
                {1969, 1, "V� H錸 h� Thu蒼", "Huy S� Di謙 L�"},  -- 挥师灭虏
                {1985, 1, "V� H錸 h� o", "Tr� Gian Di謙 N辬h"},  -- 铲奸除佞
            },
        },
        tbItemInfo      =
        {
            tbSkillBook90 = {   -- 90级技能书道具名和ID,注意！要和技能表中90级技能的顺序一一对应！
                {"V� H錸 Thu蒼 Ph竝#Tr蕁 Bi猲 Th飝",5106},
                {"V� H錸 o Ph竝#Kh竧 萴 Hung N� Huy誸",5107},
            },
        },
    },
}

-- Include("\\script\\faction_def.lua")
-- 注意：全部下标是从0开始
function tbFacDef:MakeDefine()
    self.tbFacNames             = {}
    self.tbFacChNames           = {}
    self.tbFacShortName         = {}
    self.tbCamps                = {}
    self.tbRankIds              = {}
    self.tbSeriess              = {}
    self.tbFacTaskIds           = {}
    self.tbTaskId_90Skills      = {}
    self.tbTaskId_137s          = {}
    self.tbValue_137s           = {}
    self.tb150TaskSteps         = {}
    self.tbJinjieSkillIDs       = {}
    self.tbFacMapIds            = {}
    self.tbJoinMsgs             = {}
    self.tbSkills               = {}
    self.tbItemInfos            = {}
    self.tbFacName2TaskId       = {}
    self.tbFacName2RankId       = {}
    self.tbFacName2FacId        = {}
    self.tbFacChName2FacId      = {}
    self.tbFacMapPos            = {}
    self.tb90Skills             = {}
    self.tb120Skills            = {}
    self.tb150Skills            = {}
    self.tbVipMaskIndexs        = {}
    self.tbVipWuXingYins        = {}
    for _, tbFactionInfo in self.tbWholeInfoList do
        self.tbFacNames[tbFactionInfo.nFacNumb]             = tbFactionInfo.szFacName
        self.tbFacChNames[tbFactionInfo.nFacNumb]           = tbFactionInfo.szFacChName
        self.tbFacShortName[tbFactionInfo.nFacNumb]         = tbFactionInfo.szFacShortName
        self.tbCamps[tbFactionInfo.nFacNumb]                = tbFactionInfo.nCamp
        self.tbRankIds[tbFactionInfo.nFacNumb]              = tbFactionInfo.nRankId
        self.tbSeriess[tbFactionInfo.nFacNumb]              = tbFactionInfo.nSeries
        self.tbFacTaskIds[tbFactionInfo.nFacNumb]           = tbFactionInfo.nTaskId_Fact
        self.tbTaskId_90Skills[tbFactionInfo.nFacNumb]      = tbFactionInfo.nTaskId_90Skill
        self.tbTaskId_137s[tbFactionInfo.nFacNumb]          = tbFactionInfo.nTaskId_137
        self.tbValue_137s[tbFactionInfo.nFacNumb]           = tbFactionInfo.nValue_137
        self.tb150TaskSteps[tbFactionInfo.nFacNumb]         = tbFactionInfo.n150TaskStep
        self.tbJinjieSkillIDs[tbFactionInfo.nFacNumb]       = tbFactionInfo.nJinjieSkillID
        self.tbFacMapIds[tbFactionInfo.nFacNumb]            = tbFactionInfo.nFactionMapId
        self.tbJoinMsgs[tbFactionInfo.nFacNumb]             = tbFactionInfo.szMsg

        self.tbSkills[tbFactionInfo.nFacNumb]               = tbFactionInfo.tbSkillID

        self.tbItemInfos[tbFactionInfo.nFacNumb]            = tbFactionInfo.tbItemInfo

        self.tbFacName2TaskId[tbFactionInfo.szFacName]      = tbFactionInfo.nTaskId_Fact
        self.tbFacName2RankId[tbFactionInfo.szFacName]      = tbFactionInfo.nRankId
        self.tbFacName2FacId[tbFactionInfo.szFacName]       = tbFactionInfo.nFacNumb
        self.tbFacChName2FacId[tbFactionInfo.szFacChName]   = tbFactionInfo.nFacNumb

        self.tbFacMapPos[tbFactionInfo.nFacNumb]            = {tbFactionInfo.nFactionMapId, tbFactionInfo.tbFactionMapPos[1], tbFactionInfo.tbFactionMapPos[2]}

        self.tb90Skills[tbFactionInfo.nFacNumb]             = {}
        for _,tbSkillInfo in tbFactionInfo.tbSkillID[90] do
            tinsert(self.tb90Skills[tbFactionInfo.nFacNumb], tbSkillInfo[1])
        end
        self.tb120Skills[tbFactionInfo.nFacNumb]            = {}
        for _,tbSkillInfo in tbFactionInfo.tbSkillID[120] do
            tinsert(self.tb120Skills[tbFactionInfo.nFacNumb], tbSkillInfo[1])
        end
        self.tb150Skills[tbFactionInfo.nFacNumb]            = {}
        for _,tbSkillInfo in tbFactionInfo.tbSkillID[150] do
            tinsert(self.tb150Skills[tbFactionInfo.nFacNumb], tbSkillInfo[1])
        end

        self.tbVipMaskIndexs[tbFactionInfo.nFacNumb]        = tbFactionInfo.tbItemInfo.tbVipMaskIndex
        self.tbVipWuXingYins[tbFactionInfo.nFacNumb]        = tbFactionInfo.tbItemInfo.tbVipWuXingYin
    end
end

tbFacDef:MakeDefine()

function FacName2Id(szFacName)
    for key, value in tbFacDef.tbWholeInfoList do
        if value.szFacChName == szFacName then
            return key
        end
    end

    return -1;
end

function AddFacSkill(nFacId, nLv)
    if nFacId < 0 or nFacId >= tbFacDef.nMaxFac then
        return
    end
    if not tbFacDef.tbSkills[nFacId][nLv] then
        return
    end

    for _,tbSkillInfo in tbFacDef.tbSkills[nFacId][nLv] do
        local nSkillId = 0
        local nSkillLv = 0
        if type(tbSkillInfo) == "table" then
            nSkillId = tbSkillInfo[1]
            nSkillLv = tbSkillInfo[2]
        elseif type(tbSkillInfo) == "number" then
            nSkillId = tbSkillInfo
            nSkillLv = 0
        end
        if HaveMagic(nSkillId) == -1 then
            AddMagic(nSkillId,nSkillLv)
            AddSkillEvent(nFacId, nLv, nSkillId, nSkillLv)
        end
    end

	DynamicExecute("\\script\\misc\\eventsys\\eventsys.lua", "EventSys:OnPlayerEvent", "OnLearnSkill", PlayerIndex, nLv)
end

function AddSkillEvent(nFacId, nLv, nSkillId, nSkillLv)
    if nLv == 90 then
        WriteLog("Player Get 90 Skill. szAccount = %s, szName = %s, nFacId = %d, nLv = %d, nSkillId = %d, nSkillLv = %d")
    end
end