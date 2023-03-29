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
    <td>会话级别内无需手动准备 SQL 执行计划缓存（实验特性）</td>
    <td>支持在会话级别自动重用执行计划缓存，可以减少编译并缩短相同 SQL 查询的时间，而无需事先手动准备 Prepare Statement 语句。</td>
  </tr>
  <tr>
    <td>TiFlash 支持存储计算分离和 S3 共享存储（实验特性）</td>
    <td>TiFlash 增加云原生架构的支持作为可选项：
      <ul>
        <li>支持存算分离架构，提升 HTAP 资源的弹性能力。</li>
        <li>支持基于 S3 的存储引擎，以更低的成本提供共享存储。</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td rowspan="2">稳定性与高可用</td>
    <td>优化资源管控（实验特性）</td>
    <td>支持使用资源组来为一个集群中的不同应用或工作负载分配和隔离资源。在这个版本中，TiDB 增加了对不同资源的绑定模式（用户级、会话级、语句级）和用户定义的优先级的支持，用户还可以使用命令来对集群整体资源量进行预估。</td>
  </tr>
  <tr>
    <td>TiFlash 支持数据落盘</td>
    <td>TiFlash 支持将中间结果落盘，以缓解数据密集型操作（如聚合、排序和 Hash Join）中的 OOM 问题。</td>
  </tr>
  <tr>
    <td rowspan="2">SQL</td>
    <td>行级 TTL (GA)</td>
    <td>支持通过后台任务自动删除超过生命周期（Time to live）的数据，并以此来自动管理数据规模并提高性能。</td>
  </tr>
  <tr>
    <td>支持 <code>REORGANIZE PARTITION</code> 语法（List/Range 分区表）</td>
    <td><code>REORGANIZE PARTITION</code> 语句可用于合并相邻分区，或将一个分区拆分为多个分区，从而提升分区表的易用性。</td>
  </tr>
  <tr>
    <td rowspan="2">数据库管理与可观测性<br/></td>
    <td>TiDB 通过 <code>LOAD DATA</code> 语句集成 TiDB Lightning（实验特性）</td>
    <td>集成 TiDB Lightning 的逻辑导入模式使 <code>LOAD DATA</code> 语句更加强大，例如支持从 S3/GCS 导入数据、支持任务管理等。</td>
  </tr>
  <tr>
    <td>TiCDC 支持对象存储 Sink (GA)</td>
    <td>TiCDC 支持将行变更事件同步到对象存储服务，包括 Amazon S3、Azure Blob Storage 和 NFS 等。</td>
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
