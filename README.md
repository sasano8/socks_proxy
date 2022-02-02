# 概要

プロキシサーバを構成する。

# 要件

特定のIPのみプロキシを使用させる。

- docker-container -> localnetwork -> siteA
- docker-container -> localnetwork -> proxy -> siteB


# 構成

- docker-host上にプロキシ（squid）を構成する。
- docker-host上にHTTP_PROXY=<構成したプロキシ>

