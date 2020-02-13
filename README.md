# Deploy

When I
    
```
cf push --var value="01234567689.1234567890123"
```

I get (ACTUAL):
```
FOO1: 01234567689.1234567890123
FOO2: 1.2345676891234567e+09
```


I expect (EXPECTED):
```
FOO1: 01234567689.1234567890123
FOO2: 01234567689.1234567890123
```


# Another example:

Change manfiest to:

```
---
applications:
  - name: cf-cli-test
    timeout: 180
    instances: 1
    stack: cflinuxfs3
    env:
      FOO1: "01234567689.1234567890123"
      FOO2: |
        ((value))
```

Same outcomes as above.