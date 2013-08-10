jq Cookbook
===========
Install jq. 
jq is a lightweight and flexible command-line JSON processor
http://stedolan.github.io/jq/

Requirements
------------


Usage
-----
#### jq::default

Just include `jq` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[jq]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Hiroshi Toyama (toyama0919@gmail.com)
