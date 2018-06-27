-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.2 from https://github.com/viruscamp/luadec
-- Command line: Advertiser 

-- params : ...
-- function num : 0 , upvalues : _ENV
local a = require("serpent")
local b = require("redis")
local c = (b.connect)("127.0.0.1", 6379)
local d = 498923336
local e = function(f)
  -- function num : 0_0 , upvalues : _ENV, a
  print("\n-------------------------------------------------------------- START")
  print((a.block)(f, {comment = false}))
  print("--------------------------------------------------------------- STOP\n")
end

Dl_Cb = function(g, h)
  -- function num : 0_1
end

SendText = function(i, j, k, Dl_Cb, data)
  -- function num : 0_2 , upvalues : _ENV
  ret_parsed = function(l, m)
    -- function num : 0_2_0 , upvalues : _ENV, i, j, Dl_Cb, data
    tdbot_function({["@type"] = "sendMessage", chat_id = i, reply_to_message_id = j, disable_notification = true, from_background = true, reply_markup = nil, 
input_message_content = {["@type"] = "inputMessageText", 
text = {["@type"] = "formattedText", text = m.text, 
entities = {}
}
, disable_web_page_preview = true, clear_draft = false}
}, callback or Dl_Cb, data)
  end

  tdbot_function({["@type"] = "parseTextEntities", text = k, 
parse_mode = {["@type"] = "textParseModeHTML"}
}, ret_parsed, data)
end

local n = function(o, p, callback, data)
  -- function num : 0_3 , upvalues : _ENV
  tdbot_function({["@type"] = "viewMessages", chat_id = o, message_ids = p}, callback or Dl_Cb, data)
end

local q = function(r, callback, data)
  -- function num : 0_4 , upvalues : _ENV
  tdbot_function({["@type"] = "checkChatInviteLink", invite_link = r}, callback or Dl_Cb, data)
end

local t = function(r, callback, data)
  -- function num : 0_5 , upvalues : _ENV
  tdbot_function({["@type"] = "joinChatByInviteLink", invite_link = r}, callback or Dl_Cb, data)
end

local u = function(o, v, w, callback, data)
  -- function num : 0_6 , upvalues : _ENV
  tdbot_function({["@type"] = "sendChatAction", chat_id = o, 
action = {["@type"] = "chatAction" .. v, progress = w}
}, callback or Dl_Cb, data)
end

local x = function(o, y, z, A, callback, data)
    B = {banned_until_date = 0}
    B["@type"] = "chatMemberStatus" .. z
    tdbot_function({["@type"] = "setChatMemberStatus", chat_id = o, user_id = y, status = B}, callback or Dl_Cb, data)
end

local C = function(callback, data)
  -- function num : 0_8 , upvalues : _ENV
  tdbot_function({["@type"] = "getMe"}, callback or Dl_Cb, data)
end

local D = function(y, callback, data)
  -- function num : 0_9 , upvalues : _ENV
  tdbot_function({["@type"] = "getUser", user_id = y}, callback or Dl_Cb, data)
end

local E = function(o, F, G, H, I, J, K, L, y, callback, data)
  -- function num : 0_10 , upvalues : _ENV
  tdbot_function({["@type"] = "sendMessage", chat_id = o, reply_to_message_id = F, disable_notification = G, from_background = H, reply_markup = I, 
input_message_content = {["@type"] = "inputMessageContact", 
contact = {["@type"] = "Contact", phone_number = tostring(J), first_name = tostring(K), last_name = tostring(L), user_id = y}
}
}, callback or Dl_Cb, data)
end

local M = function(J, K, L, y, callback, data)
  -- function num : 0_11 , upvalues : _ENV
  tdbot_function({["@type"] = "importContacts", 
contacts = {
[0] = {["@type"] = "contact", phone_number = J, first_name = K, last_name = L, user_id = y}
}
}, callback or Dl_Cb, data)
end

local N = function(O, P, Q, callback, data)
  -- function num : 0_12 , upvalues : _ENV
  tdbot_function({["@type"] = "getChats", offset_order = O, offset_chat_id = P, limit = Q}, callback or Dl_Cb, data)
end

GetChat = function(o, callback, data)
  -- function num : 0_13 , upvalues : _ENV
  tdbot_function({["@type"] = "getChat", chat_id = o}, callback or Dl_Cb, data)
end

local R = function(o, callback, data)
  -- function num : 0_14 , upvalues : _ENV
  tdbot_function({["@type"] = "openChat", chat_id = o}, callback or Dl_Cb, data)
end

local S = function(o, T, p, G, H, callback, data)
  -- function num : 0_15 , upvalues : _ENV
  tdbot_function({["@type"] = "forwardMessages", chat_id = o, from_chat_id = T, message_ids = p, disable_notification = G or 0, from_background = H or 1}, callback or Dl_Cb, data)
end

local U = {
Black = {30, 40}
, 
Red = {31, 41}
, 
Green = {32, 42}
, 
Yellow = {33, 43}
, 
Blue = {34, 44}
, 
Magenta = {35, 45}
, 
Cyan = {36, 46}
, 
White = {37, 47}
}
local V = function()
  -- function num : 0_16 , upvalues : _ENV
  Advertiser = dofile("./Advertiser.lua")
end

