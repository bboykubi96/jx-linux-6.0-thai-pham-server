Include([[\script\missions\chrismas\ch_head.lua]]); 

function main() 
Say("Ng��i mu�n c�i n�o v�t ph�m ?", 8,"Gia t�c ho�n /jiasuwan","H�n m� b�y r�p /xuanyunxianjing","Huy�n thi�n b�y r�p /xuantianxianjing","Ch�m l�i b�y r�p /chihuanxianjing","��ng b�ng b�y r�p /bingfengxianjing","B�o l�i k�n hi�u /baoleihaojiao","B�ng s��ng k�n hi�u /bingshuanghaojiao","Ta mu�n mu�n nh�n /oncancel"); 
end; 

function jiasuwan() 
AddSkillState(512,4,0,10*18); 
end; 

function xuanyunxianjing() 
CastSkill(668,1) 
end; 

function xuantianxianjing() 
CastSkill(668,10) 
end; 

function chihuanxianjing() 
CastSkill(669,1) 
end; 

function bingfengxianjing() 
CastSkill(669,10) 
end; 

function baoleihaojiao() 
CastSkill(505,1) 
end; 

function bingshuanghaojiao() 
CastSkill(506,1) 
end; 

function oncancel() 

end;