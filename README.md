# How to Build Docker R with Prophet Package inside example

# What it is for 

Example of builing docker container with Prophet package. By some reasont it was not too easy to install it

# Points of Contact

Alexey, Ken

# How to install

```{bash}
 git clone git@gitlab.eng.roku.com:abutyrev/dockerrprophet.git
 cd dockerrprophet
 docker build -t rprophet .
```

# How to run

```{bash}
  docker run -ti --rm rprophet
```