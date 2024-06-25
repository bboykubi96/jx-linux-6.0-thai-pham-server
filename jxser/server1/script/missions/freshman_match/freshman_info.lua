CP_MAXROUND = 40 

CP_HELP_FRESHMAN = { 
" tranh tµi <color=yellow> vâ l©m t©n tó liªn cuéc so tµi <color> môc ®Ých lµ v× giang hå tay míi ®Ých tiÕn bé , v× ®ång m«n nh÷ng kh¸c nhµ ch¬i s¸ng lËp so tµi vâ nghÖ ®Ých c¬ héi , ®Ò cao tay míi ®Ých vâ c«ng kü n¨ng , cho ®ång m«n huynh ®Ö trao ®æi ®Ých c¬ héi , trî gióp tay míi thãi quen giang hå ®Ých cuéc sèng . ", 
"<color=yellow># ghi danh ®iÒu kiÖn <color>: cÊp bËc tõ 50 ®Õn 90 cÊp , ®i gÆp vâ l©m t©n tó liªn cuéc so tµi quan viªn ghi danh ."..CP_MAXROUND.." trµng .", 
"<color=yellow> tranh tµi thêi gian <color>: vâ l©m t©n tó liªn cuéc so tµi tõ 2005 n¨m 6 th¸ng 1 ngµy ®Õn 2005 n¨m 6 th¸ng 10 ngµy kÕt thóc . <color=yellow>20:00<color> b¾t ®Çu ®Õn <color=yellow>23:00<color> kÕt thóc . mçi <color=yellow>3<color> giê tæng céng cã <color=yellow>9<color> trµng . mçi ®æi phiªn tranh tµi ghi danh thêi gian lµ 5 phót , tranh tµi thêi gian lµ 15 phót .", 
" vâ l©m t©n tó liªn cuéc so tµi dùa theo ph©n sè lùa chän tr­íc n¨m tªn . "..CP_MAXROUND.." ë cuéc so tµi trµng , th¾ng mét cuéc ph¶i 3 ph©n , ®¸nh ngang tay v× 1 ph©n , thua còng ch­a cã ph©n . ®Õn kÕt thóc lóc , ®Ó cho tù hÖ thèng chän lùa tr­íc n¨m tªn , s¾c phong m«n ph¸i vâ l©m t©n tó danh hiÖu . ", 
" mçi tham gia ghi danh ®Ých nhµ ch¬i ë ®· tham gia tr×nh trung , ®em ®¹t ®­îc nhÊt ®Þnh t­ëng th­ëng . mçi lÇn tham gia mét vßng ®em ®¹t ®­îc nhÊt ®Þnh t­ëng th­ëng , ngoµi ra nhµ ch¬i cßn cã thÓ ®¹t ®­îc vËt phÈm , nh­ # ph¸o b«ng , huyÒn tinh qu¸ng th¹ch , phóc duyªn lé , tiªn th¶o lé , thñy tinh . ) " 
} 

function help_freshmanmatch() 
Talk( 2, "help_freshmanmatch2", CP_HELP_FRESHMAN[ 1 ], CP_HELP_FRESHMAN[ 2 ]) 
end 

function help_freshmanmatch2() 
Talk( 2, "help_freshmanmatch3", CP_HELP_FRESHMAN[ 3 ], CP_HELP_FRESHMAN[ 4 ]) 
end 

function help_freshmanmatch3() 
Talk( 1, "", CP_HELP_FRESHMAN[ 5 ]) 
end 