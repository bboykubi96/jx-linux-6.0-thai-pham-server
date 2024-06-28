-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp thñy sinh 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 1) then 
Talk(3, "","Ta thÝch nhÊt ¨n lç trøng gµ liÔu , nh­ng lµ nhµ ta nghÌo qu¸ , mua kh«ng næi trøng gµ ","Ng­êi b¹n nhá , ta chç nµy cã ba trøng gµ , ®­a cho ng­¬i ®i ","H¶o # nhí muèn thñ tÝn / gi÷ lêi nãi a . ") 
AddNote("§ång ý ®em trøng gµ cho thñy sinh , thñy sinh gióp mét tay b¾t trïng ") 
Msg2Player("§ång ý ®em trøng gµ cho thñy sinh , thñy sinh gióp mét tay b¾t trïng ") 
SetTask(14, 3) 
elseif (UTask_tw40sub == 7) and (HaveItem(149) == 1) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô hoµn thµnh 
Talk(3, "","Ta ®· b¾t ®­îc con giun , cã thÓ cho ta trøng gµ liÔu sao ","Ng­êi b¹n nhá # c¸i nµy 3 c¸ trøng gµ cho ng­¬i !","§a t¹ ®¹i ca ! n¬i nµy cã 5 con con giun !") 
DelItem(149) 
AddEventItem(150) 
Msg2Player(" lÊy ®­îc 5 con con giun ") 
SetTask(14, 9) 
AddNote("Cho thñy sinh trøng gµ lÊy ®­îc 5 con con giun ") 
elseif (UTask_tw40sub == 0) then 
Talk(1, "","Ta thÝch nhÊt ¨n lç trøng gµ liÔu , nh­ng lµ nhµ ta nghÌo qu¸ , mua kh«ng næi trøng gµ ") 
elseif (UTask_tw40sub == 9) and (HaveItem(150) == 0) then 
AddEventItem(150) 
Talk(2,"","Ng­êi b¹n nhá # ta kh«ng cÈn thËn vøt bá con giun , ng­¬i cã thÓ hay kh«ng gióp ta n÷a b¾t mÊy con ?","Còng may , ta ph¶i v« Ých l¹i b¾t 5 chØ con giun , ®­a cho ng­¬i !") 
elseif (UTask_tw40sub >= 9) then 
Talk(1, "","C¸m ¬n ®¹i ca cho ta trøng gµ ") 
else 
Talk(1,"","N¬i nµy cã mÊy c¸i con giun ng­¬i liÒn cho ta mÊy trøng gµ ®­îc kh«ng ?") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Ta tr­ëng thµnh sau nµy còng muèn gièng nh­ D­¬ng thóc thóc # V­¬ng b¸ b¸ bän hä lµm nh­ vËy ng­êi ng­êi kÝnh träng ®Ých ®¹i anh hïng ") 
else 
Talk(1,"","Ngµy h«m qua ta cÇu xin D­¬ng thóc thóc d¹y ta c«ng phu , nh­ng lµ h¾n nãi ta cßn nhá , ta lóc nµo míi cã thÓ lín lªn ®©y ?") 
end 
end 
end; 
