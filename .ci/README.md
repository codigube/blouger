# Useful commands

## Set the Pipeline locally with providing vars

```bash
fly -t demo set-pipeline -p pipeline-tf --config pipeline-tf.yml --var aws_access_key=xxx aws_secret_key=xxx
```

## Execute single Task locally with providing params

```bash
# Use shell variables to provide temporary params
AWS_ACCESS_KEY=xxx AWS_SECRET_KEY=xxx fly -t demo execute --config tasks/tf-validate.yml -i source-code=../infra/aws
```

```bash
# Use shell variables to provide temporary params
AWS_ACCESS_KEY=xxx AWS_SECRET_KEY=xxx fly -t demo execute --config tasks/tf-plan.yml -i source-code=../infra/aws
```
