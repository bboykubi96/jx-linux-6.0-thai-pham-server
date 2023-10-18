--�������������ڼ��㼼��������
--���巽����
--����1�������ȣ��������ٶȣ��������ظ��˺���������Χ���������Ӧ�ȼ�������
-- SkillExp(i) = Exp1*a^(i-1)*time*range

-- bingxin_xianzi : b�ng t�m ti�n t�

Include("\\script\\skill\\__skill_config.lua")

function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/_TocDoLuyenKyNang)
end


SKILLS={
	--����
	fenghua_xueyue={ --�绨ѩ��
		physicsenhance_p={{{1,5},{20,85}}},
		seriesdamage_p={{{1,1},{20,10}}},
		addskilldamage1={
			[1]={{1,336},{2,336}},
			[3]={{1,1},{20,55}}
		},
		addskilldamage2={
			[1]={{1,108},{2,108}},
			[3]={{1,1},{20,35}}
		},
		colddamage_v={
			[1]={{1,5},{20,80}},
			[3]={{1,5},{20,150}}
		},
		missle_speed_v={{{1,20},{20,24}}},
		skill_attackradius={{{1,320},{20,384}}},
		skill_cost_v={{{1,10},{20,10}}}
	},
	cuiyan_daofa={ --���̵���
		addphysicsdamage_p={{{1,45},{20,215}},{{1,-1},{2,-1}},{{1,1},{2,1}}},
		deadlystrikeenhance_p={{{1,6},{20,35,Conic}},{{1,-1},{2,-1}}}
	},
	cuiyan_shuangdao={ --����˫��
		addcoldmagic_v={{{1,20},{20,215}},{{1,-1},{2,-1}}}
	},
	huti_hanbing={ --���庮��
		meleedamagereturn_p={{{1,5},{20,20}},{{1,18*120},{20,18*120}}},
		rangedamagereturn_p={{{1,5},{20,20}},{{1,18*120},{20,18*120}}},
		skill_cost_v={{{1,40},{20,60}}}
	},
	fengjuan_canxue={ --�����ѩ
		seriesdamage_p={{{1,1},{20,10}}},
		physicsdamage_v={
			[1]={{1,25},{20,235}},
			[3]={{1,25},{20,375}},
		},
		addskilldamage1={
			[1]={{1,337},{2,337}},
			[3]={{1,1},{20,115}}
		},
		addskilldamage2={
			[1]={{1,111},{2,111}},
			[3]={{1,1},{20,35}}
		},
		missle_speed_v={{{1,20},{20,24}}},
		skill_attackradius={{{1,320},{20,384}}},
		skill_cost_v={{{1,20},{20,20}}}
	},
	bingxin_qianying={ --����ٻӰ
		lifereplenish_v={{{1,130},{20,700}},{{1,8},{2,8}}},
		skill_cost_v={{{1,21},{20,40}}}
	},
	yuda_lihua={ --����滨
		physicsenhance_p={{{1,10},{20,140}}},
		seriesdamage_p={{{1,5},{20,30}}},
		addskilldamage1={
			[1]={{1,382},{2,382}},
			[3]={{1,15},{20,50}}
		},
		colddamage_v={
			[1]={{1,10},{20,100}},
			[3]={{1,10},{20,250}}
		},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,20},{20,30}}}
	},
	xueying={ --ѩӰ
		attackspeed_v={{{1,12},{20,65},{23,73},{25,90},{28,99},{42,111},{43,119},{44,122}},{{1,18*120},{20,18*180}}},
		castspeed_v={{{1,12},{20,65},{23,73},{25,90},{28,99},{42,111},{43,119},{44,122}},{{1,18*120},{20,18*180}}},
		fastwalkrun_p={{{1,17},{20,55}},{{1,18*120},{20,18*180}}},
		skill_cost_v={{{1,40},{20,140}}}
	},
	taxue_wuhen={ --̤ѩ�޺�
--		fastwalkrun_p={{{1,17},{20,55}},{{1,18*120},{20,18*180}}},
--		skill_cost_v={{{1,24},{20,100}}}
	},
	muye_liuxing={ --��Ұ����
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		physicsenhance_p={{{1,30},{20,271}}},
		colddamage_v={
			[1]={{1,20},{20,246}},
			[3]={{1,20},{20,426}}
		},
		addskilldamage1={
			[1]={{1,336},{2,336}},
			[3]={{1,1},{20,60}}
		},
		skill_attackradius={{{1,448},{20,480},{21,480}}},
		skill_cost_v={{{1,30},{20,40}}}
	},
	fuyun_sanxue={ --����ɢѩ
		colddamage_v={
			[1]={{1,40},{20,375}},
			[3]={{1,40},{20,575}}
		},
		seriesdamage_p={{{1,5},{20,30}}},
		addskilldamage1={
			[1]={{1,338},{2,338}},
			[3]={{1,1},{20,100}}
		},
		skill_attackradius={{{1,384},{20,416}}},
		skill_cost_v={{{1,50},{20,50}}}
	},
	bihai_chaosheng={ --�̺�����
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		physicsdamage_v={
			[1]={{1,20},{20,200}},
			[3]={{1,20},{20,200}},
		},
		colddamage_v={
			[1]={{1,43},{20,704}},
			[3]={{1,43},{20,1214}}
		},
		addskilldamage1={
			[1]={{1,337},{2,337}},
			[3]={{1,2},{20,70}}
		},
		addskilldamage2={
			[1]={{1,338},{2,338}},
			[3]={{1,2},{20,65}}
		},
		skill_cost_v={{{1,65},{20,65}}}
	},
	binggu_xuexin={ --����ѩ��
		addcoldmagic_v={{{1,60},{30,350}},{{1,-1},{2,-1}}},
		addcolddamage_v={{{1,30},{30,310}},{{1,-1},{2,-1}}},
		addphysicsmagic_v={{{1,30},{30,310}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,5},{30,45,Conic}},{{1,-1},{2,-1}}},
		coldenhance_p={{{1,8},{30,10}},{{1,-1},{2,-1}}}
	},
	bingzong_wuying={ --������Ӱ
		physicsenhance_p={{{1,15},{15,100},{20,146}}},
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		colddamage_v={
			[1]={{1,10},{15,140},{20,173}},
			[3]={{1,50},{15,200},{20,276}}
		},
		missle_speed_v={{{1,20},{20,24},{21,24}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,40},{20,60}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_collideevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,382},{20,382}}
		},
		skill_showevent={{{1,0},{10,0},{10,4},{20,4}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_misslenum_v={{{1,1},{5,1},{20,5},{21,5}}},
		skill_skillexp_v={{	
			{1,SkillExpFunc(125,1.25,1,1,1)},
			{2,SkillExpFunc(250,1.15,2,1,1)},
			{3,SkillExpFunc(500,1.16,3,1,1)},
			{4,SkillExpFunc(1000,1.17,4,1,1)},
			{5,SkillExpFunc(2000,1.18,5,1,1.5)},
			{6,SkillExpFunc(3000,1.19,6,1,1.5)},
			{7,SkillExpFunc(4000,1.20,7,1,1.5)},
			{8,SkillExpFunc(5000,1.21,8,1,1.5)},
			{9,SkillExpFunc(6000,1.22,9,1,1.5)},
			{10,SkillExpFunc(7000,1.23,10,1,2)},
			{11,SkillExpFunc(8000,1.24,11,1,2)},
			{12,SkillExpFunc(9000,1.23,12,1,2)},
			{13,SkillExpFunc(10000,1.22,13,1,2)},
			{14,SkillExpFunc(11000,1.21,14,1,2)},
			{15,SkillExpFunc(12000,1.20,15,1,3)},
			{16,SkillExpFunc(13000,1.19,16,1,3)},
			{17,SkillExpFunc(14000,1.18,17,1,3)},
			{18,SkillExpFunc(15000,1.17,18,1,3)},
			{19,SkillExpFunc(16000,1.16,19,1,3)},
			{20,SkillExpFunc(18000,1.15,20,1,4)},
		}},
	},
	bingxin_yuling={ --��������
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		physicsenhance_p={{{1,15},{20,115}}},
		colddamage_v={
			[1]={{1,10},{20,940}},
			[3]={{1,10},{20,940}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_collideevent={
			[1]={{1,0},{15,0},{15,1},{20,1}},
			[3]={{1,382},{20,382}}
		},
		skill_showevent={{{1,0},{15,0},{15,4},{20,4}}},
	},
	bingxin_xuelian={ --����ѩ��
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		physicsenhance_p={{{1,15},{20,115}}},
		colddamage_v={
			[1]={{1,10},{20,220}},
			[3]={{1,10},{20,220}}
		},
	},
	bingxin_xianzi={ -- b�ng t�m ti�n t�
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		physicsdamage_v={
			[1]={{1,5},{15,100},{20,430}},
			[3]={{1,5},{15,100},{20,430}},
		},
		colddamage_v={
			[1]={{1,15},{15,240},{20,1200}},
			[3]={{1,15},{15,240},{20,1200}}
		},
		missle_speed_v={{{1,28},{20,32},{21,32}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,45},{20,75}}},
		coldenhance_p={{{1,8},{30,80}},{{1,-1},{2,-1}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_flyevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[2]={{1,3},{2,3}},
			[3]={{1,338},{20,338}}
		},
		skill_showevent={{{1,0},{10,0},{10,2},{20,2}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_skillexp_v={{	
			{1,SkillExpFunc(125,1.25,1,1,1)},
			{2,SkillExpFunc(250,1.15,2,1,1)},
			{3,SkillExpFunc(500,1.16,3,1,1)},
			{4,SkillExpFunc(1000,1.17,4,1,1)},
			{5,SkillExpFunc(2000,1.18,5,1,1.5)},
			{6,SkillExpFunc(3000,1.19,6,1,1.5)},
			{7,SkillExpFunc(4000,1.20,7,1,1.5)},
			{8,SkillExpFunc(5000,1.21,8,1,1.5)},
			{9,SkillExpFunc(6000,1.22,9,1,1.5)},
			{10,SkillExpFunc(7000,1.23,10,1,2)},
			{11,SkillExpFunc(8000,1.24,11,1,2)},
			{12,SkillExpFunc(9000,1.23,12,1,2)},
			{13,SkillExpFunc(10000,1.22,13,1,2)},
			{14,SkillExpFunc(11000,1.21,14,1,2)},
			{15,SkillExpFunc(12000,1.20,15,1,3)},
			{16,SkillExpFunc(13000,1.19,16,1,3)},
			{17,SkillExpFunc(14000,1.18,17,1,3)},
			{18,SkillExpFunc(15000,1.17,18,1,3)},
			{19,SkillExpFunc(16000,1.16,19,1,3)},
			{20,SkillExpFunc(18000,1.15,20,1,4)},
		}},
	},
	fengxue_bingtian={ --��ѩ����
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		colddamage_v={
			[1]={{1,45},{20,600}},
			[3]={{1,45},{20,600}}
		},
	},
	cuiyan120={ --����120������
		skill_cost_v={{{1,35},{20,80},{21,80}}},
		hide={{{1,1},{20,1}},{{1,5*18},{15,25*18},{20,30*18},{21,30*18}}},
		skill_mintimepercast_v={{{1,60*18},{15,45*18},{20,40*18},{21,40*18}}},
		skill_mintimepercastonhorse_v={{{1,60*18},{15,45*18},{20,40*18},{21,40*18}}},
		skill_desc=
			function(level)
				return "Th�i gian kh�i ph�c chi�u th�c: <color=orange>"..floor(Link(level,SKILLS.cuiyan120.skill_mintimepercast_v[1]) / 18).." gi�y<color>\n"
			end,
		skill_skillexp_v={{	{1,17851239},
							{2,19487603},
							{3,22760330},
							{4,27669421},
							{5,34214875},
							{6,42396694},
							{7,52214875},
							{8,63669421},
							{9,76760330},
							{10,91487603},
							{11,107851239},
							{12,135669421},
							{13,174942148},
							{14,225669421},
							{15,274418181},
							{16,344618181},
							{17,425738181},
							{18,517778181},
							{19,620738181},
							{20,620738181},
							}},	
	},
}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--����2���㣬�����κ���f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--��x2=x1, ��x=c,��ֱ����һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--����2���㣬��2���κ���f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--��x1����x2 < 0 ,y =0
--��x2=x1, ��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--����2���㣬��-2���κ���f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--��x2����x1<0, y=0,
--��x1=x2,��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--���������:Link(x,points)
--����points�ṩ��һϵ�е㣬�����ڵ��������������
--return yֵ
--x ����ֵ
--points �㼯��
--���磺points������{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}��ӳ��
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

------------------------------------------------------
--�����趨��ʽ���£�
--SKILLS={
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	����������
--}
--�磺
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--ħ������physicsenhance_p����1��1��ʱΪ35��20��ʱΪ335�����߲��Ĭ������
--			[2]={{1,0},{20,0}},
--		},--û��[3]����ʾħ������physicsenhance_p����2��Ĭ��Ϊ�κ�ʱ����0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--�����������ܡ��������¡���ħ�����Ժ���ֵ
-----------------------------------------------------------
--����GetSkillLevelData(levelname, data, level)
--levelname��ħ����������
--data����������
--level�����ܵȼ�
--return������������Ϊdata�����ܵȼ�Ϊlevel
--			ʱ��ħ������levelname����������������ľ���ֵ
-----------------------------------------------------------
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
