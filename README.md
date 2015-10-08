# [heroku-buildpack-skeleton-example]

A MIT licensed example of how to use the [heroku-buildpack-skeleton].

To use it, do the following in a POSIX terminal:-

```bash
MY_APP_NAME="set-this-to-an-appnme"
git clone https://github.com/raphaelcohn/heroku-buildpack-skeleton-example.git "$MY_APP_NAME"
cd "$MY_APP_NAME"
git submodule update --init --recursive
./deploy -v 2
cd -
```

Of course, it'd be nice to not rely on the git repository's name for the app name. Simply create a configuration snippet, and your app name is now part of source control:-

```bash
# Assuming we're inside the git repository
cat >.heroku.rc.d/heroku.conf.d/app-name.conf <<EOF
configure heroku appName SOME_APP_NAME
EOF
```

Alternatively, you can add this line to `.heroku.rc.d/heroku.conf`, but the snippets allow for more fine-grained control, permitting you to omit things from source control (think of Debian run-parts or apt sources.list.d, and how it lets you merge in files).

Adding a configuration variable is likewise simple:-

```bash
# Assuming we're inside the git repository
MY_VARIABLE_NAME="URL"
MY_VARIABLE_VALUE="https://google.com/"
printf '%s' "$MY_VARIABLE_VALUE" >.heroku.rc.d/configuration-variables/"$MY_VARIABLE_NAME"
```

Of course, not everything should be stored in Git, but you might still want to document an import variable:-


TODO


[heroku-buildpack-skeleton]: https://github.com/raphaelcohn/heroku-buildpack-skeleton "heroku-buildpack-skeleton homepage"
[heroku-buildpack-skeleton-example]: https://github.com/raphaelcohn/heroku-buildpack-skeleton-example "heroku-buildpack-skeleton-example homepage"
[shellfire]: https://github.com/shellfire-dev "shellfire homepage"
