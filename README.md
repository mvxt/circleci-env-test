# CircleCI Env Test [![CircleCI](https://circleci.com/gh/mvxt/circleci-env-test.svg?style=shield&circle-token=dc8cf1a22e1f456d95198810be3ec5c9b0a29a65)](https://circleci.com/gh/mvxt/circleci-env-test)

A demo repository for testing various different, specific use cases and functionalities in CircleCI. All configuration can be found in `.circleci/config.yml`.

## Table of Items:
Functionality             | Description
--------------------------|---------------------------------------------------
[Inline Orbs](https://circleci.com/docs/2.0/orb-author/#writing-inline-orbs) | Inline orbs are just orbs that are written, defined, and used within a single `config.yml`. This project's inline orb is simply called `mvxt-test`.
[Secrets Masking](https://circleci.com/docs/2.0/env-vars/#secrets-masking)   | The `test` job in the configuration tests CircleCI's secrets masking capability. See output in the [build job's details](https://circleci.com/gh/mvxt/circleci-env-test/67).
[Parameter Interpolation](https://circleci.com/docs/2.0/reusing-config/#using-the-parameters-declaration) | CircleCI's configuration supports interpolating parameters into a job's configuration. This happens during config processing and prior to job start. Subsequently, parameters can be interpolated into any part of the configuration, including items outside of `steps`. See `mvxt-test/test-env-interp` for inserting parameters into steps and environment variables, and see test-node-job and test-go-job (`executor-param-test` in the workflows) for parameterizing the executor. This could effectively be used to simulate "matrix" jobs.
[Reusable Jobs](https://circleci.com/docs/2.0/reusing-config/#authoring-parameterized-jobs) | See in the `workflows` section how I'm reusing the same defined job multiple times with different parameters and with different names. You can define reusable jobs both in an orb and outside of the orb.

