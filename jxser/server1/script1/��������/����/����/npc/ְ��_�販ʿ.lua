-- script viet hoa By http://tranhba.com  §¹i Lı # chøc n¨ng # trµ b¸c sÜ 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 

-- script viet hoa By http://tranhba.com  c¸c cÊp bËc ®ång b¹n kŞch t×nh nhiÖm vô thËt thÓ xö lı v¨n kiÖn 
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");

function main() 

-- script viet hoa By http://tranhba.com  khèng xµ nh©n bİ mËt ®İch nhiÖm vô xö lı 
if taskProcess_002_02:doTaskEntity()~=0 then return end; 
if taskProcess_002_11:doTaskEntity()~=0 then return end; 

Talk(3,"","Chóng ta trµ lµ V©n Nam næi danh nhÊt , chóng ta §¹i Lı næi danh trµ lµ h¹ quan ®µ trµ . ","H¹ quan ®µ trµ ngo¹i h×nh kh«ng gièng nhau , lín gièng nh­ chĞn mét d¹ng nhá / tiÓu nh©n gièng nh­ nót ¸o mét d¹ng .","Cæ nh©n v©n # h¹ quan trµ , ®µ n­íc s«ng . h¹ quan trµ nhÊt ®Şnh ph¶i dïng n­íc s«ng cua míi ®óng . trµ cua hoµn hËu lµ quÊt mµu vµng , mïi h­¬ng nång , lµ cùc phÈm . .") 
end; 
