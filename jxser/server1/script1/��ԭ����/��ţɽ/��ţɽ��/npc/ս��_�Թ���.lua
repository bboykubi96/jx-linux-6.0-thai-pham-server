function OnDeath() 
skill_level = HaveMagic("D?C# Quy th�ch ") 
if (skill_level >= 0) then 
if (skill_level < 10) then 
Talk(1,"","Bia luy# c t�n g m# ch l�u ph# #g c#g kh t�n g c? b# c# ph ti�n luy# nhi t�p h#!") 
elseif (skill_level < 20) then 
Talk(1,"","Bia luy# c t�n g h#h nh?c?lung lay m# ch l�u , b# luy# t# c# tri�p l#!") 
elseif (skill_level < 30) then 
Talk(1,"","Bia luy# c t�n g ch?r b�i ra v nh�ng h# # nh? b# luy# t# v th��ng ch# #!") 
elseif (skill_level < 40) then 
Talk(1,"","Bia luy# c t�n gb?b# #nh th khu g m# l?l h�n , quy th�ch ph t�nh c# b# # c?m# th y�u h t#!") 
else 
Talk(1,"","<color=red>Xin ch b� m v� g! Bia luy# c t�n g b?#nh n# th y�u h t v� g m#h, quy th�ch ph t�nh c# b# # luy# th y�u h!<color>") 
end 
end 
end; 