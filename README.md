# openapi-validator

Docker container for linting OpenAPI specification files. Provides [IBM's
OpenAPI validator](https://github.com/IBM/openapi-validator), plus a
configuration file that is adjusted to suit Lucid's current OpenAPI rules and
requirements.

## Run 

* Execute by mounting the folder that contains the target file(s) to be linted,
  and then passing it the name of that file as the command:

  ```sh
  $ cd swagger
  $ docker run \
  >    -v "$PWD":/usr/app \
  >    -w /usr/app \
  >    docker.pkg.github.com/lucidhq/openapi-validator/openapi-validator -s openapi.yaml
  ```

* Validator will use the `config.json` file included in this repository as its
    configuration in place of the default `.validaterc`.

* When errors are found return value from `docker run` will be non-zero, which
    means that this check can be easily built into CI pipelines.

* Use `-s` flag to provide human readable summary at the end of the linting
  run.
