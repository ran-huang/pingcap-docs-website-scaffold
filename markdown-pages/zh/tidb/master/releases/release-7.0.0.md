---
title: TiDB 7.0.0 Release Notes
---

# TiDB 7.0.0  Release Notes

发版日期：2023 年 X 月 x 日

TiDB 版本：7.0.0 -[DMR](/releases/versioning.md#开发里程碑版本)

试用链接：[快速体验](https://docs.pingcap.com/zh/tidb/v6.6/quick-start-with-tidb) | [下载离线包](https://cn.pingcap.com/product-community/)

在 7.0.0 版本中，你可以获得以下关键特性：

<table>
<thead>
  <tr>
    <th>分类</th>
    <th>功能</th>
    <th>描述</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">可扩展性与性能</td>
    <td>会话级 SQL Plan Cache（实验特性）</td>
    <td>使用计划缓存可以减少编译和优化 SQL 查询的时间，从而减少查询延迟。对于每个执行的查询，如果计划不存在，则会存储一个新的计划并在下一次重用。</td>
  </tr>
  <tr>
    <td>TiFlash 支持存储计算分离和 S3 共享存储（实验特性）</td>
    <td>TiFlash 引入了全新的架构：
      <ol>
        <li>分离 TiFlash 的计算和存储是弹性 HTAP 资源利用的重要里程碑。</li>
        <li>引入基于 S3 的存储引擎，可以以更低的成本提供共享存储。</li>
      </ol>
    </td>
  </tr>
  <tr>
    <td rowspan="2">稳定性与高可用</td>
    <td>资源控制增强 (GA) </td>
    <td>用户现在可以使用资源组为一群集群中的不同应用程序或工作负载分配和隔离资源。这支持不同的资源绑定模式 (用户、会话、查询) 和用户定义的优先级。配额可以“突发”。</td>
  </tr>
  <tr>
    <td>TiFlash 支持数据落盘</td>
    <td>TiFlash 支持将中间结果落盘，以缓解数据密集型操作（如聚合、排序和 Hash Join）中的 OOM 问题。</td>
  </tr>
  <tr>
    <td rowspan="2">SQL</td>
    <td>行级 TTL (GA)</td>
    <td>通过自动过期指定生命周期的数据，管理数据库大小并提高性能。</td>
  </tr>
  <tr>
    <td>重新组织 `LIST`/`RANGE` 分区</td>
    <td>`REORGANIZE PARTITION` 语句可用于合并相邻分区，或将一个分区拆分为多个分区，从而为用户提供更好的分区表可用性。</td>
  </tr>
  <tr>
    <td rowspan="2">数据库管理与可观测性<br/></td>
    <td>TiDB 通过 `LOAD DATA` 语句集成 TiDB Lightning（实验特性）</td>
    <td>集成 Lightning TiDB 后端使加载数据的 SQL 语句更加强大，例如支持从 S3/GCS 导入数据、支持任务管理等。</td>
  </tr>
  <tr>
    <td>TiCDC 支持对象存储 Sink (GA)</td>
    <td>TiCDC 支持将行变更事件保存到存储服务，包括 Amazon S3、Azure Blob 存储和 NFS</td>
  </tr>
</tbody>
</table>

## 新功能

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum

## 兼容性变更

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum

## 改进提升

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum

## 错误修复

lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum
