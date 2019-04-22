script_name("Helper")
script_description("���������...")
script_version("V1.0")
script_author("AlexFLIX")
script_dependencies("SAMPFUNCS, SAMP")

require("lib.moonloader")
local sampev = require("lib.samp.events")

local encoding = require ("encoding")
encoding.default = "CP1251"
u8 = encoding.UTF8

jstart = 1

function main()
  while not isSampAvailable() do
    wait(1000)
  end
  if jstart == 1 then
    sampAddChatMessage("{ffffff}* [Helper]: ����������� ������ ��� ����� ������� ��������. {ffffff}������ �������: 0.1.")
  elseif jstart == 2 then
    sampfuncsLog("{ffffff}* [Helper]:  test...")
  end
	sampRegisterChatCommand("cuff", cuffed)
	sampRegisterChatCommand("uncuff", uncuff)
	sampRegisterChatCommand("frisk", frisked)
	sampRegisterChatCommand("shi", shipped)
	sampRegisterChatCommand("findgun", findgun)
	sampRegisterChatCommand("incar", carin)
	sampRegisterChatCommand("docs", docs)
	sampRegisterChatCommand("ko", knockouted)
	sampRegisterChatCommand("ud", ud)
	sampRegisterChatCommand("time", rptime)
	sampRegisterChatCommand("vignat1", vignat1)
	sampRegisterChatCommand("vignat2", vignat2)
	sampRegisterChatCommand("vignat3", vignat3)
	sampRegisterChatCommand("naborfso1", naborfso1)
	sampRegisterChatCommand("naborfso2", naborfso2)
	sampRegisterChatCommand("naborfso3", naborfso3)
	sampRegisterChatCommand("naborfso4", naborfso4)
	sampRegisterChatCommand("nepodhod", nepodhod)
	sampRegisterChatCommand("hvat", hvat)
	sampRegisterChatCommand("hhelp", hhelp)
	sampRegisterChatCommand("reload", reload)
	sampRegisterChatCommand("cudo", cudo)
	sampRegisterChatCommand("molitva", molitva)
end

function cuffed(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me ������� ���� �������� ��������.")
			wait(15)
			sampSendChat("/do ��������� �� �����.")
			wait(15)
			sampSendChat("/cuff " .. id)
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1)
		end
	end)
end

function uncuff(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me �������� ���� � ������, �� �������� ������ ����� �� ����������.")
			wait(100)
			sampSendChat("/uncuff " .. id)
			wait(100)
			sampSendChat("/me ������� ��������� �� ����.")
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1)
		end
	end)
end

function frisked(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do �� ����� ������� �����.")
			wait(800)
			sampSendChat("/me ������ ��������� ���� ������ ����� � �������� �� �����.")
			wait(800)
			sampSendChat("/me ��������� ����� �� �����, ����� ����� ��� � ����� � ����� ��������.")
			wait(800)
			sampSendChat("/frisk " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1) end
	end)
end

function shipped(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do ����� � ������ ������.")
			wait(300)
			sampSendChat("/me �������� ���� � ������ � ����� �� ������.")
			wait(300)
			sampSendChat("/ship " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1) end
	end)
end

function findgun(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do �������� ����� �� �����.")
			wait(1000)
			sampSendChat("/me ������ ��������� ���� ������ ����� � �������� �� �����.")
			wait(1000)
			sampSendChat("/me ��������� ����� �� �����, ����� ����� ��� � ����� � ����� ��������.")
			wait(1000)
			sampSendChat("/findgun " .. id)
		end
	end)
end

function carin(params)
	lua_thread.create(function()
		local a, b = params:match("(.+)%s+(.+)")
		if a and b ~= nil then
			sampSendChat("/me ���� ����������� �� ������, ������ ����� ������, ����� ����..")
			wait(300)
			sampSendChat("/do .. ������ ����������� � ������ � ������ �����.")
			wait(300)
			sampSendChat("/incar " .. a .. " " .. b)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1) end
	end)
end

function docs(params)
	lua_thread.create(function()
		sampSendChat("������������, ��� ��������� ��������� ��� ��������� ������.")
		wait(1500)
		sampSendChat("���������� ���� ��������� �������������� ��������...")
		wait(1400)
		sampSendChat("� ������ ������������ ����� ������� ����.")
	end)
end

function knockouted(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me � �������, ������� ���� � ������� ����� �������� ��������.")
			wait(15)
			sampSendChat("/ko " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1) end
	end)
end

function ud(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do � ������� ������� ����� �������������.")
			wait(1000)
			sampSendChat("/me ������ ������������� �� ������� � ������� �������� �������� ")
			wait(500)
			sampSendChat("/ud " .. id)
			wait(1000)
			sampSendChat("/me ����� ������������� ������� � ������.")
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: �� �� ����� �������� !", -1) end
	end)
