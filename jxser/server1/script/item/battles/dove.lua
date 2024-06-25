Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("BATTLE") 

function EatMedicine() 
for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("§¹o nµy cô chØ cã thÓ ë tèng kim chiÕn tr­êng bªn trong sö dông "); 
return -1 
end 
end 
nowmissionid = BT_GetData(PL_RULEID); -- script viet hoa By http://tranhba.com  lÊy ®­îc tr­íc mÆt MISSIONID 
curcamp = GetCurCamp(); 
X = floor( X / 8 ); 
Y = floor( Y / 16 ); 
string = "<#><color=yellow>"..GetName().."<#><color><color=pink>#“ ta b©y giê täa ®é lµ <color=yellow>("..X.."<#> , "..Y.."<#>)<color> tèc tíi gióp ta mét c¸nh tay lùc . ”"; 
Msg2MSGroup( nowmissionid, string, curcamp ); 
Msg2Player("Ng­¬i sö dông mét tin/th¬ c¸p , th«ng b¸o liÔu chiÕn h÷u ng­¬i b©y giê ®Ých täa ®é . "); 
end 
