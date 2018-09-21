workflow "on push" {
  on = "push"
  resolves = ["find"]
}

action "find" {
  uses = "docker://alpine"
  runs = "find /github"
}
