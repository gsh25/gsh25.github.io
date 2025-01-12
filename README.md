# gsh25.github.io

# Add Theme 

On blog project root dir, follow below steps to add Hugo theme as submodules and push the change to `main` branch.

```
$ git rm -r --cached themes/archie
$ rm -rf themes
$ git submodule add https://github.com/athul/archie.git themes/archie
$ git submodule update --init --recursive
$ git add .gitmodules themes/archie
$ git submodule
$ git add --all
$ git commit -m "Add archie theme as submodule"
$ git push --set-upstream origin $(git_current_branch)
```

# Update Theme Config

`archie` theme supports Google analytics feature, but I don't want right now so disable and push the change to `main` branch. 

```
$ cd /path/to/project/root/dir
$ cd themes/archie

# Remove below block on `layouts/partials/footer.html`
{{ if not hugo.IsServer }}
{{ template "_internal/google_analytics.html" . }}
{{ end }}

$ git add --all
$ git commit -m "Add archie theme as submodule"
$ git push --set-upstream origin $(git_current_branch)
```
