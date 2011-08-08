--TEST DISTDB MODULE

require"splay.base"
distdb = require"splay.distdb"
local crypto = require"crypto"
--local urpc = require"splay.urpc"
local rpc = require"splay.rpc"
local counter = 5


events.loop(function()

	events.sleep(2*job.position + math.random(100)/100)

	distdb.init(job)


	if job.position == 10 then
		events.sleep(60)
		log:print(job.me.port..": im goin DOOOOWN!!!")
		os.exit()
	end
end)

