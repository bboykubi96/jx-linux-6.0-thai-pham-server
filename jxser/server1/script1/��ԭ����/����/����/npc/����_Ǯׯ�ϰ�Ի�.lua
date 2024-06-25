--ÖĞÔ­ÄÏÇø ÏåÑô¸® Ç®×¯ÀÏ°å¶Ô»°
-- Update: Dan_Deng(2003-12-31) ¼Óºì°ü¡¢Ôª±¦¹¦ÄÜ

Include("\\script\\global\\Ç®×¯¹¦ÄÜ.lua")

function main(sel)
	i = random(0,1)
	if (i == 0) then
		Talk(1,"main_proc","Chñ tiÒn trang:  Lµ d©n lµm ¨n, ®­¬ng nhiªn lµ tiÒn kiÕm ®­îc cµng nhiÒu cµng tèt råi, giµu cã lµ s­íng nhÊt trong thiªn h¹ råi! ")
	else
		Talk(1,"Chñ tiÒn trang:  ChuyÖn ®êi toµn gi¶ dèi, chØ cã vµng thËt b¹c tr¾ng míi lµ thËt th«i.")
	end
end;
