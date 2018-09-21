workflow "on push" {
  on = "push"
  resolves = ["payload"]
}

action "find" {
  uses = "docker://alpine"
  runs = "find /github"
}

action "payload" {
  needs = "find"
  uses = "docker://alpine"
  runs = "find /github"
}
