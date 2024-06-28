-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 2 ®iÒn th¸i bµ ®èi tho¹i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(201) == 1 then 
allbrother_0801_FindNpcTaskDialog(201) 
return 0; 
end 
if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ho khan mét c¸i ho khan , ta kh¼ng ®Şnh kh«ng ®­îc , kh«ng biÕt thÕ nµo lu«n lµ c¶m thÊy nhøc ®Çu . ho khan mét c¸i , kh«ng biÕt c¸i bÖnh nµy lµm sao b©y giê , ng­¬i nhanh lªn rêi ®i !") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

Say("§iÒn th¸i bµ # con trai cña ta nÕu nh­ cßn sèng , còng kĞm kh«ng nhiÒu l¾m cã ng­¬i lín nh­ vËy . th­¬ng h¹i h¾n m­êi l¨m tuæi thêi ®iÓm bŞ bÖnh chÕt , cßn d­ l¹i ta mét c« l·o bµ tö . ",0) 

end; 
