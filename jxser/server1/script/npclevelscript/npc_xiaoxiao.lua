-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com Create by yfeng 2004-05-20 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com ����2���㣬�����κ���f(x)=k*x+b
-- script viet hoa By http://tranhba.com y= (y2-y1)*(x-x1)/(x2-x1)+y1
-- script viet hoa By http://tranhba.com  khi x2=x1, c� x=c, n�n th�ng t�p l� m�t c�i th�ng ��ng v�i x tr�c ��ch th�ng t�p 
-- script viet hoa By http://tranhba.com  ��y l� c� th� l�y ���c y= t�y � tr� gi� 
-- script viet hoa By http://tranhba.com  v� v�y , n�u nh� �� bi�t hai gi� (x1,y1),(x2,y2) nh�ng c�u xin ph�i qu� n�y 2 �i�m ��ch 
-- script viet hoa By http://tranhba.com  h�m s� v� # 
function Line(x,x1,y1,x2,y2) 
if(x2==x1) then 
return y2 
end 
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com ����2���㣬��2���κ���f(x)=a*x2+c
-- script viet hoa By http://tranhba.com y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
-- script viet hoa By http://tranhba.com  khi x1 ho�c l� x2 < 0 ,y =0 
-- script viet hoa By http://tranhba.com  khi x2=x1, c� x=c, l� m�t c�i th�ng ��ng v�i x tr�c ��ch th�ng t�p 
-- script viet hoa By http://tranhba.com  ��y l� c� th� l�y ���c y= t�y � tr� gi� 
-- script viet hoa By http://tranhba.com  v� v�y , n�u nh� �� bi�t hai gi� (x1,y1),(x2,y2) nh�ng c�u xin ph�i qu� n�y 2 �i�m ��ch 
-- script viet hoa By http://tranhba.com  h�m s� v� #extrac 
function Conic(x,x1,y1,x2,y2) 
if((x1 < 0) or (x2<0))then 
return 0 
end 
if(x2==x1) then 
return y2 
end 
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com ����2���㣬��-2���κ���f(x)=a*sqrt(x2)+c
-- script viet hoa By http://tranhba.com y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
-- script viet hoa By http://tranhba.com  khi x2 ho�c l� x1<0, y=0, 
-- script viet hoa By http://tranhba.com  khi x1=x2, c� x=c, l� m�t c�i th�ng ��ng v�i x tr�c ��ch th�ng t�p 
-- script viet hoa By http://tranhba.com  ��y l� c� th� l�y ���c y= t�y � tr� gi� 
-- script viet hoa By http://tranhba.com  v� v�y , n�u nh� �� bi�t hai gi� (x1,y1),(x2,y2) nh�ng c�u xin ph�i qu� n�y 2 �i�m ��ch 
-- script viet hoa By http://tranhba.com  h�m s� v� #extrac 
function Extrac(x,x1,y1,x2,y2) 
if((x1 < 0) or (x2<0))then 
return 0 
end 
if(x2==x1) then 
return y2 
end 
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  mi�u h�i li�n ti�p tuy�n :Link(x,points) 
-- script viet hoa By http://tranhba.com  c�n c� points cung c�p m�t lo�t �i�m , d�ng l�n c�n ��ch hai �i�m mi�u h�i ���ng cong 
-- script viet hoa By http://tranhba.com return y tr� gi� 
-- script viet hoa By http://tranhba.com x ��a v�o tr� gi� 
-- script viet hoa By http://tranhba.com points �i�m t�p h�p 
-- script viet hoa By http://tranhba.com  h�nh nh� #points l� h�nh nh� {{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}} ��ch �nh x� 
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


-- script viet hoa By http://tranhba.com  t�nh to�n NPC thu�c t�nh 
-- script viet hoa By http://tranhba.com  c� th� t�nh to�n ��ch thu�c t�nh bao g�m # 
-- script viet hoa By http://tranhba.com Exp#Life#LifeReplenish#AttackRating#Defense#MinDamage#MaxDamage# 
-- script viet hoa By http://tranhba.com Level1#Level2#Level3#Level4 . 



