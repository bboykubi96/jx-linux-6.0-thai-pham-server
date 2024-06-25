IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 
if GetTask(12) == 90*256 and GetLevel() >= 20 then
SetTask(12,100*256)
Msg2Player("Quay l¹i gÆp C¸t Khang.") 
AddNote("Quay l¹i gÆp C¸t Khang.")
Talk(1,"","Du TÈu M¹i Hãa Lang: Xin h·y tha cho ta, ta sÏ kh«ng bao giê d¸m n÷a!")
end
end 