-------------------------------------------------***Create*By*Heart*Doldly***---------------------------------------------------------------
Include("\\script\\event\\springfestival08\\allbrother\\taskhead.lua")

tbCaiLao_parserby = {
	{1525,523,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--T­¬ng D­¬ng
	{1525,521,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--Thµnh §«
	{1525,520,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--Ph­îng T­êng
	{1525,525,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--§¹i Lý
	{1525,524,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--D­¬ng Ch©u
	{1525,522,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--BiÖn Kinh
	{1525,526,1590,3124,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},--L©m An
	{108,53,1617,3205,"\\script\\event\\springfestival08\\allbrother\\thientaidongtu.lua","C·i L·o §¹i Nh©n"},--Ba L¨ng
}

function add_allnpc_tbCaiLao()
	tbCaiLao_tbCaiLaobynpc(tbCaiLao_parserby)
end

function tbCaiLao_tbCaiLaobynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end;