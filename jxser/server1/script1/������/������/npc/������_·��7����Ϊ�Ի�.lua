-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 7 l¹i võa v× ®èi tho¹i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(200) == 1 then 
allbrother_0801_FindNpcTaskDialog(200) 
return 0; 
end 

i = random(0,2) 

if (i == 0) then 
Say(" l¹i võa v× # chóng ta ba l¨ng huyÒn lµ mét ®Þa ph­¬ng nhá , nh­ng d©n chóng ®Ých ngµy qu¸ ng­îc l¹i còng an vui . ",0) 
return 
end; 

if (i == 1) then 
Say(" l¹i võa v× # Thiªn v­¬ng gióp chÝnh lµ chóng ta ®Ých thanh thiªn , nÕu nh­ kh«ng cã bän hä thay trêi hµnh ®¹o , nh÷ng thø kia tham quan « l¹i cßn kh«ng biÕt muèn thÕ nµo nghiÒn Ðp chóng ta d©n chóng ®©y !",0) 
return 
end; 

if (i == 2) then 
Say(" l¹i võa v× # ë d©n chóng trong m¾t , Thiªn v­¬ng trong bang ng­êi ng­êi còng lµ lín anh hïng , thËt tèt h¸n ! chóng ta n¬i nµy trÎ tuæi tiÓu tö còng muèn gia nhËp Thiªn v­¬ng gióp ®©y !",0) 
end; 

end; 