local W = "•�\128\162 راهنمای ربات :\n\n�\162 راهنمای مدیر اصلی [فقط برای مدیر اصلی میباشد]\nراهنمای مربوط به دستورات مدیر اصلی ربات.\nتوجه : راهنمای مربوط به این بخش فقط برای مدیر اصلی ربات قابل مشاهده میباشد.\n\n�\162 راهنمای عمومی\nراهنمای مربوط به دستورات عمومی ربات.\n\n�\162 راهنمای ارسال زماندار خودکار\nراهنمای مربوط به فوروارد اتوماتیکی زمان دار متن.\n\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 سازنده : @ArminNy\n�\162 کانال : @DELTATM\n"
local X = "•�\128\162 راهنمای دستورات مدیر اصلی ربات :\n\n�\162 بازبینی\nبازبینی کردن فایل ربات.\n\n�\162 بازنشانی [همه/تنظیمات/جدید]\nحذف اطلاعات ذخیره شده مربوط به ربات بر روی ردیس سرور یا تنظیم مجدد ربات به حالت پیشفرض :\nهمه : حذف اطلاعات ذخیره شده مربوط به ربات بر روی ردیس سرور.\nتنظیمات : تنظیم مجدد تنظیمات ربات به حالت پیشفرض\nجدید : حذف اطلاعات لازم برای آمار صحیح ربات ساخته شده جدید\n\n�\162 لیست مدیر ها\nمشاهده لیست مدیر های دوم ربات.\n\n�\162 افزودن مدیر [شناسه]\nافزودن شخص به لیست مدیر های دوم ربات.\nتوجه : این عمل به صورت شناسه,پاسخ,نام کاربری و فراخوانی (منشن) ممکن میباشد.\n\n�\162 حذف مدیر [شناسه]\nحذف شخص از لیست مدیر های دوم ربات.\nتوجه : این عمل به صورت شناسه,پاسخ,نام کاربری و فراخوانی (منشن) ممکن میباشد.\n\n�\162 پاکسازی لیست مدیر ها\nحذف لیست مدیر های دوم ربات.\n\n�\162 تنظیم سوپرگروه مدیریت\nتنظیم سوپرگروه فعلی به عنوان سوپرگروه مدیریت.\nاین دستور برای زمانی که آمار ربات زیاد میشود و در سوپرگروه ها دیر جواب میدهد,در سوپرگروه تنظیم شده به عنوان سوپرگروه مدیریت با سرعت بهتری جواب میدهد.\nتوجه : فقط یک سوپرگروه میتواند به عنوان سوپرگروه مدیریت تنظیم شود و این عمل فقط در سوپرگروه ممکن میباشد.\n\n�\162 حذف سوپرگروه مدیریت\nحذف سوپرگروه تنظیم شده به عنوان سوپرگروه مدیریت.\nتوجه : این عمل فقط در سوپرگروه ممکن میباشد.\n\n�\162 پاکسازی سوپرگروه مدیریت\nپاکسازی سوپرگروه مدیریت\n\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 سازنده : @ArminNy\n�\162 کانال : @DELTATM\n"
local Y = "•�\128\162 راهنمای مربوط به ارسال زماندار خودکار:\n\n�\162 ارسال زماندار خودکار [روشن/خاموش]\nسوئیج خاموش/روشن کردن فوروارد اتوماتیکی متن زمان دار.\n\n�\162 تنظیم ارسال زماندار خودکار [زمان بر حسب دقیقه] [تعداد تکرار] [با پاسخ روی متن]\nتنظیم متن برای ارسال زماندار خودکار.\nمثال :\nتنظیم ارسال زماندار خودکار 2 5\nاین عمل ینی متن پاسخ شده را هر دو دقیقه یک بار میفرستد و این عمل را پنج بار تکرار میکند.\nتوجه : متن تنظیم شده برای ارسال زماندار خودکار فقط به سوپرگروه ها ارسال خواهد شد.\n\n�\162 لیست ارسال زماندار خودکار\nمشاهده لیست ارسال زماندار خودکار.\n\n�\162 حذف ارسال زماندار خودکار [شناسه]\nحذف متن تعیین شده برای ارسال زماندار خودکار با شناسه.\n\n�\162 پاکسازی لیست ارسال زماندار خودکار\nپاکسازی لیست ارسال زماندار خودکار.\n\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 سازنده : @ArminNy\n�\162 کانال : @DELTATM\n"
local Z = "•�\128\162 راهنمای دستورات عمومی ربات :\n\n�\162 انلاین\nاطمینان از روشن بودن ربات.\n\n�\162 تست محدودیت\nاطمینان از روشن بودن ربات در حین محدودیت ارسال پیام.\n\n�\162 پانل\nمشاهده پانل ربات.\n\n�\162 تنظیمات\nمشاهده تنظیمات ربات.\n\n�\162 شماره ربات\nدریافت شماره ربات.\n\n�\162 ترک سوپرگروه\nترک کردن سوپرگروه فعلی.\n\n�\162 ترک همه\nترک کردن همه سوپرگروه ها.\n\n�\162 ذخیره مخاطب\nاین عمل برای 30 ثانیه به شما وقت میدهد که هر شماره ای که در سوپرگروه ارسال میشود,توسظ ربات ذخیره میشود.\n\n�\162 عضویت خودکار [روشن/خاموش]\nسوئیچ خاموش/روشن کردن عضویت خودکار به سوپرگروه ها.\nنکته : ربات فقط از مدیر ها لینک خواهد گرفت.\n\n�\162 تعین وضعیت ذخیره لینک از [مدیر ها/همه]\nتعین وضعیت ذخیره لینک اگر بر روی مدیر ها تنظیم باشد ربات فقط لینک هایی که مدیر ها میفرستند را ذخیره میکنند,اگر بر روی همه تنظیم باشد ربات لینک هایی که توسط هر شخصی فرستاده میشوند را ذخیره میکنند.\n\n�\162 خواندن پیام [روشن/خاموش]\nسوئیچ خاموش/روشن کردن حالت خواندن پیام.\n\n�\162 ارسال به [همه/خصوصی ها/سوپرگروه ها] [با پاسخ روی متن]\nارسال متن پاسخ داده به مکالمه های مورد نظر.\n\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 سازنده : @ArminNy\n�\162 کانال : @DELTATM\n"
local _ = function(a0)
  -- function num : 0_17 , upvalues : _ENV
  local a1 = (io.popen)(a0)
  local h = a1:read("*all")
  return h
end

local a2 = function(a3)
  -- function num : 0_18
  local a4 = false
  if a3.sender_user_id == 498923336 then
    a4 = true
  end
  return a4
end

local a5 = function(a3)
  -- function num : 0_19
  local a4 = false
  if a3.sender_user_id == 498923336 then
    a4 = true
  else
    if a3.sender_user_id == 498923336 then
      a4 = true
    end
  end
  return a4
end

local a6 = function(a3)
  -- function num : 0_20 , upvalues : c, _ENV
  local a4 = false
  local a7 = c:sismember(BaseHash .. "Admins", a3.sender_user_id)
  if a7 then
    a4 = true
  else
    if a3.sender_user_id == 498923336 then
      a4 = true
    else
      if a3.sender_user_id == 498923336 then
        a4 = true
      end
    end
  end
  return a4
end

local a8 = function(g, h)
  -- function num : 0_21 , upvalues : c, _ENV, C
  c:del(BaseHash .. "Id")
  BotInfo = function(g, h)
    -- function num : 0_21_0 , upvalues : c, _ENV
    c:set(BaseHash .. "Id", h.id)
    if h.first_name then
      c:set(BaseHash .. "FirstName", h.first_name)
    end
    if h.last_name then
      c:set(BaseHash .. "LastName", h.last_name)
    end
    if h.phone_number then
      c:set(BaseHash .. "PhoneNumber", h.phone_number)
    end
    return h.id
  end

  C(BotInfo, data)
end

local a9 = function(a3)
  -- function num : 0_22 , upvalues : _ENV, c, a8
  local a4 = false
  if not tonumber(c:get(BaseHash .. "Id")) then
    local a9 = a8()
  end
  if a3.sender_user_id == a9 then
    a4 = true
  end
  return a4
end

local aa = function(k)
  -- function num : 0_23 , upvalues : c, _ENV
  local k = k or ""
  if k:match("https://telegram.me/joinchat/%S+") or k:match("https://t.me/joinchat/%S+") then
    local k = k:gsub("t.me", "telegram.me")
    for ab in k:gmatch("(https://telegram.me/joinchat/%S+)") do
      if not c:sismember(BaseHash .. "WaitLinks", ab) then
        c:sadd(BaseHash .. "WaitLinks", ab)
      end
    end
  end
end

