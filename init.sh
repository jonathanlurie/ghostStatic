# making a link of the static repo folder here
if [ ! -d ./static ]; then
  echo "Enter path of you static site:"
  read staticSiteRepoLocalPath

  if [ -d $staticSiteRepoLocalPath ]; then
    ln -s $staticSiteRepoLocalPath static
  else
    echo "The path $staticSiteRepoLocalPath is not a directory"
  fi
fi

# reinit the database
if [ ! -f ./content/data/ghost-dev.db ]; then
  echo "init new database"
  ./node_modules/knex-migrator/bin/knex-migrator init
fi

# copy the ghost config file
if [ ! -f ./config.development.json ]; then
  echo "init dev config"
  cp ./config.development_sample.json ./config.development.json
fi
