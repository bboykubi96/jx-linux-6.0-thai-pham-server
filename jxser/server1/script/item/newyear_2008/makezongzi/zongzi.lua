tbclass_newyear2008_zongbing = {} 
tbclassname = tbclass_newyear2008_zongbing 
tbclassname.TITLE = " tèng tö " 
tbclassname.LIMIT_LEVEL = 50 
tbclassname.tbdate = {} 
tbclassname.tbdate.nstart = 802020000 
tbclassname.tbdate.nend = 803312400 
tbclassname.mareial = 
{ 
nexpmax = 2000000000, 
ntask = 1872, 
tbitem = { 
{ 
G=6,D=1,P=1662,szname=" th­îng ®¼ng tèng tö ",nexp=2000000, 
tbrandomitem = 
{ 
ntotalprop = 100, 
tbitem = 
{ 
{G=6,D=1,P=72,LV=1,szname=" Thiªn S¬n b¶o lé ",prob=14.89}, 
{G=6,D=1,P=125,LV=1,szname=" hoa quÕ r­îu ",prob=16.0}, 
{G=0,D=11,P=201,LV=1,szname=" ®Þa c«ng ®Çu mÆt n¹ ",prob=10.90}, 
{G=6,D=1,P=1482,LV=1,szname=" ngäc bµi ",prob=0.01 }, 
{G=6,D=1,P=1481,LV=1,szname=" kim bµi " ,prob=0.05 }, 
{G=6,D=1,P=1480,LV=1,szname=" ng©n bµi " ,prob=5.00 }, 
{G=6,D=1,P=147,LV=3,szname="3 cÊp huyÒn tinh qu¸ng th¹ch " ,prob=22.0 }, 
{G=6,D=1,P=147,LV=4,szname="4 cÊp huyÒn tinh qu¸ng th¹ch ",prob=16.0}, 
{G=6,D=1,P=147,LV=5,szname="5 cÊp huyÒn tinh qu¸ng th¹ch ",prob=2.0}, 
{G=6,D=1,P=147,LV=6,szname="6 cÊp huyÒn tinh qu¸ng th¹ch ",prob=1.0}, 
{G=6,D=1,P=147,LV=7,szname="7 cÊp huyÒn tinh qu¸ng th¹ch ",prob=0.10 }, 
{G=6,D=1,P=147,LV=8,szname="8 cÊp huyÒn tinh qu¸ng th¹ch " ,prob=0.05 }, 
{G=6,D=1,P=71,LV=1,szname=" tiªn th¶o lé " ,prob=11.00 }, 
{G=6,D=1,P=1181,LV=1,szname=" ®Æc biÖt tiªn th¶o lé " ,prob=1.0 }, 
} 
} 
}, 
{G=6,D=1,P=1663,szname=" ®îi l©u tèng tö ",nexp=1500000, 
tbrandomitem = 
{ 
ntotalprop = 100, 
tbitem = 
{ 
{G=6,D=1,P=124,LV=1,szname=" phóc duyªn lé # ®¹i ) ",prob=19.5}, 
{G=6,D=1,P=72,LV=1,szname=" Thiªn S¬n b¶o lé ",prob=15.0}, 
{G=6,D=1,P=73,LV=1,szname=" tr¨m qu¶ lé ",prob=14.0}, 
{G=6,D=1,P=71,LV=1,szname=" tiªn th¶o lé ",prob=7.0 }, 
{G=6,D=1,P=125,LV=1,szname=" hoa quÕ r­îu " ,prob=17.0 }, 
{G=0,D=11,P=201,LV=1,szname=" ®Þa c«ng ®Çu mÆt n¹ " ,prob=15.0 }, 
{G=6,D=1,P=147,LV=3,szname="3 cÊp huyÒn tinh qu¸ng th¹ch " ,prob=7.0 }, 
{G=6,D=1,P=147,LV=4,szname="4 cÊp huyÒn tinh qu¸ng th¹ch " ,prob=5.0 }, 
{G=6,D=1,P=147,LV=5,szname="5 cÊp huyÒn tinh qu¸ng th¹ch " ,prob=0.5 }, 
} 
} 
}, 
{G=6,D=1,P=1664,szname=" mét lo¹i tèng tö ",nexp=500000}, 
}, 
} 

function main(sel) 

