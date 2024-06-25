-- script viet hoa By http://tranhba.com  trung thu l‘ ph»m hÈp ch©n vËn 
-- script viet hoa By http://tranhba.com  lixin 2005-8-31 

zq_tab_award = { -- script viet hoa By http://tranhba.com  trung thu l‘ ph»m hÈp c„ th” Æπt Æ≠Óc Æ›ch vÀt ph»m , x∏c su t , 
{ "1 c p m∆t ph n ", 0.43145 , 528 , }, 
{ "2 c p m∆t ph n ", 0.05 , 529 , }, 
{ "3 c p m∆t ph n ", 0.015 , 530 , }, 
{ "4 c p m∆t ph n ", 0.003 , 531 , }, 
{ "5 c p m∆t ph n ", 0.0005 , 532 , }, 
{ "6 c p m∆t ph n ", 0.00005 , 533 , }, 
{ "1 c p li™n dong ", 0.43145 , 534 , }, 
{ "2 c p li™n dong ", 0.05 , 535 , }, 
{ "3 c p li™n dong ", 0.015 , 536 , }, 
{ "4 c p li™n dong ", 0.003 , 537 , }, 
{ "5 c p li™n dong ", 0.0005 , 538 , }, 
{ "6 c p li™n dong ", 0.00005 , 539 , }, 
} 

function main() 
local base = 100000 
local sum = 0 
local num = random(1, base) 

for i = 1, getn( zq_tab_award ) do 
		sum = sum + zq_tab_award[i][2] * 100000
if( sum >= num ) then 
zq_award( zq_tab_award[i] ) 
break 
end 
end 
end 

function zq_award( item ) 
local name = item[1] 
AddEventItem( item[ 3 ] ) 
Msg2Player("ChÛc mıng , ng≠¨i thu Æ≠Óc 1 c∏ "..name) 
Talk(1,""," l‘ quan # chÛc mıng ng≠¨i thu Æ≠Óc <color=yellow>"..name.."<color>#") 
WriteLog(date("%y-%m-%d,%H:%M").."Account==["..GetAccount().."] RoleName=="..GetName().." , tı trong thu l‘ ph»m trong hÈp l y Æ≠Óc "..name) 
end
