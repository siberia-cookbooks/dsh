dsh Cookbook
============

This cookbook installs the clusterit package and configures the ~/.dsh/clusterit
file with information about goups of hosts and groups of groups of hosts which
is quite useful in managing servers.

Requirements
------------

Attributes
----------

e.g.
#### dsh::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dsh']['groups']</tt></td>
    <td>Hash</td>
    <td>Lists groups -> server mappings</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['dsh']['lumps']</tt></td>
    <td>Hash</td>
    <td>Lists group of groups to group mappings<.td>
    <td><tt>false</tt></td>
  </tr>
</table>

#### dsh::default

e.g.
Just include `dsh` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[dsh]"
  ],
  "dsh": {
    "groups": {
      "shareddev": [
        "joey",
        "monica",
        "rachel",
        "ross"
      ]
      ...
    },
    "lumps": {
      "all": [
        "admin",
        "shared",
        "shareddev"
      ]
    }
  }
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

Jacques Marneweck <jacques@powertrip.co.za>
