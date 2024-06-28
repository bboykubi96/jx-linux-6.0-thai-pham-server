-- script viet hoa By http://tranhba.com  thóy khãi cöa thóy khãi cöa ®Ö tö 1 nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function main() 
UTask_cy = GetTask(6) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô tiÕn hµnh trung 
Talk(1,"U36_enter","TiÕn vµo chiÕn tr­êng sau , ®¹t ®­îc t×nh hoa , ®Õn <color=Red> hoa kh«i xuÊt khÈu <color> giao cho s­ tû lµ ®­îc .") 
elseif (Uworld36 == 0) and (GetLevel() >=10) and (GetFaction() ~= "cuiyan") then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
Say("C¨n cø m«n quy , muèn trë thµnh ®Ö tö kı danh , cÇn qu¸ <color=Red> hoa kh«i trËn <color>, b»ng vµo dòng c¶m cïng trİ kh«n ®¹t ®­îc <color=Green> t×nh hoa <color>, ng­¬i nghÜ thö mét chót sao ?",2,"Cã thÓ , ®Ó cho ta thö mét chót /enroll_yes","Kh«ng , ta ch¼ng qua lµ tíi ®i th¨m . /no") 
elseif (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  ®ång m«n 
Say("S­ muéi nghÜ ®Õn hoa kh«i trËn luyÖn c«ng a ?",2,"§èi víi , xin/mêi s­ tû ®Ó cho muéi muéi ®i vµo /U36_enter","Ta ch¼ng qua lµ ®Õn th¨m s­ tû /no") 
elseif (UTask_cy == 70*256) then 
Talk(1,"","S­ tû lÇn nµy trë l¹i lµ th¨m c¸c vŞ s­ muéi , cã thay ®æi g× sao ?") 
else 
Talk(1,"","Hoan nghªnh t«n kh¸ch gi¸ l©m , xin/mêi tõ hoa kh«i trËn bªn c¹nh ®­êng ®i vµo .") 
end 
end; 

function enroll_yes() 
Talk(1, "U36_enter","N¬i nµy lµ <color=Red> nhËp khÈu <color>. tiÕn vµo trËn b¾t ®­îc t×nh hoa giao cho s­ tû lµ ®­îc .") 
Uworld36 = SetByte(GetTask(36),2,10) 
SetTask(36,Uworld36) 
AddNote("NhËn hoa kh«i nhiÖm vô , ®¹t ®­îc t×nh hoa , mang vÒ cho ë cöa ra ®İch thóy khãi cöa ®Ö tö ") 
Msg2Player("NhËn hoa kh«i nhiÖm vô , ®¹t ®­îc t×nh hoa , mang vÒ cho ë cöa ra ®İch thóy khãi cöa ®Ö tö ") 
end; 

function U36_enter() 
-- script viet hoa By http://tranhba.com  SetPos(207,1693) 
SetPos(210,1622) 
end 

function no() 
end; 
