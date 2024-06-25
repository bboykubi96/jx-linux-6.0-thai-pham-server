CAKE_ITEM = 
{ 
{"B∏nh sinh nhÀt ",200000}, 
{"Th≠Óng Æºng b∏nh sinh nhÀt ",1000000}, 
} 

MAX_EXP_CAKE = 50000000 
TASK_CAKE_EXP = 1743 

function main() 
if (GetTask(TASK_CAKE_EXP) < MAX_EXP_CAKE) then 
Msg2Player("Ngµi Æ∑ ®n rÂi mÈt "..CAKE_ITEM[caketype][1]..", Æπt Æ≠Óc t≠Îng th≠Îng "..CAKE_ITEM[caketype][2].." kinh nghi÷m trﬁ gi∏ .") 
AddOwnExp(CAKE_ITEM[caketype][2]) 
		SetTask(TASK_CAKE_EXP,GetTask(TASK_CAKE_EXP) + CAKE_ITEM[caketype][2]) 
if (GetTask(TASK_CAKE_EXP) >= MAX_EXP_CAKE) then 
Msg2Player("Ngµi chÿ c„ th” tı b∏nh sinh nhÀt Æπt Æ≠Óc 5000 vπn kinh nghi÷m trﬁ gi∏ !") 
else 
Msg2Player("Ngµi c„ th” ®n nhi“u mÈt b∏nh sinh nhÀt Æπt Æ≠Óc "..(MAX_EXP_CAKE-GetTask(TASK_CAKE_EXP)).." kinh nghi÷m trﬁ gi∏ .") 
end 
return 0 
else 
Say("Ngµi chÿ c„ th” tı b∏nh sinh nhÀt Æπt Æ≠Óc 5000 vπn kinh nghi÷m trﬁ gi∏ !",0) 
return 1 
end 
end