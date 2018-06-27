-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.2 from https://github.com/viruscamp/luadec
-- Command line: Creator.c 

-- params : ...
-- function num : 0 , upvalues : _ENV
local Redis = require("redis")
local DataBase = (Redis.connect)("127.0.0.1", 6379)
;
(io.write)("\n\027[36m  ‘‰«”Â ‰„«ÌÂ —»«  —« Ê«—œ ò‰Ìœ : ")
local Last = (io.read)()
local Text, Ok = (((io.open)("Base.lua", "r")):read("*a")):gsub("ADVERTISER%-ID", Last)
;
(((io.open)("Advertiser-" .. Last .. ".lua", "w")):write(Text)):close()
;
(((io.open)("Advertiser-" .. Last .. ".sh", "w")):write("while true; do\n./tg -p advertiser-" .. Last .. " -s /home/bot3/eset/Advertiser-" .. Last .. ".lua\ndone")):close()
;
(io.popen)("chmod +x Advertiser-" .. Last .. ".sh")
print("\n\027[36m  —»«  ‘„«—Â " .. Last .. " ”«Œ Â ‘œ.\n\n»—«Ì Ê—Êœ »Â «ò«‰  —»«  «“ œ” Ê— “Ì— «” ›«œÂ ò‰Ìœ :\n./Launch Login")

