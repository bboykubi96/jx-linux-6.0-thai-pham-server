-- script viet hoa By http://tranhba.com ======== v�n ki�n ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  v�n ki�n t�n #worthanalyse.lua 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  ng�y l� ho�t ��ng ��ch gi� tr� l��ng ph�n t�ch t��ng quan n�i dung . ch� y�u ph��ng ph�p v� # 
-- script viet hoa By http://tranhba.com  ch�ng ta v� m�i ph�n th��ng ng�n m�t c�i gi� tr� gi� l��ng Worth(i) , l� l�m n�n gi� tr� l��ng ��ch 
-- script viet hoa By http://tranhba.com  ��m ng��c v� k� ph�n th��ng xu�t hi�n c�n b�n x�c su�t nh�n t� . Factor(i) , trong �� i b�y t� 
-- script viet hoa By http://tranhba.com  th� i c� ph�n th��ng ,Factor(i) b�y t� th� i c� ph�n th��ng x�c su�t nh�n t� . 
-- script viet hoa By http://tranhba.com  n�u t�t c� ph�n th��ng x�c su�t nh�n t� ��ch t�ng c�ng v� # 
-- script viet hoa By http://tranhba.com 	FactorCount = Factor(1)+Factor(2)+...+Factor(n)
-- script viet hoa By http://tranhba.com  nh� v�y , BaseP(i) = Factor(i)/FactorCount b�y t� v� th� i c� 
-- script viet hoa By http://tranhba.com  ph�n th��ng xu�t hi�n c�n b�n x�c su�t . 
-- script viet hoa By http://tranhba.com 	BasePCount = BaseP(1)+BaseP(2)+...+BaseP(n) = 1
-- script viet hoa By http://tranhba.com  b�y gi� nh� ch�i c�n b� ra nh�t ��nh gi� tr� l��ng t�i m�u c�u ph�n th��ng , gi� thi�t nh� ch�i s� 
-- script viet hoa By http://tranhba.com  b� ra ��ch gi� tr� l��ng v� #Worth , nh� v�y WP(Worth,i) b�y t� v� nh� ch�i d�ng 
-- script viet hoa By http://tranhba.com  gi� tr� l��ng Worth l�y ���c th� i c� ph�n th��ng x�c su�t . 
-- script viet hoa By http://tranhba.com  ch�ng ta �� cho <=Worth ��ch nh�t ��n g�n gi� tr� l��ng l� ph�m t�p h�p trung ��m nhi�m ch�n j ��ch x�c su�t c� 
-- script viet hoa By http://tranhba.com  t�ng l�n , k� t�ng l�n ph�c �� t� th� ra l� BaseP(j) bi�n th�nh WorthP(j) , 
-- script viet hoa By http://tranhba.com  l� , WP(Worth,j) = WorthP(j) 
-- script viet hoa By http://tranhba.com  � ch� n�y , ch�ng ta nh�t ��nh ph�i b�o ��m WorthP(j) < 1 
-- script viet hoa By http://tranhba.com  v� b�o ��m x�c su�t th� h�ng , l� 1-WorthP(j) ��ch x�c su�t c�n b� nh�ng kh�c t��ng 
-- script viet hoa By http://tranhba.com  ph�m ti�u hao h�t . 
-- script viet hoa By http://tranhba.com  cho n�n , l�m tr� �i c�ng j ph�n th��ng gi� tr� l��ng t��ng ��ng ��ch ph�n th��ng t�p h�p � ngo�i ��ch nh�ng kh�c 
-- script viet hoa By http://tranhba.com  ph�n th��ng t�t c� x�c su�t chi c�ng v� # 
-- script viet hoa By http://tranhba.com  LeavePCount = 1 - BaseP(j) 
-- script viet hoa By http://tranhba.com  l� c� nh�ng kh�c ph�n th��ng c� Worth sinh ra m�i x�c su�t v� 
-- script viet hoa By http://tranhba.com  WorthP(i) = (1-WorthP(j))*BaseP(i)/LeavePCount 
-- script viet hoa By http://tranhba.com  ch�ng ta gi� thi�t WorthPjCount t�ng c� th� v��t qua x% ��ch x�c su�t , nh� v�y , 
-- script viet hoa By http://tranhba.com  cung c�p to�n ph�p m� h�nh # 
-- script viet hoa By http://tranhba.com  khi Min(Worth-Worth(j))>=0 t�n t�i , l� 
-- script viet hoa By http://tranhba.com 	1:	WorthP(j) = BaseP(j)*(100-x)/100 + x/100
-- script viet hoa By http://tranhba.com  2: WorthP(i) = (1-WorthP(j)*BaseP(i)/LeavePCount 
-- script viet hoa By http://tranhba.com  th�c 1#2 ch�nh l� WP(Worth,n) ��ch bi�u hi�n h�nh th�c 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  tr� ch�i ch�n v�n # ki�m hi�p t�nh duy�n in t� n�t b�n 
-- script viet hoa By http://tranhba.com  kim s�n nhuy�n ki�n (software) c� ph�n c�ng ty h�u h�n , copyright 1992-2005 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com DEBUG = 1 

