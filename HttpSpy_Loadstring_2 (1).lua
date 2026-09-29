local function f1()
  local function f2()
  end
  local function f3(...)
  end
  local function f4(param1)
    if p1 == "PONG" then
      if upvalue_2 then
        upvalue_3("[" ..
        os.clock() ..
        "] [PONG] Server
      end
      upvalue_4.LastPong = tick()
      return
    end
    local v1 = string.match(
    param1,
    "|__(%d+)__|"
    )
    if upvalue_2 then
      upvalue_3("[" ..
      os.clock() ..
      "] [RESPONSE] Server
    end
    if not v1 then
      return (upvalue_4.OnMessageSignal:Fire(param1))
    end
    local v2 = upvalue_4.Requests[v1 + 0]
    v2:Fire(param1:gsub(
    "|__(%d+)__|",
    ""
    ))
    return (v2:Destroy())
  end
  local function f5()
    local v3, v4
    v4, v3 = upvalue_2(upvalue_3, upvalue_4.Url)
    upvalue_0 = v4
    upvalue_1 = v3
    upvalue_7 = true
  end
  local function f6()
    upvalue_0.ConnectionClosed:Connect(upvalue_3)
    upvalue_0.DataReceived:Connect(upvalue_4)
  end
  local function f7()
    upvalue_0.OnClose:Connect(upvalue_3)
    upvalue_0.OnMessage:Connect(upvalue_4)
  end
  local function f8(...)
    local v5, v6
    if upvalue_0 then
      local f9 = upvalue_1
      local v7 = "["
      local v8 = os.clock()
      v6 = "] [CLOSED] "
      v5 = upvalue_2["] [CLOSED] "]
      f9(v7 .. v8 .. v5)
    end
    upvalue_4.__OBJECT_ACTIVE = false
    if upvalue_4.SocketClosed or upvalue_5 then
      if upvalue_0 then
        upvalue_1(" (ALREADY CLOSED)\n")
      end
      return
    end
    local num_v9 = 0
    local f10 = 8969239175329
    local f11 = v5
    local f12 = v6
    local var_1
    do
      if upvalue_0 then
        local f13 = upvalue_1
        f10 = upvalue_3
        f11 = ""
        f12 = 25877967691300
        f10 = "["
        f10 = upvalue_2[f10]
        f11 = os
        f12 = upvalue_3
        f12 = "clock"
        f12 = upvalue_2[f12]
        f11 = f11[f12]
        f11 = f11()
        f12 = upvalue_3
        f12 = "] Attempting to reconnect to wshttpemu
        "
        f12 = upvalue_2[f12]
        f11 = f11 .. f12
        f10 = f10 .. f11
        f13(f10)
      end
      local var_2 = upvalue_6()
      f10 = false
      f11 = nil
      f12 = nil
      local function f14()
        local var_3, var_4
        var_4, var_3 = upvalue_2(upvalue_3, upvalue_4.Url)
        f11 = var_4
        f12 = var_3
        f10 = true
      end
      upvalue_7(f14)
      while not (f10 or not (upvalue_6() < var_2 + 8)) 				upvalue_10()
      if upvalue_0 then
        local f15 = upvalue_1
        local _ = "["
        f15(f10 ..
        os.clock() ..
        "] ######## L_PASS: d: " ..
        upvalue_11(34490713701753) ..
        ", ok: " ..
        upvalue_11(f11) .. "\n")
      end
      if not f10 then
        upvalue_12 = false
        v9 = 10
        if upvalue_0 then
          warn("[2] Unable to connect (timeout)")
        end
      end
      if f11 then
        if upvalue_0 then
          upvalue_1("[" ..
          os.clock() ..
          "] [CONNECT] Reconnected\n")
        end
        upvalue_4.__OBJECT_ACTIVE = true
        upvalue_4.Websocket = f12
        upvalue_12 = upvalue_4
        local var_5 = f12
        local Send = f12.Send
        local f16 = upvalue_13
        local t1 =  { ["Opcode"] = "PING", ["Data"] = { }
        }
        Send(var_5, f16(t1))
        local function f17()
          f12.OnClose:Connect(upvalue_3)
          f12.OnMessage:Connect(upvalue_4)
        end
        upvalue_8(f17)
        local function f18()
          f12.ConnectionClosed:Connect(upvalue_3)
          f12.DataReceived:Connect(upvalue_4)
        end
        upvalue_8(f18)
        return
      end
      v9 = v9 + 1
      if 5 < v9 then
        upvalue_12 = false
      end
      local f19 = upvalue_10
      var_1 = v9 < 4
      var_1 = var_1 and 10 or 120
      f19(var_1)
    end
  end
  local function f20()
    upvalue_0.Websocket.OnClose:Connect(upvalue_3)
    upvalue_0.Websocket.OnMessage:Connect(upvalue_4)
  end
  local function f21()
    local var_6 = upvalue_0.Websocket
    local _ = "DataReceived"
    var_6:Connect(upvalue_3)
    local t2 = upvalue_0.Websocket
    t2.ConnectionClosed:Connect(upvalue_4)
  end
  local function f22(param2)
    local function f23(param3)
      if p3 == "PONG" then
        if upvalue_2 then
          upvalue_3("[" ..
          os.clock() ..
          "] [PONG] Server
        end
        p2.LastPong = tick()
        return
      end
      local var_7 = string.match(
      param3,
      "|__(%d+)__|"
      )
      if upvalue_2 then
        upvalue_3("[" ..
        os.clock() ..
        "] [RESPONSE] Server
      end
      if not var_7 then
        return (p2.OnMessageSignal:Fire(param3))
      end
      local var_8 = p2.Requests[var_7 + 0]
      var_8:Fire(param3:gsub(
      "|__(%d+)__|",
      ""
      ))
      return (var_8:Destroy())
    end
    local var_9
    var_9 = function(...)
      local var_10, var_11
      if upvalue_0 then
        local f24 = upvalue_1
        local var_12 = "["
        local var_13 = os.clock()
        var_11 = "] [CLOSED] "
        var_10 = upvalue_2["] [CLOSED] "]
        f24(var_12 .. var_13 .. var_10)
      end
      p2.__OBJECT_ACTIVE = false
      if p2.SocketClosed or upvalue_5 then
        if upvalue_0 then
          upvalue_1(" (ALREADY CLOSED)\n")
        end
        return
      end
      local num_v23 = 0
      local f25 = 8969239175329
      local f26 = var_10
      local f27 = var_11
      local var_14
      while true do
        if upvalue_0 then
          local f28 = upvalue_1
          f25 = upvalue_3
          f26 = ""
          f27 = 25877967691300
          f25 = "["
          f25 = upvalue_2[f25]
          f26 = os
          f27 = upvalue_3
          f27 = "clock"
          f27 = upvalue_2[f27]
          f26 = f26[f27]
          f26 = f26()
          f27 = upvalue_3
          f27 = "] Attempting to reconnect to wshttpemu
          "
          f27 = upvalue_2[f27]
          f26 = f26 .. f27
          f25 = f25 .. f26
          f28(f25)
        end
        local var_15 = upvalue_6()
        f25 = false
        f26 = nil
        f27 = nil
        local function f29()
          local var_16, var_17
          var_17, var_16 = upvalue_2(upvalue_3, p2.Url)
          f26 = var_17
          f27 = var_16
          f25 = true
        end
        upvalue_7(f29)
        while not (f25 or not (upvalue_6() < var_15 + 8)) 					upvalue_10()
        if upvalue_0 then
          local f30 = upvalue_1
          local _ = "["
          f30(f25 ..
          os.clock() ..
          "] ######## L_PASS: d: " ..
          upvalue_11(34490713701753) ..
          ", ok: " ..
          upvalue_11(f26) .. "\n")
        end
        if not f25 then
          upvalue_12 = false
          var_18 = 10
          if upvalue_0 then
            warn("[2] Unable to connect (timeout)")
          end
        end
        if f26 then
          if upvalue_0 then
            upvalue_1("[" ..
            os.clock() ..
            "] [CONNECT] Reconnected\n")
          end
          p2.__OBJECT_ACTIVE = true
          p2.Websocket = f27
          upvalue_12 = p2
          local var_19 = f27
          local Send2 = f27.Send
          local f31 = upvalue_13
          local t3 =  { ["Opcode"] = "PING", ["Data"] = { }
          }
          Send2(var_19, f31(t3))
          local function f32()
            f27.OnClose:Connect(var_9)
            f27.OnMessage:Connect(f23)
          end
          upvalue_8(f32)
          local function f33()
            f27.ConnectionClosed:Connect(var_9)
            f27.DataReceived:Connect(f23)
          end
          upvalue_8(f33)
          return
        end
        var_18 = var_18 + 1
        if 5 < var_18 then
          upvalue_12 = false
        end
        local f34 = upvalue_10
        var_14 = var_18 < 4
        var_14 = var_14 and 10 or 120
        f34(var_14)
      end
    end
    local function f35()
      p2.Websocket.OnClose:Connect(var_9)
      p2.Websocket.OnMessage:Connect(f23)
    end
    upvalue_7(f35)
    local function f36()
      local var_20 = p2.Websocket
      local _ = "DataReceived"
      var_20:Connect(f23)
      local t4 = p2.Websocket
      t4.ConnectionClosed:Connect(var_9)
    end
    upvalue_7(f36)
    p2.LastPong = tick()
    while upvalue_9(10) do
      if upvalue_2 then
        upvalue_3("[" ..
        os.clock() ..
        "] [PING] Client
      end
      if p2.__OBJECT_ACTIVE then
        local t5 = p2.Websocket
        local Send3 = t5.Send
        local f37 = upvalue_12
        local t6 =  { ["Opcode"] = "PING", ["Data"] = { }
        }
        Send3(t5, f37(t6))
        if 20 < tick() - p2.LastPong then
          if upvalue_2 then
            upvalue_3("[" ..
            os.clock() ..
            "] [WARN] Server timeout\n")
            warn("Server timeout")
          end
          p2.Websocket:Close()
        end
      end
    end
  end
  local function f38(param4)
    for _ = 1, 2 do
      local var_21, var_22
      for i = 1, 3 do
        var_21 = p4 % 4158
        if i % 2 == 1 then
          var_21 = var_21 + 522
        end
        var_22 = p4 % 9997
        if var_22 % 2 ~= 1 then
          var_22 = var_22 * 3
        end
      end
      local var_23 = p4 % 10006325
      local var_24 = p4 % 1000
      local var_25 = upvalue_0((p4 - var_24) / 1000) % 1000
      local var_26 = p4 % ((p4 % 9919) * var_21 + 9999) + 6329
      p4 = (var_24 * var_25 + var_23 + p4 % (419824125 - var_23 + var_24) + (var_26 + (var_24 * var_21 + var_25)) % 999999 * (var_23 + var_26 % var_22)) % 99999999999
    end
    return p4
  end
  local function f43(param7, param8, param9)
    local var_27 = p7 / 2 ^ (p8 - 1) % 2 ^ (p9 - 1 - (p8 - 1) + 1)
    return var_27 - var_27 % 1
  end
  local function f297()
    local function f298()
      local t1 = upvalue_0.cache.gd
      if not t1 then
        t1 = { c = upvalue_1() }
        upvalue_0.cache.gd = t1
      end
      return t1.c
    end
    local function f299(...)
      local v1 = getthreadidentity()
      setthreadidentity(8)
      upvalue_0(...)
      setthreadidentity(v1)
    end
    local function f300()
      local num_v2 = 20
      local num_v3 = 236
      repeat
        v2 = v3 <= v2
      until v2
      return
    end
    local function f301()
      local t2 = upvalue_0.cache.az
      if not t2 then
        t2 = { c = upvalue_1() }
        upvalue_0.cache.az = t2
      end
      return t2.c
    end
    local function f302()
      local t3 = upvalue_0.cache.ht
      if not t3 then
        t3 = { c = upvalue_1() }
        upvalue_0.cache.ht = t3
      end
      return t3.c
    end
    local function f303()
      upvalue_0.Shading = Enum.AdornShading.XRayShaded
    end
    local function f304()
      upvalue_0.Shading = Enum.AdornShading.XRayShaded
    end
    local function f305(param1, param2)
      if p1._partAdornments[p2] ~= nil then
        return
      end
      if p2.Name == "Head" then
        local cylinderHandleAdornment = Instance.new("CylinderHandleAdornment")
        local cylinderHandleAdornment2 = Instance.new("CylinderHandleAdornment")
        local cylinderHandleAdornment3 = Instance.new("CylinderHandleAdornment")
        cylinderHandleAdornment.AlwaysOnTop = true
        cylinderHandleAdornment.Color3 = p1._innerColor
        cylinderHandleAdornment.Transparency = p1._innerTransparency
        cylinderHandleAdornment.ZIndex = 2
        cylinderHandleAdornment.Adornee = p2
        cylinderHandleAdornment.Visible = true
        cylinderHandleAdornment.Parent = upvalue_0
        cylinderHandleAdornment2.AlwaysOnTop = false
        cylinderHandleAdornment2.Color3 = p1._outlineColor
        cylinderHandleAdornment2.Transparency = p1._outlineTransparency
        cylinderHandleAdornment2.ZIndex = -1
        cylinderHandleAdornment2.Adornee = p2
        cylinderHandleAdornment2.Visible = true
        cylinderHandleAdornment2.Parent = upvalue_0
        cylinderHandleAdornment3.AlwaysOnTop = true
        cylinderHandleAdornment3.Color3 = upvalue_1(p1._glowColor)
        cylinderHandleAdornment3.Transparency = -1
        cylinderHandleAdornment3.ZIndex = 3
        cylinderHandleAdornment3.Adornee = p2
        cylinderHandleAdornment3.Visible = p1._glowEnabled
        local function f306()
          cylinderHandleAdornment3.Shading = Enum.AdornShading.XRayShaded
        end
        upvalue_2(f306)
        cylinderHandleAdornment3.Parent = upvalue_0
        cylinderHandleAdornment.CFrame = CFrame.Angles(math.pi / 2, 0, 0)
        cylinderHandleAdornment.Radius = 0.54
        cylinderHandleAdornment.Height = 1.12
        cylinderHandleAdornment2.CFrame = cylinderHandleAdornment.CFrame
        cylinderHandleAdornment2.Radius = 0.62
        cylinderHandleAdornment2.Height = 1.3
        cylinderHandleAdornment3.CFrame = cylinderHandleAdornment.CFrame
        cylinderHandleAdornment3.Radius = 0.55
        cylinderHandleAdornment3.Height = 1.14
        local _partAdornments = p1._partAdornments
        local t5 = { inner = cylinderHandleAdornment, outline = cylinderHandleAdornment2, glow = cylinderHandleAdornment3 }
        _partAdornments[p2] = t5
      else
        local boxHandleAdornment = Instance.new("BoxHandleAdornment")
        local boxHandleAdornment2 = Instance.new("BoxHandleAdornment")
        local boxHandleAdornment3 = Instance.new("BoxHandleAdornment")
        boxHandleAdornment.AlwaysOnTop = true
        boxHandleAdornment.Color3 = p1._innerColor
        boxHandleAdornment.Transparency = p1._innerTransparency
        boxHandleAdornment.ZIndex = 2
        boxHandleAdornment.Adornee = p2
        boxHandleAdornment.Visible = true
        boxHandleAdornment.Parent = upvalue_0
        boxHandleAdornment2.AlwaysOnTop = false
        boxHandleAdornment2.Color3 = p1._outlineColor
        boxHandleAdornment2.Transparency = p1._outlineTransparency
        boxHandleAdornment2.ZIndex = -1
        boxHandleAdornment2.Adornee = p2
        boxHandleAdornment2.Visible = true
        boxHandleAdornment2.Parent = upvalue_0
        boxHandleAdornment3.AlwaysOnTop = true
        boxHandleAdornment3.Color3 = upvalue_1(p1._glowColor)
        boxHandleAdornment3.Transparency = -1
        boxHandleAdornment3.ZIndex = 3
        boxHandleAdornment3.Adornee = p2
        boxHandleAdornment3.Visible = p1._glowEnabled
        local function f307()
          boxHandleAdornment3.Shading = Enum.AdornShading.XRayShaded
        end
        upvalue_2(f307)
        boxHandleAdornment3.Parent = upvalue_0
        boxHandleAdornment.Size = p2.Size + Vector3.one * 0.02
        boxHandleAdornment2.Size = p2.Size + Vector3.one * 0.12
        boxHandleAdornment3.Size = p2.Size + Vector3.one * 0.03
        local _partAdornments2 = p1._partAdornments
        local t6 = { inner = boxHandleAdornment, outline = boxHandleAdornment2, glow = boxHandleAdornment3 }
        _partAdornments2[p2] = t6
      end
    end
    local function f308()
      if upvalue_0.Parent == nil then
        return
      end
      if not upvalue_1 then
        upvalue_0.Transparency = upvalue_2
      end
    end
    local function f309(param3)
      upvalue_0:_RecordItemInput(param3)
    end
    local function f310(param4)
      upvalue_0:_OnItemAdded(param4)
    end
    local function f311(param5)
      upvalue_0:_OnItemRemoved(param5)
    end
    local function f312(param6, param7)
      local fighterState = p6.fighterState
      local function f313(param8)
        upvalue_0:_OnItemAdded(param8)
      end
      param7:Add(fighterState:OnItemAddedSignal(f313))
      local function f314(param9)
        upvalue_0:_OnItemRemoved(param9)
      end
      param7:Add(fighterState:OnItemRemovedSignal(f314))
      local _ = next
      local v9, var_1
      var_1, v9 = fighterState:GetItems()
      while true do
        local var_2
        v9, var_2 = next(var_1, v9)
        if v9 == nil then
        end
        upvalue_0:_OnItemAdded(var_2)
      end
    end
    local function f315()
      table.clear(upvalue_0._partsByItem)
      table.clear(upvalue_0._surfaceOwners)
      upvalue_0._highlight:OnContextRemoved()
      upvalue_0._chams:OnContextRemoved()
      upvalue_0._wireframe:OnContextRemoved()
    end
    local function f316()
      local _surfaceOwners = upvalue_0._surfaceOwners
      local var_3
      do
        local _
        var_3, _ = _surfaceOwners(nil, var_3)
        if var_3 == nil then
        end
        upvalue_0:_SyncSurface(var_3, upvalue_1)
      end
    end
    local function f317(param10)
      local var_4 = upvalue_0(param10)
      if var_4 == nil then
        return
      end
      local var_5 = upvalue_1._partsByItem[p10]
      if not (var_5 == nil or not upvalue_2(var_5, var_4)) then
        return
      end
      upvalue_1:_RemoveItem(param10)
      upvalue_1:_ApplyItem(param10, var_4)
    end
    local function f318(param11)
      local function f319(param12, param13)
        local fighterState2 = p12.fighterState
        local function f320(param14)
          param11:_OnItemAdded(param14)
        end
        param13:Add(fighterState2:OnItemAddedSignal(f320))
        local function f321(param15)
          param11:_OnItemRemoved(param15)
        end
        param13:Add(fighterState2:OnItemRemovedSignal(f321))
        local _ = next
        local var_6, var_7
        var_7, var_6 = fighterState2:GetItems()
        do
          local var_8
          var_6, var_8 = next(var_7, var_6)
          if var_6 == nil then
          end
          param11:_OnItemAdded(var_8)
        end
      end
      p11._trove:Add(p11._playerContext:ObserveContext("viewmodel_look", f319))
      local f322 = upvalue_0
      local var_9
      do
        local var_10
        var_9, var_10 = f322(nil, var_9)
        if var_9 == nil then
        end
        local f323 = table.create(2)
        local var_11
        do
          local _
          var_11, _ = f323(nil, var_11)
          if var_11 == nil then
          end
          local var_12 = var_10
          local function f324()
            local _surfaceOwners2 = p11._surfaceOwners
            local var_13
            do
              local _
              var_13, _ = _surfaceOwners2(nil, var_13)
              if var_13 == nil then
              end
              param11:_SyncSurface(var_13, var_12)
            end
          end
          p11._trove:Connect(upvalue_1:GetPropertyChangedSignal((table.create(3))), f324)
        end
      end
      local function f325()
        table.clear(p11._partsByItem)
        table.clear(p11._surfaceOwners)
        p11._highlight:OnContextRemoved()
        p11._chams:OnContextRemoved()
        p11._wireframe:OnContextRemoved()
      end
      p11._trove:Connect(p11._playerContext.contextRemoved, f325)
      local function f326(param16)
        local var_18 = upvalue_0(param16)
        if var_18 == nil then
          return
        end
        local var_14 = p11._partsByItem[p16]
        if not (var_14 == nil or not upvalue_2(var_14, var_18)) then
          return
        end
        param11:_RemoveItem(param16)
        param11:_ApplyItem(param16, var_18)
      end
      p11._trove:Connect(upvalue_3.rebuilt, f326)
    end
    local function f327()
    end
    local function fs_isfile(param17)
      local var_15, var_16
      var_16, var_15 = param17:_GetSelectedPresetName("delete state config")
      if var_15 ~= nil then
        return var_15
      end
      local var_17
      var_17 = var_16:match("%.json$") == nil and var_16 .. ".json" or var_16
      local var_19 = string.format("%s/%s", tostring(upvalue_0), tostring(var_17))
      if not isfile(var_19) then
        local t7 = {
        success = false,
        message = string.format("File %s not found on disk", tostring(var_17))
        }
        return t7
      end
      delfile(var_19)
      param17:_ForgetPreset(var_16)
      local t8 = { success = true }
      return t8
    end
    local function f329()
    end
    local function f330(param18, param19)
      local _ = next
      local var_20, var_21
      var_21, var_20 = param18:GetItems()
      do
        local var_22
        var_20, var_22 = next(var_21, var_20)
        if var_20 == nil then
        end
        if p19 == upvalue_0(upvalue_0(var_22, "Data"), "ObjectID") then
          return var_22
        end
      end
      return nil
    end
    local function f331(param20, param21)
      return (upvalue_0(upvalue_1(p20.inner, "ItemAdded"), param21))
    end
    local function f332(...)
      local var_28
      var_28 = true		return ((nil)(nil, nil))
    end
    local function f333()
      upvalue_0(upvalue_1:GetEquippedItem())
    end
    local function f334(param22, param23)
      local function f335()
        p23(param22:GetEquippedItem())
      end
      return (upvalue_0(upvalue_1(p22.inner, "EquippedItemChanged"), f335))
    end
    local function f336(param24)
      p24._trove:Destroy()
    end
    local function f337(...)
      local t9 = ...
      return (upvalue_0(t9.inner, "Items"))
    end
    local function f338(param25)
      return (upvalue_0(p25.inner, "EquippedItem"))
    end
    local function f339(...)
      local var_23
      do
        local _continue32 = false
        local var_24 = "À"
        local f340 = string.len(var_24)
        var_23 = f340 <= 3
        if var_23 then
          var_23 = 355
          if var_23 then
            _continue32 = true
          end
        else
          var_24 = 3.141592653589793
        end
        if _continue32 then
          continue
        end
        local _ = 29082 + (var_23 + f340(var_24)) + -29337
        local t10 = ...
        return (upvalue_0(t10.inner, "Entity"))
      end
    end
    local function f341()
      upvalue_1.environmentID = upvalue_0:GetAttribute("EnvironmentID")
      local bit32_lshift = bit32.lshift
      local string_len = string.len
      while true do
        local var_25 = "\\Q"
        while true do
          string_len = string_len(var_25)
          var_25 = 21
          bit32_lshift = 487 < bit32_lshift(string_len, var_25)
          if not bit32_lshift then
          end
          bit32_lshift = 448
        end
      end
    end
    local function f344(...)
      local var_26
      var_26 = (nil)(upvalue_1, "IsSpectating") == true
      if var_26 == upvalue_2.isSpectating then
        return
      end
      upvalue_2.isSpectating = var_26
      upvalue_2.isSpectatingChanged:Fire(var_26)
    end
    local function f345(param26)
      upvalue_0.entityAdded:Fire(param26)
    end
    local function f346(param27)
      upvalue_0.entityRemoved:Fire(param27)
    end
    local function f347(param28, param29)
      local var_29 = upvalue_0.new("fighters.LocalFighterState")
      local var_30 = upvalue_1(param29, "Data")
      local t11 = {
      _trove = var_29,
      _data = var_30,
      inner = param29,
      player = param28,
      character = var_29:Add(upvalue_2.new(param28)),
      objectId = upvalue_1(var_30, "ObjectID"),
      environmentID = param28:GetAttribute("EnvironmentID")
      }
      local t12, var_31
      if upvalue_3(param29, "IsSpectating") == true then
        var_31 = true
        t12 = t11
      else
        var_31 = false
        t12 = t11
      end
      t12.isSpectating = var_31
      t12.environmentIDChanged = var_29:Add(upvalue_4.new())
      t12.isSpectatingChanged = var_29:Add(upvalue_4.new())
      t12.entityAdded = var_29:Add(upvalue_4.new())
      t12.entityRemoved = var_29:Add(upvalue_4.new())
      t12 = setmetatable(t12, upvalue_5)
      local function f348()
        t12.environmentID = param28:GetAttribute("EnvironmentID")
        local bit32_lshift2 = bit32.lshift
        local string_len2 = string.len
        do
          local var_32 = "\\Q"
          while true do
            string_len2 = string_len2(var_32)
            var_32 = 21
            bit32_lshift2 = 487 < bit32_lshift2(string_len2, var_32)
            if not bit32_lshift2 then
            end
            bit32_lshift2 = 448
          end
        end
      end
      t12._trove:Connect(param28:GetAttributeChangedSignal("EnvironmentID"), f348)
      local function f351(...)
        local var_33
        var_33 = (nil)(param29, "IsSpectating") == true
        if var_33 == t12.isSpectating then
          return
        end
        t12.isSpectating = var_33
        t12.isSpectatingChanged:Fire(var_33)
      end
      t12._trove:Add(upvalue_6(upvalue_7(p29.GetDataChangedSignal, param29, "IsSpectating"), f351))
      local inner = t12.inner
      local function f352(param30)
        t12.entityAdded:Fire(param30)
      end
      t12._trove:Add(upvalue_6(upvalue_1(inner, "EntityAdded"), f352))
      local function f353(param31)
        t12.entityRemoved:Fire(param31)
      end
      t12._trove:Add(upvalue_6(upvalue_1(inner, "EntityRemoved"), f353))
      local var_34 = upvalue_1(inner, "Entity")
      if var_34 ~= nil then
        t12.entityAdded:Fire(var_34)
      end
      return t12
    end
    local function f354()
      local var_35 = upvalue_0.aC()
      upvalue_0.aj()
      upvalue_0.al()
      local var_36 = upvalue_0.t()
      local var_37 = upvalue_0.q()
      local var_38 = upvalue_0.aI()
      local var_39 = upvalue_0.aH()
      local var_40 = upvalue_0.aJ()
      local var_41 = upvalue_0.ah()
      local var_42 = upvalue_0.ai()
      local t13 = {}
      t13.__index = t13
      function t13.new(param32, param33)
        local var_43 = var_37.new("fighters.LocalFighterState")
        local var_44 = var_41(param33, "Data")
        local t14 = {
        _trove = var_43,
        _data = var_44,
        inner = param33,
        player = param32,
        character = var_43:Add(var_35.new(param32)),
        objectId = var_41(var_44, "ObjectID"),
        environmentID = param32:GetAttribute("EnvironmentID")
        }
        local t15, var_45
        if var_40(param33, "IsSpectating") == true then
          var_45 = true
          t15 = t14
        else
          var_45 = false
          t15 = t14
        end
        t15.isSpectating = var_45
        t15.environmentIDChanged = var_43:Add(var_36.new())
        t15.isSpectatingChanged = var_43:Add(var_36.new())
        t15.entityAdded = var_43:Add(var_36.new())
        t15.entityRemoved = var_43:Add(var_36.new())
        t15 = setmetatable(t15, t13)
        local function f355()
          t15.environmentID = param32:GetAttribute("EnvironmentID")
          local bit32_lshift3 = bit32.lshift
          local string_len3 = string.len
          do
            local var_46 = "\\Q"
            while true do
              string_len3 = string_len3(var_46)
              var_46 = 21
              bit32_lshift3 = 487 < bit32_lshift3(string_len3, var_46)
              if not bit32_lshift3 then
              end
              bit32_lshift3 = 448
            end
          end
        end
        t15._trove:Connect(param32:GetAttributeChangedSignal("EnvironmentID"), f355)
        local function f358(...)
          local var_47
          var_47 = (nil)(param33, "IsSpectating") == true
          if var_47 == t15.isSpectating then
            return
          end
          t15.isSpectating = var_47
          t15.isSpectatingChanged:Fire(var_47)
        end
        t15._trove:Add(var_39(var_42(p33.GetDataChangedSignal, param33, "IsSpectating"), f358))
        local inner2 = t15.inner
        local function f359(param34)
          t15.entityAdded:Fire(param34)
        end
        t15._trove:Add(var_39(var_41(inner2, "EntityAdded"), f359))
        local function f360(param35)
          t15.entityRemoved:Fire(param35)
        end
        t15._trove:Add(var_39(var_41(inner2, "EntityRemoved"), f360))
        local var_48 = var_41(inner2, "Entity")
        if var_48 ~= nil then
          t15.entityAdded:Fire(var_48)
        end
        return t15
      end
      function t13.GetEntity(...)
        local var_49
        do
          local _continue36 = false
          local var_50 = "À"
          local f361 = string.len(var_50)
          var_49 = f361 <= 3
          if var_49 then
            var_49 = 355
            if var_49 then
              _continue36 = true
            end
          else
            var_50 = 3.141592653589793
          end
          if _continue36 then
            continue
          end
          local _ = 29082 + (var_49 + f361(var_50)) + -29337
          local t16 = ...
          return (var_41(t16.inner, "Entity"))
        end
      end
      function t13.GetItems(...)
        local t17 = ...
        return (var_41(t17.inner, "Items"))
      end
      function t13:GetEquippedItem()
        return (var_41(self.inner, "EquippedItem"))
      end
      function t13:GetItemById(param36)
        local _ = next
        local var_51, var_52
        var_52, var_51 = self:GetItems()
        while true do
          local var_53
          var_51, var_53 = next(var_52, var_51)
          if var_51 == nil then
          end
          if p36 == var_41(var_41(var_53, "Data"), "ObjectID") then
            return var_53
          end
        end
        return nil
      end
      function t13:OnItemAddedSignal(param37)
        return (var_38(var_41(self.inner, "ItemAdded"), param37))
      end
      function t13.OnItemRemovedSignal(...)
        local var_27
        var_27 = true			return ((nil)(nil, nil))
      end
      function t13:OnEquippedItemChangedSignal(param38)
        local function f362()
          p38(self:GetEquippedItem())
        end
        return (var_38(var_41(self.inner, "EquippedItemChanged"), f362))
      end
      local YK2 = YK
      local var_54
      var_54 = 0 < #(90037)[3]
      YK2(var_54 and {})
      function t13.Update()
      end
      function t13:Destroy()
        self._trove:Destroy()
      end
      return t13
    end
    local function f363(param39, param40)
      local CurrentCamera = upvalue_0.CurrentCamera
      local ViewportSize = CurrentCamera.ViewportSize
      local ViewportPointToRay = CurrentCamera:ViewportPointToRay(ViewportSize.X / 2, ViewportSize.Y / 2)
      local t18 = upvalue_1.GetProfileForContext(p39._playerContext)
      local var_55 = upvalue_1.HasExclusions(t18)
      var_55 = var_55 and p39._worldInclude:GetParamsExcluding(t18.ExcludedParts) or
      p39._worldInclude:GetParams()
      local Raycast = upvalue_0:Raycast(
      ViewportPointToRay.Origin,
      ViewportPointToRay.Direction * 2000,
      var_55
      )
      if Raycast == nil then
        return false
      end
      local FindFirstAncestorOfClass = Raycast.Instance:FindFirstAncestorOfClass("Model")
      if FindFirstAncestorOfClass == nil then
        return false
      end
      local t19 = p39._fighters.byModel[FindFirstAncestorOfClass]
      if t19 == nil or not t19.isEnemy or t19:IsInvincible() then
        return false
      end
      local state2 = t19.character.state
      if not state2.alive then
        return false
      end
      local var_56
      var_56 = state2.humanoid:GetState() == Enum.HumanoidStateType.Freefall
      var_56 = var_56 and p40.TargetParts.Air or p40.TargetParts.Ground
      if upvalue_1.ResolveEffectiveParts(var_56, t18)[Raycast.Instance.Name] ~= true then
        return false
      end
      if p40.NotDeflecting or p40.NotShielded then
        local var_57 = upvalue_2.shooterOrigin(p39._playerContext)
        if not (var_57 == nil or
        not upvalue_2.isProtected(t19, var_57, p40.NotDeflecting, p40.NotShielded)) then
          return false
        end
      end
      return true
    end
    local function f364()
      upvalue_0()
      upvalue_1()
    end
    local function f365()
    end
    local function f366()
      local t20 = upvalue_0.cache.hn
      if not t20 then
        t20 = { c = upvalue_1() }
        upvalue_0.cache.hn = t20
      end
      return t20.c
    end
    local function f367(param41, param42)
      return p41._byName[p42]
    end
    local function f368()
      local t21 = upvalue_0.cache.dV
      if not t21 then
        t21 = { c = upvalue_1() }
        upvalue_0.cache.dV = t21
      end
      return t21.c
    end
    local function f369(param43)
      local num_v67 = 4294967295
      for i = 1, #p43 do
        var_58 = bit32.bxor(
        upvalue_0[bit32.band(bit32.bxor(var_58, string.byte(param43, i)), 255) + 1],
        bit32.rshift(var_58, 8)
        )
      end
      return (bit32.bxor(var_58, 4294967295))
    end
    local function f370(param44)
      local num_v69 = 1
      local num_v70 = 0
      for i2 = 1, #p44 do
        var_59 = (var_59 + string.byte(param44, i2)) % 65521
        var_60 = (var_60 + var_59) % 65521
      end
      return var_60 * 65536 + var_59
    end
    local function fn_png_chunk_2(param45, param46)
      local var_61 = p45 .. p46
      return string.pack(">I4", #param46) .. var_61 .. string.pack(">I4", upvalue_0(var_61))
    end
    local function f372(param47)
      local var_62 = table.create(1)
      local num_v74 = 1
      local var_63
      repeat
        local var_64 = math.min(65535, #p47 - var_65 + 1)
        var_63 = #p47 < var_65 + var_64
        var_63 = var_63 and 1 or 0
        table.insert(var_62, string.char(var_63))
        local _ = table.insert
        string.pack("<I2I2", var_64, bit32.band(bit32.bnot(var_64), 65535))
        table.insert()
        table.insert(var_62, string.sub(param47, var_65, var_65 + var_64 - 1))
        var_65 = var_65 + var_64
      until #p47 < var_65
      string.pack(">I4", upvalue_0(param47))
      table.insert()
      return (table.concat(var_62))
    end
    local function fn_png_build_2(param48, param49, param50)
      return "PNG\r\n\n" ..
      upvalue_0("IHDR", (string.pack(">I4I4BBBBB", param48, param49, 8, 6, 0, 0, 0))) ..
      upvalue_0("IDAT", upvalue_1(param50)) .. upvalue_0("IEND", "")
    end
    local function fs_writefile(param51, param52)
      if not upvalue_0 then
        if not upvalue_1(upvalue_2).ok then
          return false
        end
        upvalue_0 = true
      end
      local var_66 = string.format("%s/%s.png", tostring(upvalue_2), tostring(param51))
      if upvalue_3(writefile, var_66, param52) then
        local var_67, var_68
        var_68, var_67 = upvalue_3(getcustomasset, var_66)
        if var_68 and type(var_67) == "string" then
          return var_67
        end
      end
      return false
    end
    local function f375(param53, param54)
      local var_69 = string.format("%sx%s", tostring(param53), tostring(param54))
      local var_70 = upvalue_0[var_69]
      if var_70 ~= nil then
        if not var_70 then
          var_70 = nil
        end
        return var_70
      end
      local var_71 = "
