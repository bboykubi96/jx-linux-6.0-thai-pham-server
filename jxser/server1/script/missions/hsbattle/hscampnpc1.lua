Include("\\script\\missions\\hsbattle\\hshead.lua");

function CheckCondition() 
if ( GetLevel() >= 60 ) then 
if (Pay(MS_SIGN_MONEY) == 1) then 
return 1; 
end; 
end; 
Say("Ng­¬i kh«ng ®ñ cÊp bËc hoÆc lµ mang ®İch kh«ng ®ñ tiÒn , kh«ng thÓ th­îng Hoa S¬n tuyÖt ®Ønh ", 0); 
return 0; 
end;