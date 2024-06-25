
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online nhiÖm vô hÖ thèng nhiÖm vô quyÓn trôc kh¸ch hµng b­ng ch©n vèn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/07/04 PM 19:59 

-- script viet hoa By http://tranhba.com  ph¸o b«ng . ®ªm h«m ®ã ®Ých ph¸o b«ng . 
-- script viet hoa By http://tranhba.com  nµng nhí h¾n ë m­a to ng­êi cña bÇy trung , ®øng ë sau l­ng cña nµng «m ë nµng . 
-- script viet hoa By http://tranhba.com  h¾n Êm ¸p ®Ých da , h¾n mïi vÞ ®¹o quen thuéc . ph¸o b«ng chiÕu s¸ng ¸nh m¾t cña nµng . 
-- script viet hoa By http://tranhba.com  hÕt th¶y kh«ng thÓ v·n håi …… 

-- script viet hoa By http://tranhba.com  ====================================================== 
-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  häc vµo sè liÖu ®Þnh nghÜa ®Çu v¨n kiÖn 
Include("\\script\\task\\system\\task_head.lua");

function GetItemDescription(name, magiclevel1, magiclevel2, magiclevel3, magiclevel4, magiclevel5, magiclevel6) 

local strDesc = ""; 

strDesc = strDesc.."<enter> nhiÖm vô miªu t¶ #<color=yellow>"..TaskId(magiclevel1, 1, TaskID_Table.TaskText_Row).."<color><enter><enter>"; 

strDesc = strDesc..CreateAwardText(TaskName(magiclevel1)); 

strDesc = strDesc.."<enter><color=yellow> nãi râ # ®an kÝch bªn ph¶i kiÖn lµ ®­îc ®¹t ®­îc nµy nhiÖm vô <color><enter>"; 

return strDesc; 

end; 


-- script viet hoa By http://tranhba.com  sinh thµnh t­ëng th­ëng ch÷ viÕt ch÷ ®o¹n 
function CreateAwardText(taskName) 

local nRow, nCol = TaskAwardMatrix(taskName); 

local i=0; 

local aryAward = {{}}; 

local strArray = ""; 
local strArrayRate = ""; 
local strText = ""; -- script viet hoa By http://tranhba.com  t­ëng th­ëng ®Ých nãi râ 

local nIsArray = 0; -- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng cã mÊy tæ 

local strAwardNormal = {} -- script viet hoa By http://tranhba.com  cè ®Þnh ph¸t d­ ®Ých t­ëng th­ëng 
local strAward = " nhiÖm vô sau khi hoµn thµnh ®o¹t ®­îc t­ëng th­ëng #<enter>"; -- script viet hoa By http://tranhba.com  cuèi cïng trë vÒ ®Ých t­ëng th­ëng ch÷ ®o¹n 

local strType = ""; 

strType = TaskAward(taskName, 1, 1); 

-- script viet hoa By http://tranhba.com  ®èi víi nhiÖm vô t­ëng th­ëng lo¹i h×nh lµ t­ëng th­ëng t¸c dÉn ®Ých xö lý 
if strType==" t­ëng th­ëng t¸c dÉn " then 
-- script viet hoa By http://tranhba.com  trùc tiÕp t¸c dÉn tíi nhiÖm vô tªn 
taskName = TaskAward(taskName, 1, Award.AlliedAward_Row); 
nRow, nCol = TaskAwardMatrix(taskName); 
end; 

for i=1, nRow do 

strArray = TaskAward(taskName, i, Award.ArrayID_Row); 
strArrayRate = TaskAward(taskName, i, Award.ArrayRate_Row); 
strText = TaskAward(taskName, i, Award.AwardText_Row); 

-- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng bÞ ®Þnh nghÜa liÔu ®Õm tæ 
if strArray~="" then 

-- script viet hoa By http://tranhba.com  nÕu nh­ ®Õm tæ kh«ng tån t¹i lµ míi b¾t ®Çu hãa ®Õm tæ 
if aryAward[tonumber(strArray)]==nil then 
rawset(aryAward, tonumber(strArray), {}); 
end; 

rawset(aryAward[tonumber(strArray)], 
			 		getn(aryAward[tonumber(strArray)])+1,
"<color=green>"..strText.."<color> "..strArrayRate.."% ®Ých x¸c suÊt " 
); 

nIsArray = 1; 

else 
rawset(strAwardNormal, 
					getn(strAwardNormal)+1,
strText); 
end; 

end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng bÞ ®Þnh nghÜa liÔu ®Õm tæ , lµ ®iÒu dông ®Õm tæ ph¸t t­ëng hµm sè 
if nIsArray==1 then 
for i=1, getn(aryAward) do 
strAward = strAward.."<enter> thø "..i.." c¸ ngÉu nhiªn t­ëng th­ëng tói #<enter>"; 
strAward = strAward..CreateTextForArray(aryAward[i]); 
end; 
end; 

strAward = strAward.."<enter> cè ®Þnh t­ëng th­ëng #<enter>"; 

if getn(strAwardNormal)~=0 then 

for i=1, getn(strAwardNormal) do 
strAward = strAward.."<color=green>"..strAwardNormal[i].."<enter>"; 
end; 

else 
strAward = strAward.."<color=green> v« cè ®Þnh t­ëng th­ëng <color>"; 
end; 

return strAward; 

end; 



function CreateTextForArray(aryAward) 

local strAward = ""; 
local i=0; 


-- script viet hoa By http://tranhba.com  ®em ®Õm tæ lý mÆt ®Ých ®å ph¸t ra ngoµi 
for i=1, getn(aryAward) do 
strAward = strAward..aryAward[i].."<enter>"; 
end; 

return strAward; 

end;
