# Verify injective release

This code snippet is centred on a shell script that does the following:

- Downloads a specified release (version) of injective
- Creates a docker image from it
- Runs the docker image, whose command should output the `inejctived` and `peggo` versions

## How to run

- Ensure that you have `docker` available on your command line
  - Hint: `brew install orbstack`
- Run the script: `./verify-injective-release.sh`

## References

- Stackoverflow: https://stackoverflow.com/q/79724413/194982
- Docs: https://docs.injective.network/infra/validator-mainnet/canonical-chain-upgrade-1.16.1
- Releases page: https://github.com/InjectiveLabs/injective-chain-releases/releases
