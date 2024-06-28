-- script viet hoa By http://tranhba.com  gia t¨ng §¹i Lı h¾c ®éng trap ®iÓm 
-- script viet hoa By http://tranhba.com  

Include("\\script\\lib\\getrectangle_point.lua") -- script viet hoa By http://tranhba.com »ñµÃ¾ØĞÎµã

function add_trap_daliheidong() 
local tbpoint = 
{ 
tbtoppoint={1832,3232}, 
nleftstep = 80, 
nrightstep = 75, 
} 
local nMapID = 162 -- script viet hoa By http://tranhba.com  §¹i Lı 
	local szScriptfile = "\\script\\Î÷ÄÏÄÏÇø\\´óÀí¸®\\´óÀí¸®\\trap\\´óÀíºÚ¶´.lua"
local tballpoint = getRectanglePoint(tbpoint) 
for nx,tbp in tballpoint do 
AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile) 
end 
end