-- script viet hoa By http://tranhba.com  l�y ���c d�ng | ph�n chia ��ch tham s� ��ch h�m s� . 

function GetParam(strParam, index) 
nLastBegin = 1 
for i=1, index - 1 do 
nBegin = strfind(strParam, "|", nLastBegin) 
nLastBegin = nBegin + 1
end; 
num = 1 

strnum = strsub(strParam, nLastBegin) 
nEnd = strfind(strnum, "|") 
if nEnd == nil then 
return strnum 
end 
str1 = strsub(strnum,1,nEnd -1); 
return str1 
end; 



-- script viet hoa By http://tranhba.com  nh�p kh�u ch� h�m s� , th� nh�t tham s� v� NPC c�p b�c , ch� hai tham s� v� s� li�u lo�i h�nh , ng��i th� ba tham s� l� truy�n v�o ��ch npcs trung ��ch t� ph� chu�i . 
-- script viet hoa By http://tranhba.com  b� m�t npc ��n ��c d�ng ch�n v�n c� th� kh�ng c�n nh�c ng��i th� ba tham s� ��ch ��a v�o . 
function GetNpcLevelData(Series, Level, StyleName, ParamStr) 
if(StyleName=="Level1") then 
return floor(Link(Level,{{1,1},{100,35}})) 
end; 
if(StyleName=="Level2" or StyleName=="Level3" or StyleName=="Level4") then 
return floor(Link(Level,{{1,1},{100,60},{101,60}})) 
end; 

if(StyleName=="AIMode") then -- script viet hoa By http://tranhba.com  ch� ��ng tr� v� m�u AI m� th�c 
return 2 
end 
if(StyleName=="AIParam1") then -- script viet hoa By http://tranhba.com  v� ��ch ng��i l�c , tu�n tra x�c su�t 20% 
return floor(Link(Level,{{1,10},{20,20},{60,50},{100,80},{101,80}})) 
end 
if(StyleName=="AIParam2") then -- script viet hoa By http://tranhba.com  c�n th�a l�i sinh m�ng th�p h�n c�i n�y ph�n tr�m so ��ch th�i �i�m thi h�nh t��ng �ng x� l� 
return floor(Link(Level,{{1,50},{80,50},{81,25},{100,25}})) 
end 
if(StyleName=="AIParam3") then -- script viet hoa By http://tranhba.com  � AIParam2 ��ch t�nh hu�ng xu�t hi�n th�i �i�m c� hay kh�ng thi h�nh t��ng �ng x� l� x�c su�t 
return floor(Link(Level,{{1,10},{80,10},{81,5},{100,5}})) 
end 
if(StyleName=="AIParam4") then -- script viet hoa By http://tranhba.com  � AIParam2 ��ch t�nh hu�ng xu�t hi�n c�ng quy�t ��nh mu�n thi h�nh t��ng �ng x� l� , s� d�ng h�i ph�c 
-- script viet hoa By http://tranhba.com  k� n�ng ��ch x�c su�t ��i �ng SkillList b�n trong k� n�ng 1 
return 100 
end 
if(StyleName=="AIParam5") then -- script viet hoa By http://tranhba.com skill2 ��ch s� d�ng x�c su�t : b�nh th��ng v�t l� c�ng k�ch 
return floor(Link(Level,{{1,25},{50,25},{50,10},{80,10},{80,0},{100,0}})) 
end 
if(StyleName=="AIParam6") then -- script viet hoa By http://tranhba.com skill3 ��ch s� d�ng x�c su�t : ��c th� v�t l� c�ng k�ch 
return floor(Link(Level,{{1,15},{50,15},{50,40},{80,40},{80,38},{100,38}})) 
end 
if(StyleName=="AIParam7") then -- script viet hoa By http://tranhba.com skill4 ��ch s� d�ng x�c su�t : t�m xa c�ng k�ch 
return floor(Link(Level,{{1,0},{50,0},{50,5},{80,5},{80,7},{100,7}})) 
end 
if(StyleName=="AIParam8") then -- script viet hoa By http://tranhba.com  ��i ky x�c su�t 
return 20 
end 
if(StyleName=="AIParam9") then -- script viet hoa By http://tranhba.com  tu�n tra x�c su�t 
return floor(Link(Level,{{1,20},{50,40},{80,60},{100,70},{101,70}})) 
end 

