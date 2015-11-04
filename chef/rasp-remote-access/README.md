rasp-remote-access Cookbook
===========================

This cookbook provides remote access applications for Bloomberg tools and services.

Requirements
------------
This cookbook expects to be used on a Raspberry Pi Model 2 B with Raspbian.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### rasp-remote-access::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rasp-remote-access']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rasp-remote-access::default

Include `rasp-remote-access` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rasp-remote-access]"
  ]
}
```

License and Authors
-------------------
Authors: Nicolas Limare <nlimare@bloomberg.net>
