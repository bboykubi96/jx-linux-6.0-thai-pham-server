Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
Describe("ThuyÒn Phu: Ng­¬i muèn ®i ®©u?",3,"§Õn Ba L¨ng HuyÖn/denbalanghuyen","§Õn l©m An/denlaman","Ta kh«ng ®i ®©u c¶/no")
end

function denbalanghuyen()
NewWorld(53, 1794, 3157)
SetFightState(1) 
end

function denlaman()
NewWorld(176, 1607, 2553)
SetFightState(1) 
end

function no()
end