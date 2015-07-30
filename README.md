# JsTest

To reproduce not serving the new js after exrm upgrade (in the new folder):

Note: you will need brunch installed

###fish:
```
set -x MIX_ENV prod
mix deps.get
git checkout old
brunch b; mix phoenix.digest; mix compile; mix release
rel/js_test/bin/js_test start # now you can browse to http://localhost:4000 and get the alert 'Old'

git checkout new
brunch b; mix phoenix.digest; mix compile; mix release
rel/js_test/bin/js_test upgrade "0.0.2" # clear cache and reload http://localhost:4000 and it will alert 'Old' and not 'New'
```

###bash:
```
export MIX_ENV prod
mix deps.get
git checkout old
brunch b && mix phoenix.digest && mix compile && mix release
rel/js_test/bin/js_test start # now you can browse to http://localhost:4000 and get the alert 'Old'

git checkout new
brunch b && mix phoenix.digest && mix compile && mix release
rel/js_test/bin/js_test upgrade "0.0.2" # clear cache and reload http://localhost:4000 and it will alert 'Old' and not 'New'
```
