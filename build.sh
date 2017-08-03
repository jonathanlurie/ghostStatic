
if [ -d ./static ]; then
  rm -rf static/*
  buster generate
  node fixstaticurl.js
else
  echo "Cannot generate static site, the static folder must exist."
  echo "Create a symlink here named 'static' that point to a directory."
fi
