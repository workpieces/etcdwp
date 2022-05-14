# 单机版etcd测试

## Docker启动服务

```shell
docker compose -f single.yaml up -d 
```

## 连接测试

![img.png](none/img.png)

## 添加键值测试

![img_1.png](none/img_1.png)

## 证书测试

- [证书制作参考](https://github.com/workpieces/etcdWp/blob/main/cert/README.md)

证书对应:

```go
tlsInfo := transport.TLSInfo{
  CertFile:      "/tmp/test-certs/test-name-1.pem",
  KeyFile:       "/tmp/test-certs/test-name-1-key.pem",
  TrustedCAFile: "/tmp/test-certs/trusted-ca.pem",
 }
```

![](none/20571652523373_.pic.jpg)

