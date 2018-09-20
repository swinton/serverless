workflow "go-serverless" {
  on = "push"
  resolves = ["ls"]
}

action "deploy" {
  uses = "wintron/serverless@master"
  args = ["deploy", "-v"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}

action "invoke" {
  needs = ["deploy"]
  uses = "wintron/serverless@master"
  args = ["invoke", "-f", "hello", "-l"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}

action "ls" {
  needs = ["invoke"]
  uses = "wintron/command@master"
  args = ["ls", "-ltrRa", "/github", "/home"]
}
