---
title: TiDB 7.0.0 Release Notes
---

# TiDB 7.0.0  Release Notes

Release date: xx, 2023

TiDB version: 7.0.0-DMR

Quick access: Quick start | Installation package

In 7.0.0-DMR, the key new features and improvements are as follows:

<table>
<thead>
  <tr>
    <th>Category</th>
    <th>Feature</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">Scalability and Performance<br/></td>
    <td>Session level non-prepared SQL plan cache (experimental)</td>
    <td>Support automatically reusing plan cache at the session level to reduce compilation and shorten the query time for the same SQL patterns without manually setting prepare statements in advance.</td>
  </tr>
  <tr>
    <td>TiFlash supports the disaggregated storage and compute architecture and S3 shared storage (experimental)</td>
    <td>TiFlash introduces a cloud-native architecture as an option:
      <ul>
        <li>Disaggregates TiFlash's compute and storage, which is a milestone for elastic HTAP resource utilization.</li>
        <li>Introduces S3-based storage engine, which can provide shared storage at a lower cost.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td rowspan="2">Reliability and Availability<br/></td>
    <td>Resource control enhancement (Experimental) </td>
    <td>Support using resource groups to allocate and isolate resources for various applications or workloads within one cluster. In this release, TiDB adds support for different resource binding modes (user, session, and query level) and user-defined priorities. Additionally, you can also use commands to perform resource calibration (estimation for the whole resource amount).</td>
  </tr>
  <tr>
    <td>TiFlash supports spill to disk</td>
    <td>TiFlash supports intermediate result spill to disk to mitigate OOMs in data-intensive operations such as aggregations, sorts, and hash joins.</td>
  </tr>
  <tr>
    <td rowspan="2">SQL</td>
    <td>Row-level TTL (GA)</td>
    <td>Support managing database size and improve performance by automatically expiring data of a certain age.</td>
  </tr>
  <tr>
    <td>Reorganize <code>LIST</code>/<code>RANGE</code> partition</td>
    <td>The <code>REORGANIZE PARTITION</code> statement can be used for merging adjacent partitions or splitting one partition into many, which provides better usability of partitioned tables.</td>
  </tr>
  <tr>
    <td rowspan="2">DB Operations and Observability<br/></td>
    <td>The <code>LOAD DATA</code> statement integrates with TiDB Lightning (experimental) </td>
    <td>The <code>LOAD DATA</code> SQL statement becomes more powerful by integrating TiDB Lightning's logical import mode, such as supporting data import from S3/GCS and supporting task management.<br/></td>
  </tr>
  <tr>
    <td>TiCDC supports object storage sink (GA)</td>
    <td>TiCDC supports replicating row change events to object storage services, including Amazon S3, Azure Blob Storage, and NFS.<br/></td>
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
