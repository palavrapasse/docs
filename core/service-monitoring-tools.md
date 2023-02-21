# service-monitoring-tools

This file keeps track of the decisions taken to choose the service monitoring tool.

---

Service monitoring tools allow developers to track the performance and how the server resources are being used by collecting data and creating metrics. This means it monitors certain key server components such as CPU load, RAM, firewall, sensor, bandwidth, error rate, network, disk space usage, switch, router, and remote access.


|Tool|Description|Supported platforms|System Requirements|Advantages|Disadvantages|
|--|--|--|--|--|--|
|[Prometheus](https://prometheus.io/)*|It collects rich metrics and provides a powerful querying language|Linux, Windows, macOS|RAM: 4GB, Hard Disk Space: 20GBand CPU: 2 cores|Support for custom metrics; huge number of exporters available to export metrics to Prometheus from different sources|Complex and time-consuming to manage Prometheus instances; Need to manually configure and manage Prometheus exporters|
|[Grafana](https://grafana.com/)*|It transforms metrics into meaningful visualizations|Debian / Ubuntu, RPM-based Linux (CentOS, Fedora, OpenSuse, RedHat), macOS, Windows|RAM: 4GB, Hard Disk Space: 300GGBand CPU: 1 core|Free and open-source with a huge open-source community for support; Supports notification system in the form of Email, Discord, Telegram, Slack, etc.|Manual setup required for graphs and alerts|
|[Zabbix](https://www.zabbix.com/)|It monitors the IT infrastructure and is configurable directly from the web interface.|Windows, Linux, IBM AIX, Mac OS X, Linux, FreeBSD, HP-UX, Solaris: 9-11|RAM: 1.5GB, Hard Disk Space: 8GB and CPU: 2 CPU cores/2GB|The user interface is highly customizable; Supports notification system in the form of Email, SMS, etc; Immediate detection of configuration changes|Steep learning curve due to the complex database|
|[Icinga](https://icinga.com/)|It checks server performance and network availability. It also has an integrated engine with the capability to monitor extensive infrastructure.|Mac OS X, Windows, Linux, IBM AIX, Solaris, Unix, and HP-UX|RAM: 4GB, Hard Disk Space: 50GBand CPU: 2 cores|The user interface is simple and customizable; The modules allow for different functionality; Setup is quick, and server monitoring begins immediately|New users might find it complicated due to its complex features|

_*Prometheus and Grafana are usually used together._


## Decision

We choose the Prometheus and Grafana tools. Even though they can be complex to configure, [echo (library used in the web services projects) supports the generation of metrics for Prometheus](https://echo.labstack.com/middleware/prometheus/). Another pro is that both tools have a big community for support.