if(StyleName=="Skill1") then -- script viet hoa By http://tranhba.com  tr� v� m�u # tr� li�u thu�t 
return 101 
end 
if(StyleName=="Skill2" or StyleName=="Skill3") then -- script viet hoa By http://tranhba.com  g�n tr�nh ng� h�nh c�ng k�ch 
if(Series==0) then 
return 419 
elseif(Series==1) then 
return 420 
elseif(Series==2) then 
return 421 
elseif(Series==3) then 
return 422 
elseif(Series==4) then 
return 423 
end 
return 418 
end 
if(StyleName=="Skill4" ) then -- script viet hoa By http://tranhba.com  t�m xa ng� h�nh c�ng k�ch 
if(Level < 60 ) then -- script viet hoa By http://tranhba.com 60 c�p tr��c kia v� t�m xa c�ng k�ch 
return 418 
end 
if(Series==0) then 
return 424 
elseif(Series==1) then 
return 425 
elseif(Series==2) then 
return 426 
elseif(Series==3) then 
return 427 
elseif(Series==4) then 
return 428 
end 
return 418 
end 
if(StyleName=="PhysicalDamageBase") then -- script viet hoa By http://tranhba.com  b�n ngo�i ph� c�ng k�ch 
return 2*floor(5*Level*2/3) 
end; 
if(StyleName=="PhysicalMagicBase") then -- script viet hoa By http://tranhba.com  b�n trong ph� c�ng k�ch 
if(Series==0) then 
return 2*floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3) 
elseif(Series==1) then 
return 0 
elseif(Series==2) then 
return 0 
elseif(Series==3) then 
return 0 
elseif(Series==4) then 
return 0 
end 
return 100 
end; 
if(StyleName=="PoisonDamageBase") then -- script viet hoa By http://tranhba.com  b�n ngo�i ��c c�ng k�ch 
return 0 
end; 
if(StyleName=="PoisonMagicBase") then -- script viet hoa By http://tranhba.com  b�n trong ��c c�ng k�ch 
if(Series==0) then 
return 0 
elseif(Series==1) then 
return 2*floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/20)*2/3) 
elseif(Series==2) then 
return 0 
elseif(Series==3) then 
return 0 
elseif(Series==4) then 
return 0 
end 
return 100 
end; 
if(StyleName=="ColdDamageBase") then -- script viet hoa By http://tranhba.com  b�n ngo�i b�ng c�ng k�ch 
return 0 
end; 
if(StyleName=="ColdMagicBase") then -- script viet hoa By http://tranhba.com  b�n trong b�ng c�ng k�ch 
if(Series==0) then 
return 0 
elseif(Series==1) then 
return 0 
elseif(Series==2) then 
return 2*floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3) 
elseif(Series==3) then 
return 0 
elseif(Series==4) then 
return 0 
end 
return 100 
end; 
if(StyleName=="FireDamageBase") then -- script viet hoa By http://tranhba.com  b�n ngo�i l�a c�ng k�ch 
return 0 
end; 
if(StyleName=="FireMagicBase") then -- script viet hoa By http://tranhba.com  n�i h�a c�ng k�ch 
if(Series==0) then 
return 0 
elseif(Series==1) then 
return 0 
elseif(Series==2) then 
return 0 
elseif(Series==3) then 
return 2*floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3) 
elseif(Series==4) then 
return 0 
end 
return 100 
end; 
if(StyleName=="LightingDamageBase") then -- script viet hoa By http://tranhba.com  b�n ngo�i l�i c�ng k�ch 
return 0 
end 
if(StyleName=="LightingMagicBase") then -- script viet hoa By http://tranhba.com  b�n trong l�i c�ng k�ch 
if(Series==0) then 
return 0 
elseif(Series==1) then 
return 0 
elseif(Series==2) then 
return 0 
elseif(Series==3) then 
return 0 
elseif(Series==4) then 
return 2*floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3) 
end 
return 100 
end; 
if(StyleName=="PhysicsResist") then -- script viet hoa By http://tranhba.com  ph� kh�ng 
if(Series==3) then 
return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}})) 
elseif(Series==0) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==2) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==1) then 
return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}})) 
elseif(Series==4) then 
return floor(Link(Level,{{1,0},{100,25}})) 
end 
return 0 
end 
if(StyleName=="ColdResist") then -- script viet hoa By http://tranhba.com  b�ng ph�ng 
if(Series==4) then 
return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}})) 
elseif(Series==2) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==0) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==3) then 
return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}})) 
elseif(Series==1) then 
return floor(Link(Level,{{1,0},{100,25}})) 
end 
return 0 
end 
if(StyleName=="FireResist") then -- script viet hoa By http://tranhba.com  l�a ph�ng 
if(Series==2) then 
return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}})) 
elseif(Series==3) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==1) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==0) then 
return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}})) 
elseif(Series==4) then 
return floor(Link(Level,{{1,0},{100,25}})) 
end 
return 0 
end 
if(StyleName=="LightResist") then -- script viet hoa By http://tranhba.com  l�i ph�ng 
if(Series==1) then 
return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}})) 
elseif(Series==3) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==0) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==2) then 
return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}})) 
elseif(Series==4) then 
return floor(Link(Level,{{1,0},{100,25}})) 
end 
return 0 
end 
if(StyleName=="PoisonResist") then -- script viet hoa By http://tranhba.com  ��c ph�ng 
if(Series==0) then 
return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}})) 
elseif(Series==3) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==1) then 
return floor(Link(Level,{{1,0},{100,25}})) 
elseif(Series==4) then 
return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}})) 
elseif(Series==2) then 
return floor(Link(Level,{{1,0},{100,25}})) 
end 
return 0 
end 


