-- script viet hoa By http://tranhba.com  §¹i Lı # chøc n¨ng # nha m«n vÖ binh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com function main() 
-- script viet hoa By http://tranhba.com  Talk(1,"","Nha m«n vÖ binh # h« …… h« ……") 
-- script viet hoa By http://tranhba.com end; 

-- script viet hoa By http://tranhba.com  truy n· hÖ thèng chuyªn dông d¹ng lÖ ch©n vèn (BlackBay.2003.12.30) 

FESTIVAL06_NPCNAME = "<color=yellow> nha m«n vÖ binh :<color>"; 

Include([[\script\global\Â·ÈË_ÑÃÃÅÎÀ±ø.lua]]); 

function main(sel) 
gsoldier_entance(); 
end; 

function main_former() 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy chØ thŞ h­íng hÖ thèng hái th¨m tr­íc mÆt Player ®İch truy n· t­¬ng quan tr¹ng th¸i tin tøc 
-- script viet hoa By http://tranhba.com  tuÇn tra ®İch kÕt qu¶ trë vÒ sau nµy , hÖ thèng trë vÒ ®iÒu tham sæ ngãn gi÷a ®Şnh hµm sè tªn 
-- script viet hoa By http://tranhba.com AskRelayForKillerStatus("KillerCallBack") 
Talk(1,"","H« ... h« ...") 
end; 

-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè lµ tuÇn tra kÕt qu¶ trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng thø tù kh«ng cho phĞp söa ®æi 
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount) 
if (RewardMoney > 0) then 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè th«ng b¸o hÖ thèng nhµ ch¬i ®· nhËn lÊy tiÒn th­ëng , chó ı thø nhÊt tham sæ 0 bµy tá l·nh th­ëng kim , thø hai tham sæ bµy tá v× c¸i nµo nhiÖm vô l·nh th­ëng kim 
GetTaskMoney(0, RewardTaskID) 
Earn(RewardMoney) 
elseif (CancelMoney > 0) then 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè th«ng b¸o hÖ thèng nhµ ch¬i ®· nhËn lÊy lui vÒ ®İch ngän ®İch kim , chó ı thø nhÊt tham sæ 1 bµy tá dÉn lui kim , thø hai tham sæ bµy tá v× c¸i nµo nhiÖm vô dÉn lui kim 
GetTaskMoney(1, CancelTaskID) 
Earn(CancelMoney) 
	elseif (OwnCount + MyTaskCount > 0) then
Say("Ng­¬i l¸ gan lín nh­ vËy , d¸m x«ng nha m«n c«ng ®­êng , c¸i nµy téi ng­¬i ®¶m ®­¬ng næi sao ?", 4,"Thµnh lËp cÇm nhiÖm vô /CreateTask","NhËn ®uæi b¾t nhiÖm vô /QueryTask","Nh×n nhiÖm vô cña m×nh /ModifyTask","C¸i g× còng kh«ng lµm /DoNothing") 
else 
Say("Ng­¬i l¸ gan lín nh­ vËy , d¸m x«ng nha m«n c«ng ®­êng , c¸i nµy téi ng­¬i ®¶m ®­¬ng næi sao ?", 3,"Thµnh lËp cÇm nhiÖm vô /CreateTask","NhËn ®uæi b¾t nhiÖm vô /QueryTask","C¸i g× còng kh«ng lµm / DoNothing") 
end 
end; 

function CreateTask() 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè th«ng b¸o kh¸ch hµng b­ng më ra khai s¸ng nhiÖm vô giíi mÆt 
OpenCreateTask() 
end; 

function QueryTask() 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè ®em tÊt c¶ cã thÓ nhËn lÊy ®İch nhiÖm vô truyÒn tèng cho nhµ ch¬i kh¸ch hµng b­ng 
OpenAllTask() 
end; 

function ModifyTask() 
-- script viet hoa By http://tranhba.com  phİa d­íi c¸i nµy hµm sè ®em së ®· nhËn lÊy ®İch nhiÖm vô cïng víi ®· khai s¸ng nhiÖm vô truyÒn tèng cho nhµ ch¬i kh¸ch hµng b­ng 
OpenOwnTask() 
end; 

function DoNothing() 
Say("H« h« ...", 0) 
end;
