# service-monitoring-tools

This file keeps track of the decisions taken to choose the service monitoring tool.

---

Service monitoring tools allow developers to track the performance and how the server resources are being used by collecting and analysing metrics. This means it monitors certain key server components such as CPU load, RAM, firewall, sensor, bandwidth, error rate, network, disk space usage, switch, router, and remote access.


|Tool|Supported platforms|System Requirements|Description|
|--|--|--|--|
|[Prometheus](https://prometheus.io/)*|Linux, Windows, macOS|RAM: 4GB, Hard Disk Space: 20GBand CPU: 2 cores|It collects rich metrics and provides a powerful querying language|
|[Grafana](https://grafana.com/)*|Debian / Ubuntu, RPM-based Linux (CentOS, Fedora, OpenSuse, RedHat), macOS, Windows|RAM: 4GB, Hard Disk Space: 300GGBand CPU: 1 core|It transforms metrics into meaningful visualizations|
|[Zabbix](https://www.zabbix.com/)|Windows, Linux, IBM AIX, Mac OS X, Linux, FreeBSD, HP-UX, Solaris: 9-11|RAM: 1.5GB, Hard Disk Space: 8GB and CPU: 2 CPU cores/2GB|It monitors the IT infrastructure and is configurable directly from the web interface.|
|[Icinga](https://icinga.com/)|Mac OS X, Windows, Linux, IBM AIX, Solaris, Unix, and HP-UX|RAM: 4GB, Hard Disk Space: 50GBand CPU: 2 cores| It checks server performance and network availability. It also has an integrated engine with the capability to monitor extensive infrastructure.|

_*Prometheus and Grafana are usually used together._

