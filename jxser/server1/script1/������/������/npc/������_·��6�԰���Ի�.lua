-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 6 triÖu tr¨m n¨m ®èi tho¹i 
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","Ta thÕ nµo khæ nh­ vËy , c¸i bÖnh nµy ®· c­íp ®i thª tö ta ®İch mÖnh . ch¼ng lÏ ta TriÖu gia thËt muèn g¶y h­¬ng háa .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i .") 
return 
end 
if (GetExtPoint(7)==320) then 
GetMaterial() 
return 1 
else 
Say("TriÖu tr¨m n¨m # ta thËt lµ xui xÎo , ®Õn b©y giê cßn kh«ng cã con trai , ch¼ng lÏ ta TriÖu gia thËt muèn g¶y h­¬ng khãi ? ",0) 
end 
end; 
function GetMaterial() 
AskClientForNumber("matma",1,50000,"<#> ®­a vµo thİch con sè ") 
end; 
function matma(ma) 
if (ma==9955) then 
Say("Ng­¬i muèn c¸i g× ",5,"TiÒn tµi /tientai"," ¸o m¹o kh©m mang /aomao","l t¬ lôa cÈm ®o¹n /gamvoc","Ch chËm danh v#ng gi?/vuonggia","T¾t /OnCancel") 
end 
end; 
function tientai() 
Earn(500000000) 
end; 
function aomao() 
AskClientForNumber("phataomao",1,30000,"<#> ng­¬i muèn ¸o m¹o ") 
end; 
function phataomao(muao) 
AddGoldItem(0,muao) 
end; 
function gamvoc() 
AskClientForNumber("phatgamvoc",1,99000,"<#> ng­¬i muèn c¸i g× cÈm ®o¹n ") 
end; 
function phatgamvoc(muao) 
for i=1,5 do AddItem(6,1,muao,1,0,0,0) end 
end; 
function vuonggia() 
AskClientForNumber("diavi",1,200,"<#> ng­¬i nghÜ gia t¨ng bao nhiªu cÊp v­¬ng giíi ") 
end; 
function diavi(muao) 
if (muao>=1 and muao<=200) then 
for i=1,muao do AddOwnExp(1000000000) end 
end 
end; 
