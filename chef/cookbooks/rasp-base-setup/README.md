rasp-base-setup Cookbook
========================

This cookbook implements post-install base system configuration and optimization: repositories, modules, cron, user, services, etc.

Requirements
------------
This cookbook is written for RAspbian installed with raspbian-ua-netinst on RAspberry Pi Model 2 B.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### rasp-base-setup::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rasp-base-setup']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rasp-base-setup::default

Include `rasp-base-setup` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rasp-base-setup]"
  ]
}
```

License and Authors
-------------------
Authors: Nicolas Limare <nlimare@bloomberg.net>
