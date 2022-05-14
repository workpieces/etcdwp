# ETCD证书制作

[copy from https://www.daimajiaoliu.com/daima/479c1bcd1100414](https://www.daimajiaoliu.com/daima/479c1bcd1100414)

## 生成ca证书

#### 1.1 生成CA证书配置

```shell
cat > ca-config.json << EOF
{
  "signing": {
    "default": {
      "expiry": "87600h"
    },
    "profiles": {
      "www": {
         "expiry": "87600h",
         "usages": [
            "signing",
            "key encipherment",
            "server auth",
            "client auth"
        ]
      }
    }
  }
}
EOF
```

#### 1.2 生成证书请求文件配置


```shell
cat > ca-csr.json << EOF
{
    "CN": "etcd CA",
    "key": {
        "algo": "rsa",
        "size": 2048
    },
    "names": [
        {
            "C": "CN",
            "L": "Beijing",
            "ST": "Beijing"
        }
    ]
}
EOF
```

#### 1.3 生成根证书

```shell
cfssl gencert -initca ca-csr.json | cfssljson -bare ca -
```

**CA生成文件：** `ca.csr`、`ca.pem`、`ca-key.pem`

## Server证书

#### 2.1 生成server证书的配置文件

```shell
cat > server-csr.json << EOF
{
    "CN": "etcd",
    "hosts": [
      "1227.0.0.1",
      "192.168.31.108" 
 ],
    "key": {
        "algo": "rsa",
        "size": 2048
    },
    "names": [
        {
            "C": "CN",
            "L": "BeiJing",
            "ST": "BeiJing"
        }
    ]
}
EOF
```

#### 2.2 Server证书签名

```shell
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=www server-csr.json | cfssljson -bare server 
```

**Server生成文件：** `server-key.pem` 、`server.csr` 、`server.pem`

## Client证书

#### 2.1 生成客户端配置文件

注释： client证书可以忽略hosts属性的设置。

```shell
cfssl print-defaults csr > client.json
```

#### 3.2 Client证书签名

```shell
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=www client.json | cfssljson -bare client
```

