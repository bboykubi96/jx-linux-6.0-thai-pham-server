-- script viet hoa By http://tranhba.com ==== vËt phÈm hîp thµnh c¸ch thøc ====-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  hîp thµnh c«ng thøc # 
-- script viet hoa By http://tranhba.com  COMPOSE = {Material, Award, Result_su, Result_er, Result_fa} 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Award hîp thµnh lÊy ®­îc vËt phÈm , ®Þnh nghÜa thÊy award.lua 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Result_su, Result_er, Result_fa theo thø tù lµ hîp thµnh thµnh c«ng # sai lÇm # thÊt b¹i lóc ®Ých kÕt qu¶ biÓu hiÖn , ®Òu cã ba lo¹i biÓu ®¹t thøc # 
-- script viet hoa By http://tranhba.com  Result == "" lóc Say("Hîp thµnh thµnh c«ng #", 0) / Say("Nguyªn liÖu kh«ng ®óng #", 0) / Say("Hîp thµnh thÊt b¹i #", 0) 
-- script viet hoa By http://tranhba.com  type(Result) == "string" lóc Say(Result, 0) 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Material hîp thµnh tµi liÖu cÇn thiÕt 
-- script viet hoa By http://tranhba.com  Material = {nAmount, tbProp, [strName]} 
-- script viet hoa By http://tranhba.com  nAmount tµi liÖu cÇn ®Ých sè l­îng 
-- script viet hoa By http://tranhba.com  tbProp tµi liÖu cÇn ®Ých thuéc tÝnh 
-- script viet hoa By http://tranhba.com  tbProp = {nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck} 
-- script viet hoa By http://tranhba.com  6 c¸ nguyªn tè cïng AddItem ®Ých 6 c¸ tham sæ , ®Æc thï # 
-- script viet hoa By http://tranhba.com  nÕu nh­ mét nguyªn tè v× nil , lµ bµy tá kh«ng h¹n chÕ nªn thuéc tÝnh 
-- script viet hoa By http://tranhba.com 				Èç¹ûÄ³¸öÔªËØÎª"+n"£¬Ôò±íÊ¾¸ÃÊôÐÔÐèÒª >= n
-- script viet hoa By http://tranhba.com  nÕu nh­ mét nguyªn tè v× "-n" , lµ bµy tá nªn thuéc tÝnh cÇn <= n 
-- script viet hoa By http://tranhba.com  strName lµ tµi liÖu tªn # cã thÓ chän ®Ých , nÕu nh­ kh«ng ®iÒn viÕt , material_name hµm sè kh«ng cã hiÖu qu¶ # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  nÕu nh­ Material = {Material1, Material2, ……} lµ bµy tá cÇn nhiÒu lo¹i tµi liÖu 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ®Æc ®iÓm # ®Ò giao vËt phÈm cã thÓ träng ®iÖp # cÇn tµi liÖu cã thÓ lµ m¬ hå ®Ých # cÇn tµi liÖu ®Õm tæ cã thÓ nhiÒu lo¹i ph­¬ng thøc tæ hîp 

if not COMPOSE_HEAD then 
COMPOSE_HEAD = 1 

Include("\\script\\lib\\basic.lua");
Include("\\script\\lib\\award.lua");

TB_PLCOMPOSE = {} 

-- script viet hoa By http://tranhba.com  kiÓm tra chØ ®Þnh vËt phÈm thuéc tÝnh cã hay kh«ng phï hîp yªu cÇu 
function __checkprop(tb_needprop, tb_itemprop) 
for i = 1, 6 do 
if (type(tb_needprop[i]) == "string") then 
if (strsub(tb_needprop[i],1,1) == "-") then 
if (tb_itemprop[i] > tonumber(strsub(tb_needprop[i],2))) then 
return nil 
end 
else 
if (tb_itemprop[i] < tonumber(tb_needprop[i])) then 
return nil 
end 
end 
elseif (tb_needprop[i] ~= nil and tb_needprop[i] ~= tb_itemprop[i]) then 
return nil 
end 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra c¸i nµy mét vËt phÈm lµ hay kh«ng lµ cÇn , còng gi¶m bít cÇn sè l­îng 
function __checkone(tb_need, tb_needcount, tb_itemprop, tb_itemcount) 
if (type(tb_needcount[1]) == "table") then 
for i = 1, getn(tb_needcount) do 
if __checkone(tb_need[i], tb_needcount[i], tb_itemprop, tb_itemcount) then 
return 1 
end 
end 
return nil 
else 
if (tb_needcount[1] > 0 and __checkprop(tb_need[2], tb_itemprop)) then 
if (tb_needcount[1] >= tb_itemcount[1]) then 
tb_needcount[1] = tb_needcount[1] - tb_itemcount[1] 
return 1 
else 
tb_itemcount[1] = tb_itemcount[1] - tb_needcount[1] 
return nil 
end 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc tæng céng cÇn bao nhiªu vËt phÈm còng thµnh lËp t­¬ng øng nhu cÇu sè l­îng ®Õm tæ 
function __checkneed(tb_material) 
if (type(tb_material[1]) == "table") then 
local tb_cound = {} 
local n_count = 0 
local n 
for i = 1, getn(tb_material) do 
n, tb_cound[i] = __checkneed(tb_material[i]) 
			n_count = n_count + n
