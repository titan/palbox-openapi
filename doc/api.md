FORMAT: 1A

# 智能柜 OpenAPI

正式服务器地址为 http://palbox.fengchaohuzhu.com:5080/
测试服务器地址为 http://dev.fengchaohuzhu.com:5080/

## 板 [/{boxid}/locks/{boardid}]

### 开多把锁 [POST]

+ Request (application/x-www-form-urlencoded)

    + Body

        locks=1,2

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2]
        }

+ Response 200 (application/json)

        {
          "code": 500,
          "msg": "无法连接到缓存服务器",
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2]
        }


## 锁 [/{boxid}/locks/{boardid}/{lockid}]

### 开锁 [PUT]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1
        }

+ Response 200 (application/json)

        {
          "code": 500,
          "msg": "无法连接到缓存服务器",
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1
        }


### 获取锁状态 [GET]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "lock-status",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法获取到锁状态",
          "cmd": "lock-status",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1
        }

## 测物条 [/{boxid}/detect/{boardid}/{lockid}]

### 获取测物条状态 [GET]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到测物状态",
          "cmd": "detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true
        }

## 锁板加测物 [/{boxid}/lock-status-detect/{boardid}]
### 开多把锁 [POST]

+ Request (application/x-www-form-urlencoded)

    + Body

        locks=1,2

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2]
          "empty": true,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态和测物状态。",
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2]
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态。",
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2],
          "empty": true
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到测物状态。",
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2],
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 500,
          "msg": "无法连接到缓存服务器",
          "cmd": "locks-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "locks": [1, 2]
        }

## 锁加测物 [/{boxid}/lock-status-detect/{boardid}/{lockid}]

### 获取锁状态和测物条状态 [GET]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "lock-status-detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态和测物状态。",
          "cmd": "lock-status-detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态。",
          "cmd": "lock-status-detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到测物状态。",
          "cmd": "lock-status-detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 500,
          "msg": "无法连接到缓存服务器。",
          "cmd": "lock-status-detect",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "opened": true,
          "closed": false
        }

### 开锁 [PUT]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态和测物状态。",
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到锁状态。",
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "empty": true
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到测物状态。",
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "opened": true,
          "closed": false
        }

+ Response 200 (application/json)

        {
          "code": 500,
          "msg": "无法连接到缓存服务器。",
          "cmd": "lock-off",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "board": 1,
          "lock": 1,
          "opened": true,
          "closed": false
        }

## 充电器 [/{boxid}/chargers/{chargerid}]

chargerid 的取值范围是 1, 2, 3, 4

### 获取充电状态 [GET]

+ Response 200 (application/json)

        {
          "code": 1,
          "cmd": "charger-status",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "charger": 0,
          "charging": true
        }

+ Response 200 (application/json)

        {
          "code": 404,
          "msg": "无法查询到充电器。",
          "cmd": "charger-status",
          "boxid": "31-FF-DB-05-48-54-34-39-31-61-18-43",
          "charger": 0,
        }
