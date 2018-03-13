# Liveblog 3 AMP Theme repo is **DEPRECATED**

We integrated a monorepo aproach and the source code is now kept in the liveblog repo
in the `server/liveblog/themes/themes_assets/amp`
Link to the `master branch` to the following [path](https://github.com/liveblog/liveblog/tree/master/server/liveblog/themes/themes_assets/amp)

A tipical workflow for a `theme` only collaborator will change from the current steps

```
git clone https://github.com/liveblog/liveblog-amp-theme
cd liveblog-amp-theme
npm install
gulp watch-static
```

to the next steps

```
git clone https://github.com/liveblog/liveblog
cd liveblog/server/liveblog/themes/themes_assets/amp
npm install
gulp watch-static
```