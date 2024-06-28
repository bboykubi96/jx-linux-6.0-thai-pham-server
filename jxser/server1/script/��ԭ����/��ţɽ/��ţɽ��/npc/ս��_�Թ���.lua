function OnDeath() 
skill_level = HaveMagic("D?C# Quy thİch ") 
if (skill_level >= 0) then 
if (skill_level < 10) then 
Talk(1,"","Bia luy# c tÇn g m# ch l©u ph# #g c#g kh tÇn g c? b# c# ph tiªn luy# nhi tËp h#!") 
elseif (skill_level < 20) then 
Talk(1,"","Bia luy# c tÇn g h#h nh?c?lung lay m# ch l©u , b# luy# t# c# triÕp l#!") 
elseif (skill_level < 30) then 
Talk(1,"","Bia luy# c tÇn g ch?r béi ra v nh­ng h# # nh? b# luy# t# v th­¬ng ch# #!") 
elseif (skill_level < 40) then 
Talk(1,"","Bia luy# c tÇn gb?b# #nh th khu g m# l?l hµn , quy thİch ph tŞnh c# b# # c?m# th yªu h t#!") 
else 
Talk(1,"","<color=red>Xin ch bİ m vŞ g! Bia luy# c tÇn g b?#nh n# th yªu h t vŞ g m#h, quy thİch ph tŞnh c# b# # luy# th yªu h!<color>") 
end 
end 
end; 