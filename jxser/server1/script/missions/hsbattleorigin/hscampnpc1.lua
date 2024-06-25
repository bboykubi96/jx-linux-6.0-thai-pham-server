Include("\\script\\missions\\hsbattleorigin\\hshead.lua");
Include("\\script\\missions\\csbattlelib\\cscampnpc1.lua");

function CheckCondition() 
if ( GetLevel() >= 60 ) then 
if (Pay(MS_SIGN_MONEY) == 1) then 
return 1; 
end; 
end; 
Say("Ng­¬i ch­a ®ñ cÊp bËc hoÆc lµ mang ®İch kh«ng ®ñ tiÒn , kh«ng thÓ th­îng Hoa S¬n tuyÖt ®Ønh ", 0); 
return 0; 
end;