local prop = tbclassname:pack(GetItemProp(sel)) 
local szkey = format("%s,%s,%s",prop[1],prop[2],prop[3]) 
local tbitem = tbclassname:selectitem(szkey) 
if tbitem == nil then 
Say("VËt phÈm sai lÇm , xin liªn l¹c nh©n viªn qu¶n lý ",0) 
return 1 
end 
if tbclassname:check() == 0 then 
return 1 
elseif tbclassname:check() == 2 then 
return 0 
end 
tbclassname:useitem(tbitem.nexp) 
if tbitem.tbrandomitem ~= nil then 
tbclassname:getradomitem(tbitem.tbrandomitem) 
end 
end 
function tbclassname:getradomitem(tbitem) 
local tbclass = tbitem 
local p = random(1,(tbclass.ntotalprop*100)) 
local nsum = 0 
for ni,nitem in tbclass.tbitem do 
				nsum = nsum + (nitem.prob*tbclass.ntotalprop)
if nsum >= p then 
AddItem(nitem.G,nitem.D,nitem.P,nitem.LV,0,0) 
local szstr = format("Chóc mõng ng­¬i ®¹t ®­îc 1<color=yellow>%s<color>",nitem.szname) 
Msg2Player(szstr) 
self:sdl_writelog(self.TITLE,szstr) 
return 
end 
end 
end 
function tbclassname:useitem(naddexp) 
local nexp = GetTask(self.mareial.ntask) 
local nexpn = naddexp 
	if nexp + naddexp > self.mareial.nexpmax then
nexpn = self.mareial.nexpmax - nexp 
end 
local szstr = format("Chóc mõng ng­¬i ®¹t ®­îc <color=yellow>%s<color> kinh nghiÖm .",nexpn) 
AddOwnExp(nexpn) 
	SetTask(self.mareial.ntask,nexp+nexpn)
Msg2Player(szstr) 
self:sdl_writelog(self.TITLE,szstr) 
end 
function tbclassname:selectitem(szkey) 
for ni,nitem in self.mareial.tbitem do 
local szitemkey = format("%s,%s,%s",nitem.G,nitem.D,nitem.P) 
if szitemkey == szkey then 
return nitem 
end 
end 
return nil 
end 
function tbclassname:check() 
if self:check_date() == 0 then 
Say("Tèng tö ®· qua kú , kh«ng thÓ sö dông .",0) 
return 2 
end 
if self:check_level() == 0 then 
Say("CÊp bËc ch­a ®ñ 50 cÊp , kh«ng thÓ sö dông .",0) 
return 0 
end 
if self:check_pay() == 0 then 
Say("Ng­¬i cßn ch­a sung trÞ gi¸ , kh«ng thÓ sö dông .",0) 
return 0 
end 
if self:check_exp() == 0 then 
Say(" lµm tèng tö ho¹t ®éng , ngµi ®· ®¹t tíi cao nhÊt kinh nghiÖm trÞ gi¸ , kh«ng thÓ sö dông n÷a liÔu .",0) 
return 0 
end 
if CalcFreeItemCellCount() < 1 then 
Say("Chç trèng ch­a ®ñ , thØnh an ®øng hµng mét c¸i trang bÞ .",0) 
return 0 
end 
return 1 
end 

function tbclassname:pack(...) -- script viet hoa By http://tranhba.com  chuyÓn thµnh table 
return arg 
end 

function tbclassname:check_exp() 
local nexp = GetTask(self.mareial.ntask) 
if nexp >= self.mareial.nexpmax then 
return 0 
end 
return 1 
end 
function tbclassname:check_date()-- script viet hoa By http://tranhba.com  ph¸n ®o¸n thêi gian 
local ndate = tonumber(GetLocalDate("%y%m%d%H%M")) 
if ndate >= self.tbdate.nstart and ndate <= self.tbdate.nend then 
return 1 
end 
return 0 
end 

function tbclassname:check_level() -- script viet hoa By http://tranhba.com  ph¸n ®o¸n cÊp bËc 
if GetLevel() < tbclassname.LIMIT_LEVEL then 
return 0 
end 
return 1 
end 

function tbclassname:check_pay() -- script viet hoa By http://tranhba.com  ph¸n ®o¸n sung trÞ gi¸ dông hé 
if GetExtPoint(0) <= 0 then 
return 0 
end 
return 1 
end 

function tbclassname:sdl_writelog(sztitle,szevent) -- script viet hoa By http://tranhba.com  ghi chÐp ,sztitle= sù kiÖn tªn ,szevent= sù kiÖn néi dung 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",sztitle,GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szevent)); 
end
