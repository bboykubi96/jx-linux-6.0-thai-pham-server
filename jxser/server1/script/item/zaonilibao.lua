-- script viet hoa By http://tranhba.com  vâng kiÕm ba chu niªn ho¹t ®éng 
-- script viet hoa By http://tranhba.com  t¶o nª thä ®µo 
-- script viet hoa By http://tranhba.com  sö dông sau ®¹t ®­îc 8 giê ®¸nh tr¸ch kinh nghiÖm gÊp ®«i , kh«ng thÓ cïng tiªn th¶o lé ®iÖp gia 
-- script viet hoa By http://tranhba.com  h¹n 80 cÊp trë lªn còng h­íng trÞ gi¸ nhµ ch¬i sö dông 

Include("\\script\\event\\jxanniversary3\\head.lua");

function main(nItemIndex) 
str= 
{ "<#> ¨n vµo t¶o nª thä ®µo , nh­ng ®¹t ®­îc <color=red>8<color> giê kinh nghiÖm gÊp ®«i , nh­ng lµ kh«ng thÓ cïng tiªn th¶o lé ®iÖp gia . ", 
"<#> ¨n vµo t¶o nª thä ®µo /#_UseZaoNiShoutao("..nItemIndex..")", 
"<#> ta suy nghÜ mét chót n÷a /OnCancel", 
}; 
Say(str[1], 2, str[2], str[3]); 
return 1; 
end 

function _UseZaoNiShoutao(nItemIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 
end; 

if RemoveItemByIndex(nItemIndex) == 1 then 
AddSkillState(440, 1, 1, 64800 * 8); 
Msg2Player("Ng­¬i thùc dông mét t¶o nª thä ®µo , ®¹t ®­îc 8 giê ®¸nh tr¸ch kinh nghiÖm gÊp ®«i hiÖu qu¶ . ") 
end; 
end; 

function OnCancel() 
end;
