Include([[\script\missions\chrismas\ch_head.lua]]); 

function main() 
Say("Ng­¬i muèn c¸i nµo vËt phÈm ?", 8,"Gia tèc hoµn /jiasuwan","H«n mª bÉy rËp /xuanyunxianjing","HuyÒn thiªn bÉy rËp /xuantianxianjing","ChËm l¹i bÉy rËp /chihuanxianjing","§ãng b¨ng bÉy rËp /bingfengxianjing","B¹o l«i kÌn hiÖu /baoleihaojiao","B¨ng s­¬ng kÌn hiÖu /bingshuanghaojiao","Ta muèn muèn nh×n /oncancel"); 
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