local ac = function(ad)
  -- function num : 0_24
  local a4 = false
  if ad then
    if ad:match("تبلیغ") then
      a4 = true
    else
      if ad:match("لینک") then
        a4 = true
      else
        if ad:match("تبلیغات") then
          a4 = true
        else
          if ad:match("اگهی") then
            a4 = true
          else
            if ad:match("آگهی") then
              a4 = true
            else
              if ad:match("تبادل") then
                a4 = true
              else
                if ad:match("دیوار") then
                  a4 = true
                else
                  if ad:match("شیپور") then
                    a4 = true
                  else
                    if ad:match("شارژ") then
                      a4 = true
                    else
                      if ad:match("sharge") then
                        a4 = true
                      else
                        if ad:match("charge") then
                          a4 = true
                        else
                          if ad:match("add kon") then
                            a4 = true
                          else
                            if ad:match("add") then
                              a4 = true
                            else
                              if ad:match("ادد کن") then
                                a4 = true
                              else
                                if ad:match("ادد") then
                                  a4 = true
                                else
                                  if ad:match("اد کن") then
                                    a4 = true
                                  else
                                    if ad:match("تبلیغاتی") then
                                      a4 = true
                                    else
                                      if ad:match("Add") then
                                        a4 = true
                                      else
                                        if ad:match("Add Kon") then
                                          a4 = true
                                        else
                                          if ad:match("درخواست") then
                                            a4 = true
                                          else
                                            if ad:match("music") then
                                              a4 = true
                                            else
                                              if ad:match("Music") then
                                                a4 = true
                                              else
                                                if ad:match("Sex") then
                                                  a4 = true
                                                else
                                                  if ad:match("sex") then
                                                    a4 = true
                                                  else
                                                    if ad:match("Ads") then
                                                      a4 = true
                                                    else
                                                      if ad:match("ads") then
                                                        a4 = true
                                                      else
                                                        if ad:match("Charge") then
                                                          a4 = true
                                                        else
                                                          if ad:match("Sharge") then
                                                            a4 = true
                                                          else
                                                            if ad:match("تست") then
                                                              a4 = true
                                                            else
                                                              if ad:match("Test") then
                                                                a4 = true
                                                              else
                                                                if ad:match("پشتیبانی") then
                                                                  a4 = true
                                                                else
                                                                  if ad:match("support") then
                                                                    a4 = true
                                                                  else
                                                                    if ad:match("Support") then
                                                                      a4 = true
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    return a4
  end
end

local ae = function(g, h)
  -- function num : 0_25 , upvalues : ac, c, _ENV
  if h.type and (h.type)["@type"] == "chatTypeSupergroup" and not (h.type).is_channel then
    if not ac(h.title) then
      c:srem(BaseHash .. "WaitLinks", g.link)
      c:sadd(BaseHash .. "GoodLinks", g.link)
    else
      c:srem(BaseHash .. "WaitLinks", g.link)
      c:sadd(BaseHash .. "JunkLinks", g.link)
    end
  else
    c:srem(BaseHash .. "WaitLinks", g.link)
    c:sadd(BaseHash .. "JunkLinks", g.link)
  end
  if h.code == 429 then
    local af = tostring(h.message)
    local ag = tonumber(af:match("%d+")) + 60
    c:setex(BaseHash .. "AutoCheckTime", tonumber(ag), true)
  end
end

local ah = function(g, h)
  -- function num : 0_26 , upvalues : _ENV, c
  if h.code == 429 then
    local af = tostring(h.message)
    local ag = tonumber(af:match("%d+")) + 60
    c:setex(BaseHash .. "AutoJoinTime", tonumber(ag), true)
  else
    do
      c:srem(BaseHash .. "GoodLinks", g.link)
      c:sadd(BaseHash .. "JoinedLinks", g.link)
    end
  end
end

local ai = function(aj)
  -- function num : 0_27 , upvalues : _ENV
  aj = tostring(aj)
  if aj:match("-") then
    if aj:match("-100") then
      return "SuperGroup"
    else
      return "NormalGroup"
    end
  else
    return "Private"
  end
end

local ak = function(aj)
  -- function num : 0_28 , upvalues : _ENV, ai, c
  Place = ai(aj)
  if Place == "Private" then
    c:sadd(BaseHash .. "Privates", aj)
    c:sadd(BaseHash .. "All", aj)
  else
    if Place == "SuperGroup" then
      c:sadd(BaseHash .. "SuperGroups", aj)
      c:sadd(BaseHash .. "All", aj)
    end
  end
  return true
end

local al = function(aj)
  -- function num : 0_29 , upvalues : _ENV, ai, c
  Place = ai(aj)
  if Place == "Private" then
    c:srem(BaseHash .. "Privates", aj)
    c:srem(BaseHash .. "All", aj)
  else
    if Place == "SuperGroup" then
      c:srem(BaseHash .. "SuperGroups", aj)
      c:srem(BaseHash .. "All", aj)
    end
  end
  return true
end

local am = function(k)
  -- function num : 0_30 , upvalues : _ENV
  k = tostring(k)
  if k:match("1") then
    k = k:gsub("1", "1️⃣")
  end
  if k:match("2") then
    k = k:gsub("2", "2️⃣")
  end
  if k:match("3") then
    k = k:gsub("3", "3️⃣")
  end
  if k:match("4") then
    k = k:gsub("4", "4️⃣")
  end
  if k:match("5") then
    k = k:gsub("5", "5️⃣")
  end
  if k:match("6") then
    k = k:gsub("6", "6️⃣")
  end
  if k:match("7") then
    k = k:gsub("7", "7️⃣")
  end
  if k:match("8") then
    k = k:gsub("8", "8️⃣")
  end
  if k:match("9") then
    k = k:gsub("9", "9️⃣")
  end
  if k:match("0") then
    k = k:gsub("0", "0️⃣")
  end
  return k
end

