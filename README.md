awscr-ssm
----

A Crystal shard for AWS System Manager.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  awscr-ssm:
    github: flowplayer/awscr-ssm
```

## Supported crystal version

1.0.0+

## QuickStart

```crystal
require "awscr-ssm"
# AWS credentials are automatically resolved from the environment variable 'AWS_ACCESS_KEY_ID' and 'AWS_SECRET_ACCESS_KEY'.
# You can also use SimpleCredentials manually.
# credential = Awscr::SimpleCredentials.new("AK...", "CUE...")
parameter = Awscr::SSM::Client.new("ap-northeast-1").get_parameter("/develop/redis/auth-token", true)
```
