# Commands

- **Delete** the existing database and initialize a new one.   
If the Ghost config file does not exist, it uses a copy of `config.development_sample.json` instead.  
You will be asked to specify the folder containing your static site, so that *GhostStatic* can create a symlink. If you don't have any, create an empty folder somewhere and copy the path here.
```bash
$ npm run init
```

- Start the local server for Ghost
```bash
$ npm run start
```

- Build the static version of the Ghost blog (the local server **must** be running). All files in the `static` dir will be **removed** (except `.git` and the other hidden files), and replace by the newly generated static site.
```bash
$ npm run build
```

- Deploy the static site (= git add/commit/push)
```bash
$ npm run deploy
```
