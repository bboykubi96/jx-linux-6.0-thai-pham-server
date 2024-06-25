-- script viet hoa By http://tranhba.com  quËc t◊nh huy ch≠¨ng 
-- script viet hoa By http://tranhba.com by ti”u l∑ng nhi“u h¨n 
-- script viet hoa By http://tranhba.com 2007-08-8 
TASK_EXP = 1832; -- script viet hoa By http://tranhba.com  kinh nghi÷m thay ÆÊi l≠Óng , nhi“u nh t 4E, kh´ng Æi÷p gia 
TASK_TOP_EXP = 400000000; -- script viet hoa By http://tranhba.com  nhi“u nh t c„ th” ph∂i kinh nghi÷m 
TASK_GET_EXP = 2091945; -- script viet hoa By http://tranhba.com  mÈt l«n Æπt Æ≠Óc kinh nghi÷m 
TASK_LEVEL = 50 -- script viet hoa By http://tranhba.com  c p bÀc hπn ch’ 
TASK_DATE_END = 07092324-- script viet hoa By http://tranhba.com  sˆ dÙng ch∆n tÌi thÍi gian 
function main(sel) 
nDate = tonumber(GetLocalDate("%y%m%d%H")) 
if TASK_DATE_END < nDate then 
Talk(1,"","ThÀt lµ ti’c nuËi , n™n vÀt ph»m Æ∑ qua sˆ dÙng k˙ .") 
return 0 
end 
if GetLevel() < TASK_LEVEL then 
Talk(1,"","Chÿ c„ 50 c p trÎ l™n nhµ ch¨i mÌi c„ th” sˆ dÙng quËc kh∏nh huy ch≠¨ng .") 
return 1 
end 
local nexp = GetTask(TASK_EXP); 
local addexp = TASK_GET_EXP; 
if nexp >= TASK_TOP_EXP then 
Talk(1,"","Chÿ c„ th” nhi“u nh t Æπt Æ≠Óc 4 ¯c kinh nghi÷m trﬁ gi∏ !!!") 
return 1 
end 

	if nexp + addexp > TASK_TOP_EXP then
addexp = TASK_TOP_EXP - nexp ; 
SetTask(TASK_EXP,TASK_TOP_EXP); 
else 
		SetTask(TASK_EXP,tonumber(nexp+addexp));
end 

AddOwnExp(addexp); 
Msg2Player(format("Ngµi Æπt Æ≠Óc %d kinh nghi÷m trﬁ gi∏ .",addexp)); 
WriteLog(format("[GuoQingHuiZhang]\t Date:%s\t Account:%s\t Name:%s\t Effect:GetExp %s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),addexp)); 

end
