---
title: TiDB 7.0.0 Release Notes
---

# TiDB 7.0.0  Release Notes

Release date: xx, 2023

TiDB version: 7.0.0-DMR

Quick access: Quick start | Installation package

In v7.0.0-DMR, the key new features and improvements are as follows:

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
    <td rowspan="2">Scalability and Performance<br/></td>
    <td>Session level SQL plan cache (experimental)</td>
    <td>Using plan cache can reduce the time for compiling and optimizing SQL queries, which reduces query latency. For each query executed, if a plan doesn't exist, a new one will be stored and re-used next time.</td>
  </tr>
  <tr>
    <td>TiFlash supports storage-computing separation and S3 shared storage (experimental)</td>
    <td>TiFlash introduces a new architecture:
      <ol>
        <li>Disaggregate TiFlash's compute and storage which is a milestone for elastic HTAP resource utilization.</li>
        <li>Introduces S3 based storage engine which can provide shared storage at lower cost.</li>
      </ol>
    </td>
  </tr>
  <tr>
    <td rowspan="2">Reliability and Availability<br/></td>
    <td>Resource control enhancement (GA) </td>
    <td>Users can now use resource groups to allocate and isolate resources for different applications or workloads in one cluster. This supports different resource binding modes (user, session, query) and user-defined priority. Quotas can be "burstable".</td>
  </tr>
  <tr>
    <td>TiFlash support spill to disk</td>
    <td>TiFlash supports intermediate result spill to disk to mitigate OOMs in data-intensive operations like aggregations, sorts and hash joins.</td>
  </tr>
  <tr>
    <td rowspan="2">SQL</td>
    <td>Row-level TTL (GA)</td>
    <td>Manage database size and improve performance by automatically expiring data of a certain age.</td>
  </tr>
  <tr>
    <td>Reorganize LIST/RANGE partition</td>
    <td>REORGANIZE PARTITION clause can be used for merging adjacent partitions or spliting one to many, which  provides users with better usability of partitioned tables.</td>
  </tr>
  <tr>
    <td rowspan="2">DB Operations and Observability<br/></td>
    <td>TiDB integrates Lightning by “load data” statement(experimental)</td>
    <td>Load data sql statement becomes more powerful by integrating Lightning TiDB backend, such as supporting data import from S3/GCS, supporting task management and so on.<br/></td>
  </tr>
  <tr>
    <td>TiCDC supports object storage sink (GA)</td>
    <td>TiCDC supports saving row change events to storage services, including Amazon S3, Azure Blob Storage, and NFS<br/></td>
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
