function OnDeath(sel) 
Uworld42 = GetTask(42) 
if (Uworld42 == 70) then 
Talk(8,"U42_prise","Ha ha , h¶o tiÓu tö , kh«ng nghÜ tíi ng­¬i còng lîi h¹i nh­ vËy ","TiÒn bèi qu¸ khen !","Cuéc sèng nh­ méng , tØnh l¹i ®i . mÊy c¸i nµy ng­êi tuæi trÎ kh«ng cã ®¾c téi chç cña ta , ng­¬i dÉn bän h¾n ®i th«i !","# ®a t¹ tiÒn bèi !","TiÓu tö , nhí quı träng m×nh cã , mÊt ®i , hèi hËn còng kh«ng kŞp liÔu , ta ë c¶ nhµ gÆp n¹n ®İch thêi ®iÓm trÇm mª vâ c«ng , ®¹t tíi tuyÖt thÕ vâ c«ng th× ph¶i lµm thÕ nµo ®©y ? cßn kh«ng b»ng cïng con ch¸u qu¸ b×nh th­êng ngµy .","T¹i h¹ nhí ","MÊy c¸i nµy ®øa trÎ cÇn d¹y . ta b×nh sanh häc ®­îc rÊt nhiÒu , ng­¬i còng muèn b¾t ch­íc tËp , lµm rÊt nhiÒu viÖc thiÖn , coi nh­ lµ gióp ta tİch c«ng ®øc .","§a t¹ tiÒn bèi !") 
Msg2Player("§¸nh b¹i th­¬ng l·ng kh¸ch ") 
NewWorld(167,1400,2974) 
end 
end; 

function U42_prise() 
SetTask(42,255) 
AddProp(2) 
	Ubonus86 = GetTask(86) + 1					-- script viet hoa By http://tranhba.com  ¼ÇÂ¼ÈÎÎñ½±ÀøÁË2µãÇ±ÄÜ(µÚÒ»×Ö½Ú+1)
if (GetByte(Ubonus86,1) >= 250) then -- script viet hoa By http://tranhba.com  cho lçi # th­îng h¹n v× 250 ®iÓm 
Ubonus86 = 250 
end 
SetTask(86,Ubonus86) 

i = random(30,35) 
AddRepute(i) 
Msg2Player(" lÜnh ngé sÊm ®¸nh , ng­¬i tiÒm n¨ng gia t¨ng 2 ®iÓm ") 
Msg2Player("<#> mÊt tİch ®øa trÎ nhiÖm vô # cøu mÊt tİch ®øa trÎ , hoµn thµnh nhiÖm vô . ng­¬i danh väng gia t¨ng "..i.."<#> ®iÓm .") 
AddNote("MÊt tİch ®øa trÎ nhiÖm vô # cøu mÊt tİch ®øa trÎ , hoµn thµnh nhiÖm vô . ng­¬i danh väng gia t¨ng ") 
end 