Param1 = GetParam(ParamStr,1); 
Param2 = GetParam(ParamStr,2); 

result = GetData(Level, Param1, Param2); 
return result; 
end; 

-- script viet hoa By http://tranhba.com  m�u ch�t s� li�u ��ch t�nh to�n h�m s� 
function GetNpcKeyData(Series, Level, StyleName, Param1, Param2, Param3) 
if (StyleName == "Exp") then 
return GetExp(Level, Param1, Param2); 
end; 

if (StyleName == "Life") then 
return GetLife(Level, Param1, Param2); 
end; 

if (StyleName == "AttackRating") then 
if(Level < 30) then 
return GetAttackRating(Level, Param1, Param2) 
end 
return floor(GetAttackRating(Level, Param1, Param2)*1.2); 
end; 

if (StyleName == "Defense") then 
if(Level < 30) then 
return GetDefense(Level, Param1, Param2) 
end 
return floor(GetDefense(Level, Param1, Param2)*1.1); 
end; 

if (StyleName == "MinDamage") then 
return GetMinDamage(Level, Param1, Param2); 
end; 

if (StyleName == "MaxDamage") then 
return GetMaxDamage(Level, Param1, Param2); 
end; 

result = Param1 * Level * Level + Param2 * Level + Param3;
return result; 
end; 

