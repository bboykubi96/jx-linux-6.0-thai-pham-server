-- script viet hoa By http://tranhba.com  vâng kiÕm ba chu niªn ho¹t ®éng 
-- script viet hoa By http://tranhba.com  ®Ëu sa thä ®µo 
-- script viet hoa By http://tranhba.com  sö dông sau ®¹t ®­îc 300w kinh nghiÖm 
-- script viet hoa By http://tranhba.com  nhiÒu nhÊt nh­ng ®¹t ®­îc 1 øc 
-- script viet hoa By http://tranhba.com  h¹n 80 cÊp trë lªn còng h­íng trÞ gi¸ nhµ ch¬i sö dông 

Include("\\script\\event\\jxanniversary3\\head.lua");

function main(nItemIndex) 
str= 
{ "<#> ¨n vµo mét ®Ëu sa thä ®µo , nh­ng ®¹t ®­îc <color=red>"..tostring(JXANNIVERSARY3_ONCEEXP).."<color> ®Ých kinh nghiÖm , nh­ng lµ th«ng qua ¨n vµo ®Ëu sa thä ®µo lÊy ®­îc kinh nghiÖm th­îng h¹n lµ <color=red>"..tostring(JXANNIVERSARY3_MAXOWNEXP).."<color> , nhiÒu thùc ng­êi kh«ng cã hiÖu qu¶ . ", 
"<#> sö dông ®Ëu sa thä ®µo /#_UseDoushaShoutao("..nItemIndex..")", 
"<#> ta suy nghÜ mét chót n÷a /OnCancel", 
}; 
Say(str[1], 2, str[2], str[3]); 
return 1; 
end 

function _UseDoushaShoutao(nItemIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 
end; 

if (GetTask(TASKID_DOUSHASHOUTAO_EXP) >= JXANNIVERSARY3_MAXOWNEXP) then 
Msg2Player("Ng­¬i ®· sö dông qu¸ nhiÒu ®Ëu sa thä ®µo , kh«ng thÓ th«ng qua n÷a sö dông ®Ëu sa thä ®µo t¨ng lªn kinh nghiÖm . "); 
return 
end 

if (RemoveItemByIndex(nItemIndex) == 1 ) then 
local nAddExp = 0; 
		if ( (GetTask(TASKID_DOUSHASHOUTAO_EXP) + JXANNIVERSARY3_ONCEEXP) > JXANNIVERSARY3_MAXOWNEXP) then
nAddExp = JXANNIVERSARY3_MAXOWNEXP - GetTask(TASKID_DOUSHASHOUTAO_EXP); 
else 
nAddExp = JXANNIVERSARY3_ONCEEXP; 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng kinh nghiÖm 
		SetTask(TASKID_DOUSHASHOUTAO_EXP, GetTask(TASKID_DOUSHASHOUTAO_EXP) + nAddExp);
AddOwnExp(nAddExp); 
Msg2Player("Ng­¬i thùc dông mét ®Ëu sa thä ®µo , thu ®­îc "..JXANNIVERSARY3_ONCEEXP.." kinh nghiÖm "); 
else 
Msg2Player("Kh«ng cã ®Ëu sa thä ®µo cã thÓ sö dông #"); 
end 
end 

function OnCancel() 
return 0; 
end 
