# Apigility Workshop
## at PHP Summer Camp 2015 - Rovinj (Croazia)

This is the hands-on part of the *Develop RESTful API in PHP using Apigility*
workshop presented by [Enrico Zimuel](http://www.zimuel.it) at the
[PHP Summer Camp 2015](http://2015.phpsummercamp.com/) conference in Rovinj
(Croazia).

The slides of the workshop are reported [here](http://www.zimuel.it/slides/phpsummer2015)

## Installation

You can install the Apigility workshop using composer:

```
php composer.phar install
```

To enable the Apigility UI you need to execute the following command:

```
php public/index.php development enable
```

You can finally execute the Apigility UI running this command:

```
php -S 0.0.0.0:8888 -t public public/index.php
```

Open your browser at http://localhost:8888 and start to use Apigility.

The first exercise of the workshop is reported [here](http://www.zimuel.it/slides/phpsummer2015/#/26).