end 
return n_count, tb_cound 
else 
return tb_material[1], {tb_material[1]} 
end 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra tÊt c¶ vËt phÈm lµ hay kh«ng phï hîp hîp thµnh yªu cÇu , nÕu nh­ phï hîp yªu cÇu lµ thñ tiªu 
function __checkall(tb_need, n_count) 
local n_needcount, tb_count = __checkneed(tb_need) 

for i = 1, n_count do 
local n_itemidx = GetGiveItemUnit(i) 
local tb_p = {} 
tb_p[1], tb_p[2], tb_p[3], tb_p[4], tb_p[5], tb_p[6] = GetItemProp(n_itemidx) 
local n_itemcount = GetItemStackCount(n_itemidx) 
n_needcount = n_needcount - n_itemcount 
-- script viet hoa By http://tranhba.com print(i..": idx="..n_itemidx .. "("..n_itemcount..")") 
if (not __checkone(tb_need, tb_count, tb_p, {n_itemcount})) then 
return nil 
end 
end 

if (n_needcount ~= 0) then 
return nil 
end 

for i=1, n_count do 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  cho ®èi tho¹i trë vÒ ®iÒu hµm sè 
function __compose(n_count) 
local tb_compose = TB_PLCOMPOSE[PlayerIndex] 
if (__checkall(tb_compose[1], n_count)) then 
if (award_give(tb_compose[2]) > 0) then 
__tellresult(tb_compose[3],"Hîp thµnh thµnh c«ng #") 
else 
__tellresult(tb_compose[5],"Hîp thµnh thÊt b¹i #") 
end 
else 
__tellresult(tb_compose[4],"Nguyªn liÖu kh«ng ®óng #") 
end 
TB_PLCOMPOSE[PlayerIndex] = nil -- script viet hoa By http://tranhba.com  thanh r¬i , phßng cµ 
end 

-- script viet hoa By http://tranhba.com  b¸o cho kÕt qu¶ 
function __tellresult(var_result, str) 
local str_type = type(var_result) 
if (str_type == "string") then 
if (var_result == "") then 
Say(str, 0) 
Msg2Player(str) 
else 
Say(var_result, 0) 
Msg2Player(var_result) 
end 
elseif (str_type == "function") then 
var_result() 
elseif (str_type == "table" and type(var_result[1]) == "function") then 
var_result[1](unpack(var_error,2)) 
end 
end 


-- script viet hoa By http://tranhba.com  më ra cho giíi mÆt 
function material_compose(tb_compose, str_title, str_text) 
TB_PLCOMPOSE[PlayerIndex] = tb_compose 
if (str_text == nil) then 
str_text = " cÇn tµi liÖu #"..material_name(tb_compose[1]) 
end 
GiveItemUI(totext(str_title), totext(str_text), "__compose") 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhu cÇu vËt phÈm ®Ých ch÷ viÕt miªu t¶ 
function material_name(tb_material, b_front) 
if (type(tb_material[1]) == "table") then 
local str = "" 
local n_materials = getn(tb_material) 
for i = 1, n_materials do 
local b_f = i < n_materials 
if (i > 1) then 
if (b_front or b_f) then 
str = str .. ", " 
else 
str = str .. " cïng " 
end 
end 
str = str .. material_name(tb_material[i], b_f) 
end 
return str 
else 
return tb_material[1] .. " c¸ " .. tb_material[3] 
end 
end 


end