-- script viet hoa By http://tranhba.com  th�ng d�ng tuy�n t�nh t�nh to�n c�ng th�c . 
function GetData(Level, Param1, Param2) 
result = Param2 * Level + Param1;
return floor(result); 
end; 

-- script viet hoa By http://tranhba.com ���µ�DataPara1��ʾ���Ժ���y=kx+b�е�b��DataPara2��ʾk��
-- script viet hoa By http://tranhba.com  kinh nghi�m tr� gi� t�nh to�n c�ng th�c 
function GetExp(Level, Param1, Param2) 
return floor(Param1); 
end; 

-- script viet hoa By http://tranhba.com  sinh m�ng tr� gi� t�nh to�n h�m s� 
function GetLife(Level, Param1, Param2) 
return floor(Param1); 
end; 

-- script viet hoa By http://tranhba.com  m�nh trung t� s� t�nh to�n h�m s� 
function GetAttackRating(Level, Param1, Param2) 

if (Level <= 10) then 
DataPara1=10 
DataPara2=3 
return GetData(Level, DataPara1, DataPara2) 
end; 

if (Level <= 20) then 
DataPara1=50 
DataPara2=4 
return GetData(Level-10, DataPara1, DataPara2) 
end; 

if (Level <= 30) then 
DataPara1=100 
DataPara2=5 
return GetData(Level-20, DataPara1, DataPara2) 
end; 

if (Level <= 40) then 
DataPara1=250 
DataPara2=5 
return GetData(Level-30, DataPara1, DataPara2) 
end; 

if (Level <= 50) then 
DataPara1=400 
DataPara2=5 
return GetData(Level-40, DataPara1, DataPara2) 
end; 

if (Level <= 60) then 
DataPara1=500 
DataPara2=5 
return GetData(Level-50, DataPara1, DataPara2) 
end; 

if (Level <= 70) then 
DataPara1=600 
DataPara2=5 
return GetData(Level-60, DataPara1, DataPara2) 
end; 

if (Level <= 80) then 
DataPara1=700 
DataPara2=5 
return GetData(Level-70, DataPara1, DataPara2) 
end; 

if (Level <= 90) then 
DataPara1=800 
DataPara2=5 
return GetData(Level-80, DataPara1, DataPara2) 
end; 

if (Level <= 100) then 
DataPara1=900 
DataPara2=5 
return GetData(Level-90, DataPara1, DataPara2) 
end; 

result = Param2 * Level + Param1;
return floor(result); 
end; 



-- script viet hoa By http://tranhba.com  n� tr�nh t� s� t�nh to�n h�m s� . 
function GetDefense(Level, Param1, Param2) 

if (Level <= 10) then 
DataPara1=10 
DataPara2=0 
return GetData(Level, DataPara1, DataPara2) 
end; 

if (Level <= 20) then 
DataPara1=50 
DataPara2=3 
return GetData(Level-10, DataPara1, DataPara2) 
end; 

if (Level <= 30) then 
DataPara1=100 
DataPara2=5 
return GetData(Level-20, DataPara1, DataPara2) 
end; 

if (Level <= 40) then 
DataPara1=150 
DataPara2=5 
return GetData(Level-30, DataPara1, DataPara2) 
end; 

if (Level <= 50) then 
DataPara1=200 
DataPara2=5 
return GetData(Level-40, DataPara1, DataPara2) 
end; 

if (Level <= 60) then 
DataPara1=300 
DataPara2=5 
return GetData(Level-50, DataPara1, DataPara2) 
end; 

if (Level <= 70) then 
DataPara1=400 
DataPara2=5 
return GetData(Level-60, DataPara1, DataPara2) 
end; 

if (Level <= 80) then 
DataPara1=500 
DataPara2=5 
return GetData(Level-70, DataPara1, DataPara2) 
end; 

if (Level <= 90) then 
DataPara1=600 
DataPara2=5 
return GetData(Level-80, DataPara1, DataPara2) 
end; 

