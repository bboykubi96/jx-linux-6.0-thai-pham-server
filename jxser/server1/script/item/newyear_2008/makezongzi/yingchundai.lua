tbclass_newyear2008_yingchundai = {} 
tbclassname = tbclass_newyear2008_yingchundai 
tbclassname.TITLE = " ngh�nh xu�n ��i ." 
tbclassname.tbdate = {} 
tbclassname.tbdate.nstart = 802020000 
tbclassname.tbdate.nend = 803022400 
tbclassname.mareial = 
{ 
ntotalprob = 100, 
tbitem = { 
{G=6,D=1,P=1653,szname=" l� c�y ",prob=38.80}, 
{G=6,D=1,P=1654,szname=" nhu th��c ",prob=29.10}, 
{G=6,D=1,P=1655,szname=" h�t ��u ",prob=19.40}, 
{G=6,D=1,P=1656,szname=" th�t heo ",prob=9.70 }, 
{G=6,D=1,P=1657,szname=" ph�c " ,prob=1.00 }, 
{G=6,D=1,P=1658,szname=" l�c " ,prob=1.00 }, 
{G=6,D=1,P=1659,szname=" th� " ,prob=1.00 }, 
}, 
} 
function main(sel) 
if tbclassname:checkdate() == 0 then 
Say("Ngh�nh xu�n ��i �� qua k� , kh�ng th� m� ra ",0) 
return 0 
end 
if CalcFreeItemCellCount() < 1 then 
Say("Ch� tr�ng ch�a �� , th�nh an ��ng h�ng m�t c�i trang b� .",0) 
return 1 
end 
tbclassname:getitem() 
end 

function tbclassname:getitem() 
local tbclass = self.mareial 
local p = random(1,(tbclass.ntotalprob*100)) 
local nsum = 0 
for ni,nitem in tbclass.tbitem do 
				nsum = nsum + (nitem.prob*tbclass.ntotalprob)
if nsum >= p then 
AddItem(nitem.G,nitem.D,nitem.P,1,0,0) 
local szstr = format("Ch�c m�ng ng��i ��t ���c 1 c� <color=yellow>%s<color>",nitem.szname) 
Msg2Player(szstr) 
self:sdl_writelog(self.TITLE,szstr) 
return 
end 
end 
end 
function tbclassname:checkdate() 
local ndate = tonumber(GetLocalDate("%y%m%d%H%M")) 
if ndate >= self.tbdate.nstart and ndate <= self.tbdate.nend then 
return 1 
end 
return 0 
end 
function tbclassname:sdl_writelog(sztitle,szevent) -- script viet hoa By http://tranhba.com  ghi ch�p ,sztitle= s� ki�n t�n ,szevent= s� ki�n n�i dung 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",sztitle,GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szevent)); 
end