end

function reload()
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: ���������������� ������������ �������!")
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: ������������ ����� ��������� ����������!")
	thisScript():reload()
end

function cudo(params)
	lua_thread.create(function()
		sampSendChat("/me ��������� ������ ���� �����, �������� ������� ��������.")
		wait(900)
		sampSendChat("/do � ���, �������� ����������� ����� ���� ������.")
	end)
end

function rptime(params)
	lua_thread.create(function()
		sampSendChat("/me ������� ����� �� ����� ����, ��������� �� ���� ����� *Rish Bish*")
		wait(200)
		sampSendChat("/time ")
		wait(650)
		sampSendChat("/do ����� �� ����� ���� ���� ��, ��� ���� ��� ����.")
	end)
end

function hhelp(params)
	sampAddChatMessage("{4169E1}�������: {ffffff}cuff - �� cuff. | frisk - �� frisk. | shi - �� ����. | findgun - �� findgun.")
	sampAddChatMessage("{4169E1}�������: {ffffff}incar - �� incar. | docs - ��������� ���������. | hvat - �� �� ������� �� ���������.")
	sampAddChatMessage("{4169E1}�������: {ffffff}vignat1 - ������� �������� ������. | vignat2 - �������� ���� � �������. | vignat3 - �������������� � �������.")
end

function vignat1(params)
	lua_thread.create(function()
	sampSendChat("��������, ����� ��� �������� ������ �������������, ��� � ���� �������� ��������� ����.")
	end)
end

function vignat2(params)
	lua_thread.create(function()
		sampSendChat("/me ������� ���� ����������.")
		wait(700)
		sampSendChat("/me ������� ���������� �� ������ �������������.")
	end)
end

function vignat3(params)
	lua_thread.create(function()
	sampSendChat("/me ������ �������.")
	wait(700)
	sampSendChat("/me ������������� ���������� ��������.")
	wait(700)
	sampSendChat("/do ���������� �������������.")
	wait(700)
	sampSendChat("/me ������ ����������.")
	wait(700)
	sampSendChat("/me ����� ���������� �� ������ �������������.")
	end)
end

function naborfso1(params)
	lua_thread.create(function()
		sampSendChat("������������, ���� ����� ��������� ������.")
		wait(500)
		sampSendChat("�� ������ �� �������������?")
	end)
end

function naborfso2(params)
	lua_thread.create(function()
		sampSendChat("/todo ��� � ����, �������� ���� ���������. * ���������� ���� � �����������.")
	end)
end

function naborfso3(params)
	lua_thread.create(function()
		sampSendChat("/todo ������, ������� ��� ����� �� ������ �����? * ���������� ���� � ����������� ������� �����������.")
	end)
end

function naborfso4(params)
	lua_thread.create(function()
		sampSendChat("���... ������ ���������� ���������� ������ ���. ")
	end)
end

function nepodhod(params)
	lua_thread.create(function()
		sampSendChat("��������, �� ��� �� ���������.")
	end)
end

function molitva(params)
	lua_thread.create(function()
		sampSendChat("/me �������� ����� �� ������ � ������ ���� �����.")
		wait(350)
		sampSendChat("/do ���� ������ ��������� �� ��������.")
		wait(1000)
		sampSendChat("[�������]: ���� ������ � ����� ������,")
		wait(2100)
		sampSendChat("[�������]: ������� ��� � �����, � ������� �����,")
		wait(2400)
		sampSendChat("[�������]: ���� �������� � ���� � ��� ��� � ����� ����!")
		wait(2400)
		sampSendChat("[�������]: ����� ���� � ���������� ������ �������� ��,")
		wait(2400)
		sampSendChat("[�������]: � ���� ����� ������, ������� ��������� � ����� ����� �")
		wait(2400)
		sampSendChat("[�������]: ���� ������ ���, ����, ���� �� ���� ��������!")
		wait(2400)
		sampSendChat("[�������]: � ���� �����, � ���� ������ �������� ��, ��� ��� ���������,")
		wait(2300)
		sampSendChat("[�������]: ������� �� ������ �����: ���� ���������, ������������, ������!")
		wait(2200)
		sampSendChat("/me ������� ���� � �������� �����-�� ����� ����� � �����.")
		wait(1800)
		sampSendChat("/do � ������ ��������� �����.")
	end)
end

function hvat(params)
	lua_thread.create(function()
	sampSendChat("/me ������ ��������� ���� ������� �������� �� ���������..")
	wait(700)
	sampSendChat("/me ..� ����� ���� �� �����.")
	end)
end