if not WORTHANALYSE_HEAD then 
WORTHANALYSE_HEAD =1 

if not MEM_HEAD then 
	Include ("\\script\\lib\\mem.lua")
end 
if not LERROR_HEAD then 
	Include ("\\script\\class\\lerror.lua")
end 

-- script viet hoa By http://tranhba.com ======== lo�i ��nh ngh�a ====================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lo�i t�n #WorthAnalyse 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  n�n lo�i d�ng cho x� l� d�a theo gi� tr� l��ng ph�t t��ng ��ch t��ng quan thao t�c . 
-- script viet hoa By http://tranhba.com  th�nh vi�n thay ��i l��ng # 
-- script viet hoa By http://tranhba.com  __maxP# ph� h�p th�nh c�ng x�c su�t , t�c x% 
-- script viet hoa By http://tranhba.com  __worth# gi� tr� l��ng li�t bi�u 
-- script viet hoa By http://tranhba.com  __factors# x�c su�t nh�n t� li�t bi�u , k� vi m�t v�i t� , ��m t� t�c d�n 
-- script viet hoa By http://tranhba.com  ��i �ng t��ng quan gi� tr� l��ng ��ch v�t ph�m t�c d�n , k� tr� gi� l� x�c su�t nh�n t� . 
-- script viet hoa By http://tranhba.com  __factorCount# x�c su�t nh�n t� t�ng c�ng 
-- script viet hoa By http://tranhba.com  __baseP# v�t ph�m c�n c� x�c su�t nh�n t� ��ch c�n b�n x�c su�t li�t bi�u 
-- script viet hoa By http://tranhba.com  __worthP# v�t ph�m c�n c� Worth bi�n ��i sau ��ch x�c su�t li�t bi�u 
-- script viet hoa By http://tranhba.com  __concern# ��n g�n cho ra gi� tr� l��ng Worth ��ch b� m�n 
-- script viet hoa By http://tranhba.com  __leavePC# c�n th�a l�i v�t ph�m ��ch x�c su�t t�ng c�ng 
-- script viet hoa By http://tranhba.com  th�nh vi�n h�m s� # 
-- script viet hoa By http://tranhba.com  :addWorth(idx,worth)# gia nh�p th� idx v�t ph�m ��ch gi� tr� l��ng 
-- script viet hoa By http://tranhba.com  :makeBaseP()# sinh th�nh c�n b�n x�c su�t li�t bi�u 
-- script viet hoa By http://tranhba.com  :makeWorthP(worth)# c�n c� worth sinh th�nh m�i x�c su�t li�t bi�u 
-- script viet hoa By http://tranhba.com  :getFromBase()# t� c�n b�n x�c su�t bi�u trung ch�n l�a m�t v�t ph�m 
-- script viet hoa By http://tranhba.com  :getFromWorth()# t� Worth bi�u trung ch�n l�a m�t v�t ph�m 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
WorthAnalyse = inherit(LError,{ 
__factorCount = 0, 
__maxP = 50, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:__new(maxP) 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-2-1 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-2-1 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  c�u t�o h�m s� , c�ng m�i b�t ��u h�a maxP 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  maxP# m�nh trung b� m�n gi� tr� l��ng t�ng l�n x�c su�t kh�ng nh� n�i n�y tr� gi� , n�u nh� kh�ng vi�t 
-- script viet hoa By http://tranhba.com  n�y tr� gi� , l� maxP = 50 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
__new = function(self,arg) 
if(not arg) then return end 
if(not arg[1]) then return end 
if(arg[1]<=0) then return end 
if(arg[1]>100) then 
self.__maxP = 100 
return 
end 
self.__maxP = arg[1] 
return 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:addWorth 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  cho t�c d�n idx gia t�ng m�t c�i gi� tr� gi� l��ng , c�ng t�nh to�n k� t��ng �ng x�c su�t nh�n t� , 
-- script viet hoa By http://tranhba.com  khi li�n t�c s� d�ng n�n h�m s� gia t�ng gi� tr� l��ng ��ch th�i �i�m , t�c d�n s� t�t nh�t l� t� 1 khai 
-- script viet hoa By http://tranhba.com  m�i ��ch li�n t�c s� , l�y b�o ��m hi�u su�t c�ng ch�nh x�c t�nh , khi gi� tr� l��ng v� nil ho�c 0 l�c , 
-- script viet hoa By http://tranhba.com  k� x�c su�t nh�n t� v� 0 , x�c su�t nh�n t� v� 0 ��ch b� m�n s� kh�ng b� getFromXXX h�m 
-- script viet hoa By http://tranhba.com  ��m l�y ���c ��n . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  idx# t�c d�n s� , ch�nh s� 
-- script viet hoa By http://tranhba.com  worth# gi� tr� l��ng l�n h�n 0 ��ch ch�nh s� , n�u nh� n�n tham s� v� nil , l� cam ch�u v� 0 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  b� l�i v� nil , n�u kh�ng v� 1 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  local myworth = new(WorthAnalyse) 
-- script viet hoa By http://tranhba.com  for i=1,100 do 
-- script viet hoa By http://tranhba.com  wroth:addWorth(i,i) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
addWorth = function(self,idx,worth,index) 
if(not worth) then worth = 0 end 
-- script viet hoa By http://tranhba.com  n�y v�n to�n (operation) thi�p c�p l�y ��m ng��c , cho n�n kh�ng th� nh� ��m ,0 b� ��c th� x� l� 
if(worth>0 and worth < 1) then 
self:__notify(1000,"Gi� tr� l��ng kh�ng th� v� con s� nh� . ") 
return nil 
end 
if(not self.__worth) then 
self.__worth = {} 
self.__factors= {} 
end 
if(not self.__worth[idx]) then -- script viet hoa By http://tranhba.com  n�y h�ng th��ng v� b�t k� gi� tr� g� l��ng 
self.__worth[idx] = {} 
self.__worth[idx][1] = worth 
self.__worth[idx][2] = index 
if(worth == 0) then 
self.__factors[idx] = 0 
else 
self.__factors[idx] = 1/worth -- script viet hoa By http://tranhba.com  v�o l�c n�y t�nh to�n x�c su�t nh�n t� 
				self.__factorCount = self.__factorCount + 1/worth -- script viet hoa By http://tranhba.com �ڴ�ʱ����__factorCount
end 
else -- script viet hoa By http://tranhba.com  n�y h�ng �� c� gi� tr� l��ng , 
self.__factorCount = self.__factorCount - self.__factors[idx] 
self.__worth[idx][1] = worth 
if(worth == 0) then 
self.__factors[idx] = 0 
else 
self.__factors[idx] = 1/worth 
				self.__factorCount = self.__factorCount + 1/worth
end 
end 
self.__baseP = nil 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:makeBaseP 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t� x�c su�t nh�n t� t�nh to�n l�y ���c c�n b�n x�c su�t , c�ng b�o t�n ��n __baseP trung . n�y 
-- script viet hoa By http://tranhba.com  thao t�c nh�t ��nh ph�i � t�t c� :addFactor sau m�i c� th� s� d�ng , l�y b�o ��m ch�nh x�c t�nh , 
-- script viet hoa By http://tranhba.com  n�u kh�ng , getFromXXX h� li�t h�m s� s� kh�ng th�nh c�ng . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  th�t b�i v� nil , th�nh c�ng v� 1 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
makeBaseP = function(self) 
if(not self.__worth) then 
self:__notify(100,"no any worth.") 
return nil 
end 
if(not self.__baseP) then 
self.__baseP = {} 
for i = 1,getn(self.__factors) do 
if(self.__factors[i]) then 
self.__baseP[i] = self.__factors[i]/self.__factorCount 
else -- script viet hoa By http://tranhba.com nil 
self.__baseP[i] = 0 
end 
end 
end 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:makeWorthP 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-25 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  c�n c� worth l�n n�a t�nh to�n __baseP trung ��ch x�c su�t , c�ng c�t gi� ��n __worthP 
-- script viet hoa By http://tranhba.com  trung . tr�i qua s�a sang l�i sau ��ch __worthP s� �em c�ng c�n �t h�n t��ng ���ng v�i worth ��ch b� m�n 
-- script viet hoa By http://tranhba.com  x�c su�t �i�u ch�nh v��t qua 50% . ch� � , thi h�nh n�y h�m s� tr��c , nh�t ��nh ph�i tr��c thi h�nh 
-- script viet hoa By http://tranhba.com :makeBaseP() , n�u kh�ng , thi h�nh n�n h�m s� s� th�t b�i 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  worth# gi� tr� l��ng , n�y ��m kh�ng th� v� 0 ho�c nil 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  th�t b�i v� nil , th�nh c�ng v� 1 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
makeWorthP = function(self,worth) 
if(not self.__baseP) then 
self:__notify(100,"no any baseP.") 
return nil 
end 
local concern = nil -- script viet hoa By http://tranhba.com  m�i b�t ��u tr� gi� 
for i=1,getn(self.__worth) do 
if(worth >= self.__worth[i][1]) then -- script viet hoa By http://tranhba.com i c� th� l� ch�ng ta mu�n t�m nh�t ��n g�n worth ��ch h�ng 
if(not concern) then -- script viet hoa By http://tranhba.com  c�n kh�ng c� nh� nh�t h�ng 
concern={i} -- script viet hoa By http://tranhba.com  c�n <=worth ��ch t�p h�p trung ��ch l�n nh�t h�ng t�m th�i l� i 
else 
if(self.__worth[i][1] > self.__worth[concern[1]][1]) then -- script viet hoa By http://tranhba.com  n�n h�ng l�n h�n , nh�ng <=worth 
concern = {i} -- script viet hoa By http://tranhba.com  n�ng ��a __concern 
elseif(self.__worth[i][1] == self.__worth[concern[1]][1]) then 
						concern[getn(concern)+1] = i
end 
end 
end 
end 
if(not concern) then -- script viet hoa By http://tranhba.com  kh�ng c� �t h�n t��ng ���ng v�i worth ��ch h�ng ,__worthP = __baseP 
self.__worthP = self.__baseP 
return 1 
end 
self.__concern = concern[random(getn(concern))] -- script viet hoa By http://tranhba.com  ng�u nhi�n ch�n l�y th�a m�n �i�u ki�n ��ch t�y � h�ng , t�ng l�n k� x�c su�t 
self.__leavePC = 1 - self.__baseP[self.__concern] 
-- script viet hoa By http://tranhba.com  sinh th�nh __worthP 
self.__worthP = {} 
		-- script viet hoa By http://tranhba.com 	1:	WorthP(j) = BaseP(j)*(100-x)/100 + x/100
		self.__worthP[self.__concern] = self.__maxP/100 + self.__baseP[self.__concern]*(100-self.__maxP)/100
for i=1,getn(self.__baseP) do 
if(i~=self.__concern) then -- script viet hoa By http://tranhba.com i l� x�c su�t b� t�ng l�n h�ng 
-- script viet hoa By http://tranhba.com  2: WorthP(i) = (1-WorthP(j))*BaseP(i)/LeavePCount 
self.__worthP[i] = (1-self.__worthP[self.__concern])*self.__baseP[i]/self.__leavePC 
end 
end -- script viet hoa By http://tranhba.com endfor i 
return 1 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #:getFromBase 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t� c�n b�n x�c su�t bi�u trung ng�u nhi�n r�t ra l�y m�t b� m�n . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  n�u nh� th�nh c�ng , tr� v� b� m�n bi�n s� , n�u kh�ng tr� v� nil 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
getFromBase = function(self) 
if(not self.__baseP) then 
self:__notify(300,"C�n b�n x�c su�t bi�u kh�ng t�n t�i . ") 
return nil 
end 
local rnd = random() 
local p = 0 
for i=1,getn(self.__baseP) do 
			p = p + self.__baseP[i]
if(rnd <= p and self.__worth[i][1]~=0) then 
return i 
end 
end 
self:__notify(500,"Kh�ng c�ch n�o ch�n l�a th�ch h�p b� m�n . ") 
return nil 
end, 

-- script viet hoa By http://tranhba.com ======== h�m s� ��nh ngh�a ==================================-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  h�m s� nguy�n h�nh #getFromWorth 
-- script viet hoa By http://tranhba.com  t�c gi� #yfeng 
-- script viet hoa By http://tranhba.com  khai s�ng nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  cu�i c�ng s�a ��i nh�t k� #2005-1-26 
-- script viet hoa By http://tranhba.com  ch�c n�ng t� thu�t # 
-- script viet hoa By http://tranhba.com  t� gi� tr� x�c su�t bi�u trung , ng�u nhi�n ch�n l�y m�t b� m�n , gi� tr� x�c su�t bi�u l� theo theo 
-- script viet hoa By http://tranhba.com  cho c�ng ��ch gi� tr� l��ng worth t�nh ra , cho n�n , thi h�nh n�y h�m s� tr��c , �t nh�t 
-- script viet hoa By http://tranhba.com  c�n thi h�nh m�t l�n :makeWorthP(worth) , l� , � makeWorthP sau 
-- script viet hoa By http://tranhba.com  ��ch getFromWorth ��u l� t� worth t�nh ra gi� tr� x�c su�t bi�u trung l�y ���c ��n ��ch 
-- script viet hoa By http://tranhba.com  b� m�n . 
-- script viet hoa By http://tranhba.com  tham s� # 
-- script viet hoa By http://tranhba.com  worth# gi� tr� l��ng , n�n tham s� s� �em gi� tr� l��ng bi�u trung �t h�n t��ng ���ng v�i th� c�ng h�n 
-- script viet hoa By http://tranhba.com  nh�t ti�p c�n gi� tr� l��ng ��ch b� m�n x�c su�t t�ng l�n t�i 50% tr� l�n 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� # 
-- script viet hoa By http://tranhba.com  n�u nh� th�nh c�ng , l� tr� v� l�a ch�n b� m�n bi�n s� , n�u kh�ng tr� v� nil 
-- script viet hoa By http://tranhba.com  d�ng l� # 
-- script viet hoa By http://tranhba.com  v� 
-- script viet hoa By http://tranhba.com ==================================================-- script viet hoa By http://tranhba.com  
getFromWorth = function(self) 
if(not self.__worthP) then 
self:__notify(400,"have no baseP.") 
return nil 
end 
local rnd = random() 
local p = 0 
for i=1,getn(self.__baseP) do 
			p = p + self.__worthP[i]
if(rnd <= p and self.__worth[i][1]~=0) then 
return self.__worth[i][2] 
end 
end 
self:__notify(500,"Kh�ng c�ch n�o ch�n l�a th�ch h�p b� m�n . ") 
return nil 
end, 

}) 

-- script viet hoa By http://tranhba.com eg. 
-- script viet hoa By http://tranhba.com Include("script/lib/string.lua") 
-- script viet hoa By http://tranhba.com local myworth = new(WorthAnalyse) 
-- script viet hoa By http://tranhba.com for i=1,200 do 
-- script viet hoa By http://tranhba.com  myworth:addWorth(i,random(200000)) 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com myworth:makeBaseP() 
-- script viet hoa By http://tranhba.com h = openfile("settings/tmp.txt","w") 
-- script viet hoa By http://tranhba.com for i=1,1000 do 
-- script viet hoa By http://tranhba.com  local worth = random(200000) 
-- script viet hoa By http://tranhba.com  myworth:makeWorthP(worth) 
-- script viet hoa By http://tranhba.com  local idx = myworth:getFromWorth() 
-- script viet hoa By http://tranhba.com  if(idx) then 
-- script viet hoa By http://tranhba.com  local arr = { 
-- script viet hoa By http://tranhba.com  worth,myworth.__worth[idx][1],myworth.__worthP[idx] 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  write(h,join(arr,"\t").."\n") 
-- script viet hoa By http://tranhba.com  flush(h) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com closefile(h) 

end 
