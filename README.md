## Magento 2 CLI Aliases

```
magento2_cli_aliases.sh
```

The goal is ease/speed-up the execution of several CLI commands, many of those commands are executed using
Warden shell (https://github.com/davidalger/warden)
For example, in order to reindex, instead execute:\
```cd /home/user/m2project; warden shell -c 'bin/magento indexer:reindex'```\
just call:\
```fre```