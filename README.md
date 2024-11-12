# prometheus-webhook-dingtalk 描述

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](http://github.com/hhyo/archery/blob/master/LICENSE)

Generating [DingTalk] notification from [Prometheus] [AlertManager] WebHooks.

This is a project forked from [github.com/timonwong/prometheus-webhook-dingtalk](https://github.com/timonwong/prometheus-webhook-dingtalk) 本项目是对timonwong/prometheus-webhook-dingtalk的二次开发

## About update 修改点

1. Add @ the given contactor support 支持指定接收人

2.Add math function of add 添加加法函数

## Using Docker Docker支持

You can deploy this tool using the Docker image from following registry:

* [DockerHub]\: [sunnywalden/prometheus-webhook-dingtalk](https://registry.hub.docker.com/u/sunnywalden/prometheus-webhook-dingtalk/)

[Prometheus]: https://prometheus.io
[AlertManager]: https://github.com/prometheus/alertmanager
[DingTalk]: https://www.dingtalk.com
[DockerHub]: https://hub.docker.com