if (Level <= 100) then 
DataPara1=800 
DataPara2=10 
return GetData(Level-90, DataPara1, DataPara2) 
end; 

result = Param2 * Level + Param1;
return floor(result); 
end; 


-- script viet hoa By http://tranhba.com  nh� nh�t t�n th��ng t�nh to�n h�m s� 
function GetMinDamage(Level, Param1, Param2) 

if (Level <= 10) then 
DataPara1=3 
DataPara2=0.3 
return floor(GetData(Level, DataPara1, DataPara2)) 
end; 

if (Level <= 20) then 
DataPara1=8 
DataPara2=0.3 
return floor(GetData(Level-10, DataPara1, DataPara2)) 
end; 

if (Level <= 30) then 
DataPara1=13 
DataPara2=0.4 
return floor(GetData(Level-20, DataPara1, DataPara2)) 
end; 

if (Level <= 40) then 
DataPara1=20 
DataPara2=0.5 
return floor(GetData(Level-30, DataPara1, DataPara2)) 
end; 

if (Level <= 50) then 
DataPara1=29 
DataPara2=0.5 
return floor(GetData(Level-40, DataPara1, DataPara2)) 
end; 

if (Level <= 60) then 
DataPara1=39 
DataPara2=0.6 
return floor(GetData(Level-50, DataPara1, DataPara2)) 
end; 

if (Level <= 70) then 
DataPara1=50 
DataPara2=0.7 
return floor(GetData(Level-60, DataPara1, DataPara2)) 
end; 

if (Level <= 80) then 
DataPara1=65 
DataPara2=0.8 
return floor(GetData(Level-70, DataPara1, DataPara2)) 
end; 

if (Level <= 90) then 
DataPara1=85 
DataPara2=0.9 
return floor(GetData(Level-80, DataPara1, DataPara2)) 
end; 

if (Level <= 100) then 
DataPara1=112 
DataPara2=1 
return floor(GetData(Level-90, DataPara1, DataPara2)) 
end; 

result = Param2 * Level + Param1;
return floor(result); 
end; 


-- script viet hoa By http://tranhba.com  l�n nh�t t�n th��ng t�nh to�n h�m s� 
function GetMaxDamage(Level, Param1, Param2) 

if (Level <= 10) then 
DataPara1=3 
DataPara2=0.3 
return floor(GetData(Level, DataPara1, DataPara2)) 
end; 

if (Level <= 20) then 
DataPara1=8 
DataPara2=0.3 
return floor(GetData(Level-10, DataPara1, DataPara2)) 
end; 

if (Level <= 30) then 
DataPara1=13 
DataPara2=0.4 
return floor(GetData(Level-20, DataPara1, DataPara2)) 
end; 

if (Level <= 40) then 
DataPara1=20 
DataPara2=0.5 
return floor(GetData(Level-30, DataPara1, DataPara2)) 
end; 

if (Level <= 50) then 
DataPara1=29 
DataPara2=0.5 
return floor(GetData(Level-40, DataPara1, DataPara2)) 
end; 

if (Level <= 60) then 
DataPara1=39 
DataPara2=0.6 
return floor(GetData(Level-50, DataPara1, DataPara2)) 
end; 

if (Level <= 70) then 
DataPara1=50 
DataPara2=0.7 
return floor(GetData(Level-60, DataPara1, DataPara2)) 
end; 

if (Level <= 80) then 
DataPara1=65 
DataPara2=0.8 
return floor(GetData(Level-70, DataPara1, DataPara2)) 
end; 

if (Level <= 90) then 
DataPara1=85 
DataPara2=0.9 
return floor(GetData(Level-80, DataPara1, DataPara2)) 
end; 

if (Level <= 100) then 
DataPara1=112 
DataPara2=1 
return floor(GetData(Level-90, DataPara1, DataPara2)) 
end; 

result = Param2 * Level + Param1;
return floor(result); 
end; 
