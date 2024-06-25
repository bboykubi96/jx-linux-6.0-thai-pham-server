-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 5 v­¬ng thñ nghÜa ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn bªn trong tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i .") 
SetTask(1256, 2) 
else 
Talk(1,"","Ng­¬i l¹i muèn hái c¸i ®ã ng­êi chÕt a ? ta lµm sao biÕt ? nghe nãi ®éc c« thËt to hiÖp kh«ng cho phĞp h¾n ®éc c« v¨n xuèng nói , c¸i bÖnh nµy muèn h¹i ng­êi tíi khi nµo a ") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn bªn trong tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i ."); 
return 
end 

i = random(0,2) 

if (i == 0) then 
Say("V­¬ng thñ nghÜa # nghe nãi ®éc c« ®¹i hiÖp ®İch phu nh©n lµ mét phÊn ®á anh hïng , kh«ng chØ cã vâ c«ng cao c­êng , cßn lµ mét ®¹i mü nh©n dÆm #",0) 
return 
end; 

if (i == 1) then 
Say("V­¬ng thñ nghÜa # nghe nãi ®éc c« ®¹i hiÖp cïng ®éc c« phu nh©n nguyªn lµ cõu gia , kh«ng ngê víi nhau yªu nhau , v× vËy tÉn khİ hiÒm khİch lóc tr­íc , kÕt lµm quyÕn thuéc , ë trªn giang hå cßn bŞ truyÖn lµm mét ®o¹n giai tho¹i ®©y #",0) 
return 
end; 

if (i == 2) then 
Say("V­¬ng thñ nghÜa # ®éc c« ®¹i hiÖp ®İch n÷ nhi ®éc c« v¨n th­êng xuyªn ®Õn trÊn trªn ch¬i , ®©y chİnh lµ c¸ mét c¸ch tinh qu¸i ®İch nghŞch ngîm quû #",0) 
end; 

end; 