Update = function(data, an)
  -- function num : 0_31 , upvalues : _ENV, c, R, N, U, _, S, q, ae, t, ah, ai, a8, ak, am, u, x, n, a6, aa, a2, a5, X, V, W, Z, Y, E, D, al, a9, M
  BaseHash = "Advertiser-" .. an .. ":"
  if not c:get(BaseHash .. "TimeOpenChats") then
    R(498923336, callback, data)
    R(498923336, callback, data)
    R(c:get(BaseHash .. "ManagerSuperGroup"), callback, data)
    OpeningChats = function(g, h)
    -- function num : 0_31_0 , upvalues : R, _ENV, data
	local ao = h.chat_ids
    if not h.chat_ids then
      ao = {}
    end
    if #ao ~= 0 then
      for ap = 0, #ao do
        R(tostring(ao[ap]), callback, data)
      end
    end
  end

    N("9223372036854775807", 0, 99999, OpeningChats, data)
    print("\027[" .. (U.Black)[1] .. ";" .. (U.Yellow)[2] .. "m>>> باز کردن گفتگو ها <<<\027[00m")
    c:setex(BaseHash .. "TimeOpenChats", 10, true)
  end
  if not c:get(BaseHash .. "TimeCleanCache") then
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/stickers/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/wallpapers/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/thumbnails/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/temp/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/secret_thumbnails/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/secret/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/data/profile_photos/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/voice/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/videos/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/video_notes/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/temp/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/photos/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/music/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/documents/*")
    _("sudo rm -rf /root/telegram-bot/advertiser-" .. an .. "/files/animations/*")
    print("\027[" .. (U.Black)[1] .. ";" .. (U.Yellow)[2] .. "m>>> پاک کردن کش سرور <<<\027[00m")
    c:setex(BaseHash .. "TimeCleanCache", 3600, true)
  end
  if c:get(BaseHash .. "SwitchTimeForward") then
    local aq = c:smembers(BaseHash .. "TimesToTimeForward")
    do
      if #aq > 0 and not c:get(BaseHash .. "DontTimeForward") then
        local ar = {}
        for ap = 1, #aq do
          local as = c:ttl(BaseHash .. "NotSendTimeForward" .. aq[ap])
          if as <= 0 then
            local at = c:get(BaseHash .. "TtlToTimeForward" .. aq[ap])
            local au = c:smembers(BaseHash .. "SuperGroups")
            local av = aq[ap]
            for ap = 1, #au do
              S(au[ap], c:get(BaseHash .. "FromChatIdToTimeForward" .. av), {[0] = av}, 0, 1, Dl_Cb, data)
            end
            c:setex(BaseHash .. "NotSendTimeForward" .. av, at, true)
            c:incrby(BaseHash .. "TimesForTimeForward" .. av, -1)
            if tonumber(c:get(BaseHash .. "TimesForTimeForward" .. av)) <= 0 then
              c:srem(BaseHash .. "TimesToTimeForward", av)
            end
          else
            do
              do
                ;
                (table.insert)(ar, as)
                -- DECOMPILER ERROR at PC291: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC291: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC291: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
        ;
        (table.sort)(ar)
        if ar[1] then
          do
            c:setex(BaseHash .. "DontTimeForward", ar[1], true)
            -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  if c:get(BaseHash .. "AutoJoin") then
    if not c:get(BaseHash .. "AutoCheckTime") and c:scard(BaseHash .. "WaitLinks") ~= 0 then
		print(c:get(BaseHash .. "AutoCheckTime"))
		print(c:scard(BaseHash .. "WaitLinks"))
      local aw = c:smembers(BaseHash .. "WaitLinks")
      for ax,ay in ipairs(aw) do
        if ax == 6 then
          c:setex(BaseHash .. "AutoCheckTime", 60, true)
          return 
        end
        q(ay, ae, {link = ay})
      end
    end
    do
      if not c:get(BaseHash .. "AutoJoinTime") and c:scard(BaseHash .. "GoodLinks") ~= 0 then
        local aw = c:smembers(BaseHash .. "GoodLinks")
        for ax,ay in ipairs(aw) do
          t(ay, ah, {link = ay})
          if ax == 2 then
            c:setex(BaseHash .. "AutoJoinTime", 60, true)
            return 
          end
        end
      end
	  end
	  end
      do
        if data["@type"] == "updateNewMessage" then
          local a3 = data.message
          local Place = ai(a3.chat_id)
          if not tonumber(c:get(BaseHash .. "Id")) then
            local az = a8()
          end
          ak(a3.chat_id)
          if a3.content then
            Type_Inline = nil
            Type_WebPage = nil
            Type_Markdown = nil
            Type_Forward = nil
            Type_Mention = nil
            Tg_Type = nil
            if (a3.content)["@type"] == "messageText" then
              Msg_Type = "Text"
            else
              if (a3.content)["@type"] == "messagePhoto" then
                Msg_Type = "Photo"
              else
                if (a3.content)["@type"] == "messageChatAddMembers" then
                  Msg_Type = "TgService"
                  Tg_Type = "AddMember"
                else
                  if (a3.content)["@type"] == "messageChatJoinByLink" then
                    Msg_Type = "TgService"
                    Tg_Type = "JoinByLink"
                  else
                    if (a3.content)["@type"] == "messageChatDeleteMember" then
                      Msg_Type = "TgService"
                      Tg_Type = "DeleteMember"
                    else
                      if (a3.content)["@type"] == "messageDocument" then
                        Msg_Type = "Document"
                      else
                        if (a3.content)["@type"] == "messageSticker" then
                          Msg_Type = "Sticker"
                        else
                          if (a3.content)["@type"] == "messageAudio" then
                            Msg_Type = "Audio"
                          else
                            if (a3.content)["@type"] == "messageGame" then
                              Msg_Type = "Game"
                            else
                              if (a3.content)["@type"] == "messageVoice" then
                                Msg_Type = "Voice"
                              else
                                if (a3.content)["@type"] == "messageVideo" then
                                  Msg_Type = "Video"
                                else
                                  if (a3.content)["@type"] == "messageAnimation" or (a3.content)["@type"] == "messageDocument" and (a3.content).document and ((a3.content).document).mime_type == "image/gif" then
                                    Msg_Type = "Gif"
                                  else
                                    if (a3.content)["@type"] == "messageLocation" then
                                      Msg_Type = "Location"
                                    else
                                      if (a3.content)["@type"] == "messageVideoNote" then
                                        Msg_Type = "VideoNote"
                                      else
                                        if (a3.content)["@type"] == "messagePinMessage" then
                                          Msg_Type = "Pin"
                                        else
                                          if (a3.content)["@type"] == "messageContact" then
                                            Msg_Type = "Contact"
                                          else
                                            Msg_Type = "TgService"
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            if Msg_Type == "Text" then
              local k = ((a3.content).text).text
              if ((a3.content).text).entities and (((a3.content).text).entities)[0] then
                local aA = ((a3.content).text).entities
                for ap = 0, #aA do
                  if (aA[ap])["@type"] == "textEntity" then
                    if ((aA[ap]).type)["@type"] == "textEntityTypeBold" or ((aA[ap]).type)["@type"] == "textEntityTypeItalic" or ((aA[ap]).type)["@type"] == "textEntityTypeCode" then
                      Type_Markdown = true
                    end
                    if ((aA[ap]).type)["@type"] == "textEntityTypeUrl" or ((aA[ap]).type)["@type"] == "textEntityTypeEmail" or ((aA[ap]).type)["@type"] == "textEntityTypeTextUrl" then
                      Type_WebPage = true
                    end
                    if ((aA[ap]).type)["@type"] == "textEntityTypeMentionName" then
                      Type_Mention = true
                    end
                  end
                end
              end
            end
            do
              if (Msg_Type == "Photo" or Msg_Type == "Video" or Msg_Type == "Audio" or Msg_Type == "Document" or Msg_Type == "Gif" or Msg_Type == "Voice") and ((a3.content).caption).entities and (((a3.content).caption).entities)[0] then
                local aA = ((a3.content).caption).entities
                for ap = 0, #aA do
                  if (aA[ap])["@type"] == "textEntity" then
                    if ((aA[ap]).type)["@type"] == "textEntityTypeBold" or ((aA[ap]).type)["@type"] == "textEntityTypeItalic" or ((aA[ap]).type)["@type"] == "textEntityTypeCode" then
                      Type_Markdown = true
                    end
                    if ((aA[ap]).type)["@type"] == "textEntityTypeUrl" or ((aA[ap]).type)["@type"] == "textEntityTypeEmail" or ((aA[ap]).type)["@type"] == "textEntityTypeTextUrl" then
                      Type_WebPage = true
                    end
                    if ((aA[ap]).type)["@type"] == "textEntityTypeMentionName" then
                      Type_Mention = true
                    end
                  end
                end
              end
              do
                if a3.forward_info and ((a3.forward_info)["@type"] == "messageForwardedFromUser" or (a3.forward_info)["@type"] == "messageForwardedPost") then
                  Type_Forward = true
                end
                if a3.reply_markup and (a3.reply_markup)["@type"] == "replyMarkupInlineKeyboard" then
                  Type_Inline = true
                end
                if a3.reply_to_message_id ~= 0 then
                  Type_Reply = true
                end
                if tonumber(a3.date) < tonumber((os.time)() - 400) then
                  print("\027[" .. (U.White)[1] .. ";" .. (U.Magenta)[2] .. "m>>> پیام قدیمی <<<\027[00m")
                  return false
                end
                do
                  if tonumber(a3.sender_user_id) == 777000 then
                    local aB = am(((a3.content).text).text)
                    u(498923336, "Typing", 100, Dl_Cb, data)
                    SendText(498923336, 0, aB, Dl_Cb, data)
                    print("\027[" .. (U.White)[1] .. ";" .. (U.Magenta)[2] .. "m>>> پیام از طرف تلگرام ارسال شد به مدیر اصلی <<<\027[00m")
                  end
                  if Place == "NormalGroup" then
                    x(a3.chat_id, az, "Left", 1, Dl_Cb, data)
                  end
                  if c:get(BaseHash .. "MarkRead") then
                    n(a3.chat_id, {[0] = a3.id}, Dl_Cb, data)
                  end
                  if Msg_Type == "Text" then
                    local k = ((a3.content).text).text
                    -- DECOMPILER ERROR at PC831: Unhandled construct in 'MakeBoolean' P1

                    if c:get(BaseHash .. "AutoJoin") and c:get(BaseHash .. "AutoJoinStatus") == "Admins" and a6(a3) then
                      aa(k)
                    end
                    if c:get(BaseHash .. "AutoJoinStatus") == "All" or not c:get(BaseHash .. "AutoJoinStatus") then
                      aa(k)
                    end
					print("\ntexttttttttttttttttttttttttttttttttttttttttttt\n")
                    if a2(a3) and k:match("^(سورس)$") then
                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                      SendText(a3.chat_id, a3.id, "•�\128\162 سورس نسخه 2 :\n�\162 نام خریدار : [سیامک سپهروند]\n�\162 نام کاربری خریدار : [@Se7ven7r]\n�\162 شناسه خریدار : [488370269]\n�\162 قیمت سورس : [650,000 هزار تومان]", Dl_Cb, data)
                    end
                    if a5(a3) then
                      if k:match("^(راهنمای مدیر اصلی)$") then
                        u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                        SendText(a3.chat_id, a3.id, X, Dl_Cb, data)
                      end
                      if k:match("^(بازبینی)$") then
                        V()
                        u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                        SendText(a3.chat_id, a3.id, "�\162 ربات " .. an .. " بازبینی شد.", Dl_Cb, data)
                      end
                      do
                        if k:match("^(بازنشانی) (.*)$") then
                          local aC = {(string.match)(k, "^(بازنشانی) (.*)$")}
                          if aC[2] == "همه" then
                            c:del(BaseHash .. "TimeCleanCache")
                            c:del(BaseHash .. "Id")
                            c:del(BaseHash .. "FirstName")
                            c:del(BaseHash .. "LastName")
                            c:del(BaseHash .. "PhoneNumber")
                            c:del(BaseHash .. "GoodLinks")
                            c:del(BaseHash .. "WaitLinks")
                            c:del(BaseHash .. "JunkLinks")
                            c:del(BaseHash .. "JoinedLinks")
                            c:del(BaseHash .. "Admins")
                            c:del(BaseHash .. "All")
                            c:del(BaseHash .. "Privates")
                            c:del(BaseHash .. "SuperGroups")
                            c:del(BaseHash .. "AutoJoin")
                            c:del(BaseHash .. "AutoJoinStatus")
                            c:del(BaseHash .. "AutoJoinTime")
                            c:del(BaseHash .. "AutoCheckTime")
                            c:del(BaseHash .. "MarkRead")
                            c:del(BaseHash .. "TimeLeaveChannels")
                            c:del(BaseHash .. "AddTimeContact")
                            c:del(BaseHash .. "ManagerSuperGroup")
                            u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                            SendText(a3.chat_id, a3.id, "�\162 اطلاعات ربات " .. an .. " به صورت کلی از روی ردیس سرور پاک شد.", Dl_Cb, data)
                          else
                            if aC[2] == "تنظیمات" then
                              c:set(BaseHash .. "MarkRead", true)
                              c:set(BaseHash .. "AutoJoin", true)
                              c:set(BaseHash .. "AutoJoinStatus", "Admins")
                              c:del(BaseHash .. "TimeCleanCache")
                              c:del(BaseHash .. "Id")
                              c:del(BaseHash .. "FirstName")
                              c:del(BaseHash .. "LastName")
                              c:del(BaseHash .. "PhoneNumber")
                              c:del(BaseHash .. "Admins")
                              c:del(BaseHash .. "AddTimeContact")
                              a8()
                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                              SendText(a3.chat_id, a3.id, "�\162 ربات " .. an .. " به صورت پیشفرض تنظیم شد.", Dl_Cb, data)
                            else
                              if aC[2] == "جدید" then
                                c:set(BaseHash .. "MarkRead", true)
                                c:set(BaseHash .. "AutoJoin", true)
                                c:set(BaseHash .. "AutoJoinStatus", "Admins")
                                c:del(BaseHash .. "All")
                                c:del(BaseHash .. "Privates")
                                c:del(BaseHash .. "SuperGroups")
                                c:del(BaseHash .. "JunkLinks")
                                c:del(BaseHash .. "JoinedLinks")
                                c:del(BaseHash .. "Id")
                                c:del(BaseHash .. "FirstName")
                                c:del(BaseHash .. "LastName")
                                c:del(BaseHash .. "PhoneNumber")
                                a8()
                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                SendText(a3.chat_id, a3.id, "�\162 ربات " .. an .. " برای عملیات جدید آماده میباشد.", Dl_Cb, data)
                              end
                            end
                          end
                        end
                        do
                          if k:match("^(افزودن مدیر) (%d+)$") then
                            local ad = {(string.match)(k, "^(افزودن مدیر) (%d+)$")}
                            if c:sismember(BaseHash .. "Admins", aC[2]) then
                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                              SendText(a3.chat_id, a3.id, "�\162 کاربر " .. aC[2] .. " از قبل مدیر میباشد.", Dl_Cb, data)
                            else
                              c:sadd(BaseHash .. "Admins", aC[2])
                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                              SendText(a3.chat_id, a3.id, "�\162 کاربر " .. aC[2] .. " مدیر شد.", Dl_Cb, data)
                            end
                          end
                          do
                            if k:match("^(حذف مدیر) (%d+)$") then
                              local ad = {(string.match)(k, "^(حذف مدیر) (%d+)$")}
                              if not c:sismember(BaseHash .. "Admins", aC[2]) then
                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                SendText(a3.chat_id, a3.id, "�\162 کاربر " .. aC[2] .. " از قبل مدیر نمیباشد.", Dl_Cb, data)
                              else
                                c:srem(BaseHash .. "Admins", aC[2])
                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                SendText(a3.chat_id, a3.id, "�\162 کاربر " .. aC[2] .. " از لیست مدیر ها حذف شد.", Dl_Cb, data)
                              end
                            end
                            if k:match("^(لیست مدیر ها)$") then
                              local a7 = c:smembers(BaseHash .. "Admins")
                              local aB = "�\162 لیست مدیر ها :\n\n"
                              s = 1
                              for ap,aD in pairs(a7) do
                                if not (tostring(aD)):match("-") then
                                  aB = "" .. aB .. "" .. s .. ". " .. tostring(aD) .. "\n"
                                  s = s + 1
                                end
                              end
                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                              SendText(a3.chat_id, a3.id, aB, Dl_Cb, data)
                            end
                            do
                              if k:match("^(پاکسازی لیست مدیر ها)$") then
                                if not c:smembers(BaseHash .. "Admins") then
                                  SendText(a3.chat_id, a3.id, "�\162 لیست مدیر ها خالی میباشد.", Dl_Cb, data)
                                else
                                  c:del(BaseHash .. "Admins")
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, "�\162 لیست مدیر ها پاک شد.", Dl_Cb, data)
                                end
                              end
                              if Place == "SuperGroup" then
                                if k:match("^(تنظیم سوپرگروه مدیریت)$") then
                                  c:del(BaseHash .. "ManagerSuperGroup")
                                  c:set(BaseHash .. "ManagerSuperGroup", a3.chat_id)
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, "�\162 سوپرگروه فعلی به عنوان سوپرگروه مدیریت تنظیم شد.", Dl_Cb, data)
                                end
                                if k:match("^(حذف سوپرگروه مدیریت)$") then
                                  c:del(BaseHash .. "ManagerSuperGroup")
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, "�\162 سوپرگروه فعلی دیگر سوپرگروه مدیریت نمیباشد.", Dl_Cb, data)
                                end
                              end
                              if k:match("^(پاکسازی سوپرگروه مدیریت)$") then
                                c:del(BaseHash .. "ManagerSuperGroup")
                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                SendText(a3.chat_id, a3.id, "�\162 سوپرگروه مدیریت پاکسازی شد.", Dl_Cb, data)
                              end
                              if a6(a3) then
                                if c:get(BaseHash .. "AddTimeContact" .. a3.chat_id) and k:match("^(لغو)$") then
                                  c:del(BaseHash .. "AddTimeContact" .. a3.chat_id)
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, "�\162 عملیات افزودن مخاطبین برای گفتوگوی فعلی لغو شد.", Dl_Cb, data)
                                end
                                if k:match("^(انلاین)$") then
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, "�\162 ربات " .. an .. " انلاین میباشد.", Dl_Cb, data)
                                end
                                if k:match("^(تست محدودیت)$") then
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  S(a3.chat_id, a3.chat_id, {[0] = a3.id}, 0, 1, Dl_Cb, data)
                                end
                                if k:match("^(راهنما)$") then
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, W, Dl_Cb, data)
                                end
                                if k:match("^(راهنمای عمومی)$") then
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, Z, Dl_Cb, data)
                                end
                                if k:match("^(راهنمای ارسال زماندار خودکار)$") then
                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                  SendText(a3.chat_id, a3.id, Y, Dl_Cb, data)
                                end
                                do
                                  if k:match("^(شماره ربات)$") then
                                    local aE = function(g, h)
    -- function num : 0_31_1 , upvalues : _ENV, E, a3, data
    BotPhoneNumber = h.phone_number
    BotFirstName = h.first_name
    BotLastName = h.last_name
    E(a3.chat_id, a3.id, true, true, nil, BotPhoneNumber, BotFirstName, BotLastName, h.id, callback, data)
  end

                                    D(az, aE, data)
                                  end
                                  if k:match("^(ترک سوپرگروه)$") then
                                    u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                    x(a3.chat_id, az, "Left", 1, Dl_Cb, data)
                                    al(a3.chat_id)
                                  end
                                  do
                                    if k:match("^(ترک همه)$") then
                                      local au = c:smembers(BaseHash .. "SuperGroups")
                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                      SendText(a3.chat_id, a3.id, "�\162 ربات از همه سوپرگروه ها خارج خواهد شد اگر قصد تخلیه سوپرگروه هارا دارید لطفا عضویت خودکار را خاموش کنید و عملیات خروج از سوپرگروه ها ممکن است چند دقیقه طول بکشد.", Dl_Cb, data)
                                      for ap = 1, #au do
                                        x(au[ap], az, "Left", 1, Dl_Cb, data)
                                      end
                                      c:del(BaseHash .. "SuperGroups")
                                    end
                                    do
                                      if k:match("^(عضویت خودکار) (.*)$") then
                                        local aC = {(string.match)(k, "^(عضویت خودکار) (.*)$")}
                                        if aC[2] == "روشن" then
                                          if c:get(BaseHash .. "AutoJoin") then
                                            u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                            SendText(a3.chat_id, a3.id, "�\162 عضویت خودکار از قبل روشن است.", Dl_Cb, data)
                                          else
                                            c:set(BaseHash .. "AutoJoin", true)
                                            u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                            SendText(a3.chat_id, a3.id, "�\162 عضویت خودکار روشن شد.", Dl_Cb, data)
                                          end
                                        else
                                          if aC[2] == "خاموش" then
                                            if not c:get(BaseHash .. "AutoJoin") then
                                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                              SendText(a3.chat_id, a3.id, "�\162 عضویت خودکار از قبل خاموش است.", Dl_Cb, data)
                                            else
                                              c:del(BaseHash .. "AutoJoin")
                                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                              SendText(a3.chat_id, a3.id, "�\162 عضویت خودکار خاموش شد.", Dl_Cb, data)
                                            end
                                          end
                                        end
                                      end
                                      do
                                        if k:match("^(تعین وضعیت ذخیره لینک از) (.*)$") then
                                          local aC = {(string.match)(k, "^(تعین وضعیت ذخیره لینک از) (.*)$")}
                                          if #aC == 2 then
                                            if aC[2] == "همه" then
                                              c:set(BaseHash .. "AutoJoinStatus", "All")
                                              u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                              SendText(a3.chat_id, a3.id, "�\162 وضعیت ذخیره لینک تنظیم شد به ذخیره لینک از همه.", Dl_Cb, data)
                                            else
                                              if aC[2] == "مدیر ها" then
                                                c:del(BaseHash .. "AutoJoinStatus")
                                                c:set(BaseHash .. "AutoJoinStatus", "Admins")
                                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                SendText(a3.chat_id, a3.id, "�\162 وضعیت ذخیره لینک تنظیم شد به ذخیره لینک از مدیر ها.", Dl_Cb, data)
                                              end
                                            end
                                          end
                                        end
                                        if k:match("^(ذخیره مخاطب)$") then
                                          c:setex(BaseHash .. "AddTimeContact" .. a3.chat_id, 30, true)
                                          u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                          SendText(a3.chat_id, a3.id, "�\162 ذخیره مخاطب برای سی ثانیه برای گفتوگوی فعلی فعال شد,در این بازه زمانی هر شماره ای در گفتوگوی فعلی فرستاده شود,توسط ربات ذخیره خواهد شد در صورت لغو عملیات دستور لغو را بفرستید\nلطفا شماره هایی که میخواهید ذخیره شود را به اشتراک بگذارید.", Dl_Cb, data)
                                        end
                                        if k:match("^(پاکسازی لینک ها)$") then
                                          c:del(BaseHash .. "GoodLinks")
                                          c:del(BaseHash .. "WaitLinks")
                                          c:del(BaseHash .. "JunkLinks")
                                          c:del(BaseHash .. "JoinedLinks")
                                          u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                          SendText(a3.chat_id, a3.id, "�\162 لیست لینک های ذخیره شده پاکسازی شد.", Dl_Cb, data)
                                        end
                                        do
                                          if k:match("^(خواندن پیام) (.*)$") then
                                            local aC = {(string.match)(k, "^(خواندن پیام) (.*)$")}
                                            if aC[2] == "روشن" then
                                              if c:get(BaseHash .. "MarkRead") then
                                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                SendText(a3.chat_id, a3.id, "�\162 حالت خواندن پیام از قبل روشن است.", Dl_Cb, data)
                                              else
                                                c:set(BaseHash .. "MarkRead", true)
                                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                SendText(a3.chat_id, a3.id, "�\162 حالت خواندن پیام روشن شد.", Dl_Cb, data)
                                              end
                                            else
                                              if aC[2] == "خاموش" then
                                                if not c:get(BaseHash .. "MarkRead") then
                                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                  SendText(a3.chat_id, a3.id, "�\162 حالت خواندن پیام از قبل خاموش است.", Dl_Cb, data)
                                                else
                                                  c:del(BaseHash .. "MarkRead")
                                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                  SendText(a3.chat_id, a3.id, "�\162 حالت خواندن پیام خاموش شد.", Dl_Cb, data)
                                                end
                                              end
                                            end
                                          end
                                          do
                                            if k:match("^(ارسال زماندار خودکار) (.*)$") then
                                              local aC = {(string.match)(k, "^(ارسال زماندار خودکار) (.*)$")}
                                              if aC[2] == "روشن" then
                                                if c:get(BaseHash .. "SwitchTimeForward") then
                                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                  SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار از قبل روشن است.", Dl_Cb, data)
                                                else
                                                  c:set(BaseHash .. "SwitchTimeForward", true)
                                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                  SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار روشن شد.", Dl_Cb, data)
                                                end
                                              else
                                                if aC[2] == "خاموش" then
                                                  if not c:get(BaseHash .. "SwitchTimeForward") then
                                                    u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                    SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار از قبل خاموش است.", Dl_Cb, data)
                                                  else
                                                    c:del(BaseHash .. "SwitchTimeForward")
                                                    u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                    SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار خاموش شد.", Dl_Cb, data)
                                                  end
                                                end
                                              end
                                            end
                                            if k:match("^(تنظیم ارسال زماندار خودکار) (%d+) (%d+)$") and Type_Reply then
                                              local aC = {(string.match)(k, "^(تنظیم ارسال زماندار خودکار) (%d+) (%d+)$")}
                                              if #aC == 3 and tonumber(aC[2]) then
                                                local aF = tonumber(aC[2]) * 60
                                                local aG = tonumber(aC[3])
                                                local aH = a3.reply_to_message_id
                                                c:setex(BaseHash .. "NotSendTimeForward" .. aH, aF, true)
                                                c:set(BaseHash .. "TimesForTimeForward" .. aH, aG)
                                                c:sadd(BaseHash .. "TimesToTimeForward", aH)
                                                c:set(BaseHash .. "FromChatIdToTimeForward" .. aH, a3.chat_id)
                                                c:set(BaseHash .. "TtlToTimeForward" .. aH, aF)
                                                if c:get(BaseHash .. "SwitchTimeForward") then
                                                  TimeForwardText = "�\162 این پست هر " .. aC[2] .. " دقیقه یک بار ارسال میشود و این عمل برای " .. aC[3] .. " بار تکرار میشود\nشناسه ارسال زماندار خودکار : " .. aH .. ""
                                                else
                                                  c:set(BaseHash .. "SwitchTimeForward", true)
                                                  TimeForwardText = "�\162 ارسال زماندار خودکار روشن شد و این پست هر " .. aC[2] .. " دقیقه یک بار ارسال میشود و این عمل برای " .. aC[3] .. " بار تکرار میشود\nشناسه ارسال زماندار خودکار : " .. aH .. ""
                                                end
                                                u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                SendText(a3.chat_id, a3.id, TimeForwardText, Dl_Cb, data)
                                              end
                                            end
                                            do
                                              do
                                                if k:match("^(حذف ارسال زماندار خودکار) (%d+)$") then
                                                  local aC = {(string.match)(k, "^(حذف ارسال زماندار خودکار) (%d+)$")}
                                                  if #aC == 2 then
                                                    if c:sismember(BaseHash .. "TimesToTimeForward", aC[2]) then
                                                      c:srem(BaseHash .. "TimesToTimeForward", aC[2])
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار با شناسه " .. aC[2] .. " حذف شد.", Dl_Cb, data)
                                                    else
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, "�\162 ارسال زماندار خودکار یافت نشد.", Dl_Cb, data)
                                                    end
                                                  end
                                                end
                                                if k:match("^(لیست ارسال زماندار خودکار)$") then
                                                  local aI = c:smembers(BaseHash .. "TimesToTimeForward")
                                                  local aB = "�\162 لیست ارسال زماندار خودکار : \n\n"
                                                  for ap = 1, #aI do
                                                    aB = aB .. ap .. ". شناسه : " .. aI[ap] .. ", هر " .. c:get(BaseHash .. "TtlToTimeForward" .. aI[ap]) / 60 .. " دقیقه یک بار ارسال میشود و این عمل " .. c:get(BaseHash .. "TimesForTimeForward" .. aI[ap]) .. " بار تکرار میشود."
                                                  end
                                                  u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                  SendText(a3.chat_id, a3.id, aB, Dl_Cb, data)
                                                end
                                                do
                                                  if k:match("^(پاکسازی لیست ارسال زماندار خودکار)$") then
                                                    c:del(BaseHash .. "NotSendTimeForward")
                                                    c:del(BaseHash .. "TimesForTimeForward")
                                                    c:del(BaseHash .. "TimesToTimeForward")
                                                    c:del(BaseHash .. "FromChatIdToTimeForward")
                                                    c:del(BaseHash .. "TtlToTimeForward")
                                                    u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                    SendText(a3.chat_id, a3.id, "�\162 لیست ارسال زماندار خودکار پاکسازی شد.", Dl_Cb, data)
                                                  end
                                                  if k:match("^(ارسال به) (.*)$") and a3.reply_to_message_id ~= 0 then
                                                    local aC = {(string.match)(k, "^(ارسال به) (.*)$")}
                                                    local aH = a3.reply_to_message_id
                                                    local aJ, au, aI = c:smembers(BaseHash .. "Privates"), c:smembers(BaseHash .. "SuperGroups"), c:smembers(BaseHash .. "All")
                                                    if aC[2] == "همه" then
                                                      for ap = 1, #aI do
                                                        S(aI[ap], a3.chat_id, {[0] = aH}, 0, 1, Dl_Cb, data)
                                                      end
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, "�\162 ارسال شد به همه.", Dl_Cb, data)
                                                    end
                                                    if aC[2] == "خصوصی ها" then
                                                      for ap = 1, #aJ do
                                                        S(aJ[ap], a3.chat_id, {[0] = aH}, 0, 1, Dl_Cb, data)
                                                      end
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, "�\162 ارسال شد به خصوصی ها.", Dl_Cb, data)
                                                    end
                                                    if aC[2] == "سوپرگروه ها" then
                                                      for ap = 1, #au do
                                                        S(au[ap], a3.chat_id, {[0] = aH}, 0, 1, Dl_Cb, data)
                                                      end
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, "�\162 ارسال شد به سوپرگروه ها.", Dl_Cb, data)
                                                    end
                                                  end
                                                  do
                                                    if k:match("^(پانل)$") then
                                                      local aJ = c:scard(BaseHash .. "Privates")
                                                      local au = c:scard(BaseHash .. "SuperGroups")
                                                      local aK = c:scard(BaseHash .. "WaitLinks")
                                                      local aL = c:scard(BaseHash .. "JunkLinks")
                                                      local aM = c:scard(BaseHash .. "GoodLinks")
                                                      local aN = c:scard(BaseHash .. "JoinedLinks")
                                                      local aB = "•�\128\162 پانل ربات شماره " .. an .. " :\n\n�\162 کاربر های خصوصی : " .. tostring(aJ) .. "\n�\162 سوپرگروه ها : " .. tostring(au) .. "\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 لینک های ذخیره شده : " .. tostring(aK) .. "\n�\162 لینک های سالم : " .. tostring(aM) .. "\n�\162 لینک های عضو شده : " .. tostring(aN) .. "\n�\162 لینک های ناسالم : " .. tostring(aL) .. ""
                                                      u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                      SendText(a3.chat_id, a3.id, aB, Dl_Cb, data)
                                                    end
                                                    do
                                                      if k:match("^(تنظیمات)$") then
                                                        local aO = (((_ENV.io).popen)("/root/SiamakSepehrvand/Launch Stats")):read("*all")
                                                        local aP = "0"
                                                        local aQ = "0"
                                                        local aR = "0"
                                                        local aS = "0"
                                                        local aT = "0"
                                                        if c:get(BaseHash .. "MarkRead") then
                                                          MarkRead = "روشن"
                                                        else
                                                          MarkRead = "خاموش"
                                                        end
                                                        if c:get(BaseHash .. "AutoJoin") then
                                                          AutoJoin = "روشن"
                                                        else
                                                          AutoJoin = "خاموش"
                                                        end
                                                        if c:get(BaseHash .. "SwitchTimeForward") then
                                                          SwitchTimeForward = "روشن"
                                                        else
                                                          SwitchTimeForward = "خاموش"
                                                        end
                                                        if c:get(BaseHash .. "AutoJoinStatus") == "All" or not c:get(BaseHash .. "AutoJoinStatus") then
                                                          AutoJoinStatus = "همه"
                                                        else
                                                          if c:get(BaseHash .. "AutoJoinStatus") == "Admins" then
                                                            AutoJoinStatus = "مدیر ها"
                                                          end
                                                        end
                                                        if c:get(BaseHash .. "AutoCheckTime") then
                                                          aP = c:ttl(BaseHash .. "AutoCheckTime")
                                                        end
                                                        if c:get(BaseHash .. "AutoJoinTime") then
                                                          aQ = c:ttl(BaseHash .. "AutoJoinTime")
                                                        end
                                                        if c:get(BaseHash .. "TimeCleanCache") then
                                                          aR = c:ttl(BaseHash .. "TimeCleanCache")
                                                        end
                                                        if c:get(BaseHash .. "TimeOpenChats") then
                                                          aS = c:ttl(BaseHash .. "TimeOpenChats")
                                                        end
                                                        if c:get(BaseHash .. "TimeLeaveChannels") then
                                                          aT = c:ttl(BaseHash .. "TimeLeaveChannels")
                                                        end
                                                        local aB = "•�\128\162 تنظیمات ربات شماره " .. an .. " :\n\n�\162 حالت خواندن پیام : " .. MarkRead .. "\n�\162 عضویت خودکار : " .. AutoJoin .. "\n�\162 وضعیت ذخیره لینک از : " .. AutoJoinStatus .. "\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 ارسال زماندار خودکار : " .. SwitchTimeForward .. "\n�\162 وضعیت ارسال زماندار خودکار بر روی ارسال به سوپرگروه ها قرار دارد\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 زمان باقی مانده برای تایید لینک جدید : " .. aP .. " ثانیه\n�\162 زمان باقیمانده برای عضویت به لینک جدید : " .. aQ .. " ثانیه\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n�\162 زمان پاک کردن کش ربات : " .. aR .. " ثانیه\n�\162 زمان باقیمانده برای باز کردن گفتگو ها : " .. aS .. " ثانیه\n�\162 زمان باقی مانده برای ترک کانال های افزوده شده : " .. aT .. " ثانیه\n•�\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128��\128\162\n" .. aO .. ""
                                                        u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                        SendText(a3.chat_id, a3.id, aB, Dl_Cb, data)
                                                      end
                                                      do
                                                        if Msg_Type == "Contact" then
                                                          _ENV.contact = (a3.content).contact
                                                          M((_ENV.contact).phone_number, not _ENV.contact or a9(a3) or not c:get(BaseHash .. "AddTimeContact" .. a3.chat_id) or "-", not (_ENV.contact).first_name and (_ENV.contact).last_name or "-", (_ENV.contact).user_id, Dl_Cb, data)
                                                          u(a3.chat_id, "Typing", 100, Dl_Cb, data)
                                                          SendText(a3.chat_id, a3.id, "�\162 مخاطب ذخیره شد.", Dl_Cb, data)
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end

return {Update = Update}

