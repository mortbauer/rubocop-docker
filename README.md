# rubocop-daemon docker

## Build
```
docker-compose build
```

## Run
```
docker-compose up -d
```

## Usage

for a single file:
```
cat ../foodsoft/app/models/financial_link.rb | ./rubocop-daemon --format githu
```


for many files:
```
find ../foodsoft/app/ -type f -print0 | xargs -0 -I {} sh -c "cat {} | ./rubocop-daemon -s {} --format github
```

## Idea Origin

from: https://brunothefrank.medium.com/fast-rubocop-in-ruby-with-docker-a94990091915
