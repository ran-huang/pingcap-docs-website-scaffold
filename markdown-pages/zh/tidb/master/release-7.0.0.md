---
title: TiDB 7.0.0 Release Notes
summary: 了解 TiDB 7.0.0  版本的新功能、兼容性变更、改进提升，以及错误修复。
---

# TiDB 7.0.0  Release Notes

发版日期：2023 年 X 月 x 日

TiDB 版本：7.0.0 -[DMR](/releases/versioning.md#开发里程碑版本)

试用链接：[快速体验](https://docs.pingcap.com/zh/tidb/v6.6/quick-start-with-tidb) | [下载离线包](https://cn.pingcap.com/product-community/)

在 7.0.0 版本中，你可以获得以下关键特性：

<table>
<thead>
  <tr>
    <th>Category</th>
    <th>Feature/Enhancement</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">Scalability and Performance<br></td>
    <td>Session level SQL plan cache (experimental)</td>
    <td>Using plan cache can reduce the time for compiling and optimizing SQL queries, which reduces query latency. For each query executed, if a plan doesn't exist, a new one will be stored and re-used next time.</td>
  </tr>
  <tr>
    <td>TiFlash supports storage-computing separation and S3 shared storage(experimental)</td>
    <td>TiFlash introduces a new architecture: 1. Disaggregate TiFlash's compute and storage which is a milestone for elastic HTAP resource utilization, and 2. Introduces S3 based storage engine which can provide shared storage at lower cost.</td>
  </tr>
  <tr>
    <td rowspan="2">Reliability and Availability<br></td>
    <td>Resource control enhancement(GA) </td>
    <td>Users can now use resource groups to allocate and isolate resources for different applications or workloads in one cluster. This supports different resource binding modes (user, session, query) and user-defined priority. Quotas can be "burstable".</td>
  </tr>
  <tr>
    <td>TiFlash support spill to disk</td>
    <td>TiFlash supports intermediate result spill to disk to mitigate OOMs in data-intensive operations like aggregations, sorts and hash joins.</td>
  </tr>
  <tr>
    <td rowspan="2">SQL</td>
    <td>Row-level TTL(GA)</td>
    <td>Manage database size and improve performance by automatically expiring data of a certain age.</td>
  </tr>
  <tr>
    <td>Reorganize LIST/RANGE partition</td>
    <td>REORGANIZE PARTITION clause can be used for merging adjacent partitions or spliting one to many, which  provides users with better usability of partitioned tables.</td>
  </tr>
  <tr>
    <td rowspan="2">DB Operations and Observability<br></td>
    <td>TiDB integrates Lightning by “load data” statement(experimental)</td>
    <td>Load data sql statement becomes more powerful by integrating Lightning TiDB backend, such as supporting data import from S3/GCS, supporting task management and so on.<br></td>
  </tr>
  <tr>
    <td>TiCDC supports object storage sink(GA)</td>
    <td>TiCDC supports saving row change events to storage services, including Amazon S3, Azure Blob Storage, and NFS<br></td>
  </tr>
</tbody>
</table>

## 新功能

## 兼容性变更

## 改进提升

## 错误修复
