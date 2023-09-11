
-- ====================== 文件信息 ======================

-- 剑侠情缘online 随机任务藏宝图物品使用处理文件
-- Edited by peres
-- 2005/10/19 PM 14:22

-- 只有晚上他们是在一起的
-- 他靠近她，拥抱她
-- 他的手指和皮肤
-- 她看着他，心里柔软而疼痛
-- 她想，她还是爱他
-- 她不想抱怨什么
-- 每天晚上他们都在做爱
-- 她不知道，除了这种接触，她的安全感和温暖，还能从哪里取得
-- 她喜欢那一瞬间。仿佛在黑暗的大海上，漂向世界的尽头

-- ======================================================

Include("\\script\\task\\random\\treasure_head.lua");  -- 藏宝图鉴赏功能
Include("\\script\\activitysys\\g_activity.lua")			--活动编辑器
Include("\\script\\activitysys\\playerfunlib.lua")		--活动编辑器

function main(nIndex)

local nRow = GetItemMagicLevel(nIndex, 1);

	if nRow==0 or nRow==nil then
		Msg2Player("<color=Orange>T蕀 b秐  kho b竨 n祔  c� r竎h, kh玭g th� s� d鬾g 頲 n鱝.<color>");
		return 1;
	end;

local strInfo = tabTreaPos:getCell("Text", nRow);
local picPath = tabTreaPos:getCell("Pic", nRow);

local nMapState = GetItemMagicLevel(nIndex, 2);

local nResult = 0;
local picLink = "";

	if nMapState==0 then
		Msg2Player("<color=Orange>B筺 d鵤 theo t蕀 b秐  kho b竨 n祔 t譵 ki誱 kh緋 v蒼 kh玭g thu ho筩h 頲 g�, khuy猲 b筺 n猲 n Long Tuy襫 Th玭 t譵 Ph� L玦 Th� ch� gi竜 甶!<color>");
		return 1;
	else
		picLink = "<link=image:"..picPath..">Th玭g tin v� T祅g B秓 у:<link> Sau khi b� m閠 s� ti襫 l韓, cu鑙 c飊g b筺 c騨g  頲 Ph� L玦 Th� ch� coh v� tr� kho b竨<color=yellow>"..strInfo.."<color>.";
		Describe(picLink, 2,
				 "b総 u khai qu藅/#useTreasureMap("..nIndex..")",
				 "сng/OnExit");
		return 1;
	end;

end;

function useTreasureMap(nIndex)

local nResult = MapCheckTreasurePos(nIndex);
local nDelResult = 0;

	if nResult==1 then
		
		-- 如果成功挖出东西了，则将该物品删除
		nDelResult = RemoveItemByIndex(nIndex);
		
		if nDelResult==1 then
			UseTreasurePos();
			
			G_ACTIVITY:OnMessage("FinishCangBaoTu");
			
			return 1;
		else
			Msg2Player("<color=Orange>Nh譶 t蕀 b秐  kho b竨 o qua o l筰 � y v蒼 kh玭g t譵 頲 g讌...<color>");
			return 1;	
		end;
		
	elseif nResult==0 then
		Msg2Player("<color=Orange>Nh譶 t蕀 b秐  kho b竨 o qua o l筰 � y v蒼 kh玭g t譵 頲 g讌...<color>");
		return 1;
	elseif nResult==2 then
		Msg2Player("Nh譶 <color=yellow>h譶h v�<color> tr猲 <color=green>b秐  kho b竨<color> dng nh� kh玭g hi觰 g�, c� th� n <color=yellow>Long Tuy襫 Th玭<color> <color=green>t譵<color> <color=yellow>Ph� L玦 Th�<color> gi竚 nh xem sao!");
		return 1;
	end;
		
end;


function OnExit()

end;