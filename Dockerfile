FROM        timonwong/prometheus-webhook-dingtalk:latest
MAINTAINER  sunnywalden <sunnywalden@gmail.com>

COPY prometheus-webhook-dingtalk  /bin/prometheus-webhook-dingtalk
COPY template/template.go        /usr/share/prometheus-webhook-dingtalk/template/template.go
COPY notifire/prometheus.go        /usr/share/prometheus-webhook-dingtalk/notifire/prometheus.go

EXPOSE      8060
ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
