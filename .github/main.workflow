workflow "go-serverless" {
  on = "push"
  resolves = ["ls"]
}

action "serverless" {
  uses = "wintron/serverless@master"
  args = ["deploy", "-v"]
}

action "ls" {
  needs = ["serverless"]
  uses = "wintron/command@master"
  args = ["ls", "-ltrRa", "/github", "/home"]
}
