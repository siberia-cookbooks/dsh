dsh Cookbook [![Build Status](https://www.travis-ci.org/siberia-cookbooks/dsh.png?branch=master)](https://www.travis-ci.org/siberia-cookbooks/dsh)
==================================================================================================================================================

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

```
Copyright (c) 2012-2013 Jacques Marneweck. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```

Authors:

 * Jacques Marneweck <jacques@powertrip.co.za>
