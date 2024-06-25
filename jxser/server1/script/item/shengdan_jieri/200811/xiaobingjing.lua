Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

function main() 
christmas_resettask(); 
if (GetTask(christmas_bingjing_taskid) == 300000) then 
Say("§¹i hiÖp ®· sö dông ®¹i b¨ng tinh liÔu , kh«ng thÓ tiÕp tôc sö dông .", 0); 
return 1; 
end 
SetTask(christmas_bingjing_taskid, 200000); 
Say("Tr­íc m¾t ®¹i hiÖp cã thÓ ®¹t ®­îc cao nhÊt kinh nghiÖm v× 20 øc ", 0); 
end