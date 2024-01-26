Reproducer for https://github.com/ndmitchell/ghcid/issues/191

Install ghcid/stack (via https://devenv.sh/getting-started/ and `devenv shell` or otherwise).

Run `stack build`.

In separate terminals run:

```
$ ghcid --target myprogram:exe:myprogram --test Main.main
$ tail -f log.txt
```

Once you touch `src/Main.hs`, ghcid will reload and in log.txt you'll see two timestamps being added.
