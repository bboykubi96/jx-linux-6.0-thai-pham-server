-----------------------------------***Script*By*Heart*Doldly***-----------------------------------------
SKILLS=
{
	sl_adskill={ --Thieu Lam
		skill_desc=
			function(level)
				return format("Dïng <color=water>[Minh KÝnh V« Di]<color> t¨ng khi b¶n th©n bÞ c«ng kÝch gÇn vµ xa <color=orange>%d%%<color> håi phôc s¸t th­¬ng, duy tr× <color=orange>%d gi©y <color>\n", floor(Link(level,SKILLS.sl_adskill.meleedamagereturn_p[1])), floor(Link(level,SKILLS.sl_adskill.meleedamagereturn_p[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1230 * 256 + 1},{20,1230 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}},
		},
		meleedamagereturn_p={{{1,10},{20,50},{21,50}},{{1,10*18},{20,15*18}}},
		rangedamagereturn_p={{{1,10},{20,50},{21,50}},{{1,10*18},{20,15*18}}},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	tw_adskill={ --Thien Vuong
		skill_desc=
			function(level)
				return format("Dïng <color=water>[Du Long Ch©n KhÝ]<color> cã <color=orange>%d%%<color> tØ lÖ lµm cho b¶n th©n miÔn dÞch víi tr¹ng th¸i tiªu cùc, duy tr× <color=orange>%d gi©y <color>\n",floor(100 - Link(level,SKILLS.tw_adskill.missle_missrate[1])), floor(Link(level,SKILLS.tw_adskill.ignorenegativestate_p[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1231 * 256 + 1},{20,1231 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 1},{19,10*18*256 + 3},{20,10*18*256 + 3}}
		},
		missle_missrate={{{1,80},{20,20},{21,20}}},
		ignorenegativestate_p=
		{
			{{1,100},{15,100},{20,100},{21,100}},
			{{1,1*18},{20,3*18},{21,3*18}},
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	wu_adskill ={ --Ngu Doc
		skill_desc=
			function(level)
				return format("Môc tiªu cã <color=orange>%d%%<color> tØ lÖ kÝch ho¹t cÊp ®é t­¬ng øng cña <color=water>[Hån NhËt Tïng Sinh]<color>\n sau mçi lÇn kÝch ho¹t trong <color=orange>%d gi©y <color> kh«ng thÓ kÝch ho¹t n÷a\n",floor(Link(level,SKILLS.wu_adskill.autoattackskill[3]) - 1*18*256), floor((Link(level,SKILLS.wu_adskill.autoattackskill[3]) / (18*256))))
			end,
		autoattackskill=
		{
			{{1,1232*256 + 1},{20,1232*256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,1*18*256 + 20},{20,1*18*256 + 60}},
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	tm_adskill ={ --Duong Mon
		skill_desc=
			function(level)
				return format("Khi sinh lùc thÊp h¬n 25%% cã <color=orange>%d%%<color> tØ lÖ ng¨n chÆn kÝch ho¹t 100%%\n sau mçi lÇn kÝch ho¹t trong <color=orange>%d gi©y <color> kh«ng thÓ kÝch ho¹t n÷a\n ", floor(Link(level,SKILLS.tm_adskill.autorescueskill[3]) - 10*18*256), floor((Link(level,SKILLS.tm_adskill.autorescueskill[3]) / (18*256))))
			end,	
		block_rate={{{1,100},{2,100}},{{1,18*2},{20,18*5}}},
		autorescueskill=
		{
			{
				{1,1233*256 + 1},{20,1233*256 + 20},
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,10*18*256 + 5},
				{20,10*18*256 + 20},
			}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
---------------------------------------------------------------------------------------------------------------------------------------------------------
	em_adskill ={ --Nga My
		skill_desc=
			function(level)
				return format("Môc tiªu cã <color=orange>%d%%<color> tØ lÖ thi triÓn cÊp ®é t­¬ng øng cña <color=water>[Tõ Hµng Phæ §é]<color>\n sau mçi lÇn kÝch ho¹t trong <color=orange>%d gi©y <color> kh«ng thÓ kÝch ho¹t n÷a\n",floor(Link(level,SKILLS.em_adskill.autoattackskill[3]) - 3*18*256),floor((Link(level,SKILLS.em_adskill.autoattackskill[3]) / (18*256))))
			end,
		autoattackskill=
		{
			{{1,1234*256 + 1},{20,1234*256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,3*18*256 + 10},{20,3*18*256 + 30}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	cy_adskill ={ --Thuy Yen
		skill_desc=
			function(level)
				return format("Dïng <color=water>[Dung TuyÕt V« Tung]<color> lµm cho b¶n th©n tµng h×nh, mçi lÇn tµng h×nh duy tr× <color=orange>%d gi©y <color>\n", floor(Link(level,SKILLS.cy_adskill.hide[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1235 * 256 + 1},{20,1235 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,20*18*256 + 5},{19,10*18*256 + 10},{20,10*18*256 + 10}}
		},
		hide=
		{
			{{1,2},{20,5}},
			{{1,2*18},{20,5*18}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
	tr_adskill ={ --Thien Nhan
		autoreplyskill=
		{
			{{1,1236 * 256 + 1},{20,1236 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 1},{19,20*18*256 + 3},{20,20*18*256 + 3}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
---------------------------------------------------------------------------------------------------------------------------------
	gb_adskill={ --Cai Bang
		skill_desc=
			function(level)
				return format("Khi dïng <color=water>[Thiªn Hµnh KhÝ C«ng]<color> cã thÓ n©ng cao[Hçn Thiªn KhÝ C«ng]tØ lÖ kÝch ho¹t <color=orange>%d%%<color>, \n vµ bá qua háa phßng cña ®èi ph­¬ng: <color=orange>%d%% (d­¬ng) <color>, duy tr× hiÖu øng <color=orange>%d gi©y <color>\n ",floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[1])),floor(Link(level,SKILLS.gb_adskill.anti_fireres_yan_p[1])),floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1237 * 256 + 1},{20,1237 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 10},{20,20*18*256 + 10}}
		},
		enhance_714_auto=
		{
			{{1,2},{20,20}},
			{{1,5*18 },{20,15*18}}
		},
		anti_fireres_yan_p=
		{
			{{1,6},{20,20}},
			{{1,5*18 },{20,15*18}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	wd_adskill ={ --Vo Dang
		skill_desc=
			function(level)
				return format("Khi dïng <color=water>[¢m D­¬ng KhÝ QuyÕt]<color> cã thÓ lµm cho <color=orange>%d%%<color> s¸t th­¬ng chuyÓn hãa thµnh néi lùc, duy tr× hiÖu øng <color=orange>%d gi©y <color>\n",floor(Link(level,SKILLS.wd_adskill.damage2addmana_p[1])),floor(Link(level,SKILLS.wd_adskill.damage2addmana_p[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1238 * 256 + 1},{20,1238 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}}
		},
		damage2addmana_p=
		{
			{{1,50},{20,200}},
			{{1,5*18 },{20,15*18}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	kl_adskill ={ --Con Lon
		skill_desc=
			function(level)
				return format("Khi dïng <color=water>[Tiªn Thiªn C­¬ng KhÝ]<color> cã thÓ n©ng cao L­ìng Nghi Ch©n KhÝ]tØ lÖ kÝch ho¹t <color=orange>%d%%<color>, \n vµ bá qua l«i phßng cña ®èi ph­¬ng: <color=orange>%d%% (d­¬ng) <color>, duy tr× hiÖu øng <color=orange>%d gi©y <color>\n ",floor(Link(level,SKILLS.kl_adskill.enhance_717_auto[1])), floor(Link(level,SKILLS.kl_adskill.anti_lightingres_yan_p[1])),floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1239 * 256 + 1},{20,1239 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}}
		},
		enhance_717_auto=
		{
			{{1,3},{20,15}},
			{{1,5*18 },{20,15*18}}
		},
		anti_lightingres_yan_p=
		{
			{{1,5},{20,15}},
			{{1,5*18 },{20,15*18}}
		},
		skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
-----------------------------------------------------Hoa Son-------------------------------------------------------------------------------------------------------------------------------------
	haoran_zhiqi={ --Hao Nhien Chi Khi 180
		item_reserve8={
			[1]={{1,1},{20,5}},
			[2]={{1,1},{20,1}},
			[3]={{1,1},{19,1},{20,2},{21,2}},
		},
		skill_desc=
			function(level)
				local nMag = floor(Link(level,SKILLS.haoran_zhiqi.addblockrate[3]))
				local nPois = floor(Link(level,SKILLS.haoran_zhiqi.addblockrate[1]))
				return format ("Xung quanh mçi +%d c¸ nh©n +%d%% tØ lÖ hãa gi¶i s¸t th­¬ng.", nMag, nPois)
			end,
			skill_skillexp_v={{
				{1,10000},
				{2,20000},
				{3,30000},
				{4,40000},
				{5,50000},
				{6,60000},
				{7,70000},
				{8,80000},
				{9,90000},
				{10,100000},
				{11,110000},
				{12,120000},
				{13,130000},
				{14,140000},
				{15,150000},
				{16,160000},
				{17,170000},
				{18,180000},
				{19,190000},
				{20,200000},
			},
		},
	},
------------------------------------------------------------------Vò Hån---------------------------------------------------------------------------------------------------------------------------------------------
	jingzhongbaoguo= --TËn Trung B¸o Quèc
	{
		skill_desc=
			function(level)
				return "<color=water>[Dòng C¶m TiÕn Lªn]<color>, ".."Gióp b¶n th©n t¨ng tèc ®é di chuyÓn <color=orange>"..floor(Link(level,SKILLS.fenyongdangxian.fastwalkrun_p[1]))..
				"%<color> tèc ®é di chuyÓn trong <color=orange>"..floor(Link(level,SKILLS.fenyongdangxian.fastwalkrun_p[2]) / 18).."<color> gi©y \n"
			end,	
		autoreplyskill=
		{
			{
				{1,1874*256 + 1},{20,1874*256 + 20},{21,1874*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{20,15*18*256 + 20},{21,15*18*256 + 21}
			}
		},
	},

	 fenyongdangxian={ --§Êu Dòng §­¬ng Tiªn
		fastwalkrun_p={{{1,10},{20,30}},{{1,5*18},{20,13*18},{21,13*18}}},
	 },
}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(type(SKILLS[data][levelname]) == "function") then
		return SKILLS[data][levelname](level)
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;