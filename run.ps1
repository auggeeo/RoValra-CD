docker run --rm -it `
  -p 3050:8000 `
  --mount type=bind,source="$($PWD.Path)",target=/docs `
  zensical/zensical:0.0.64 `
  serve --dev-addr 0.0.0.0:8000