resource "github_repository" "fuckers" {
  name        = "fuckers"
  description = "fuckers"

  private = false
}

resource "github_team_repository" "fuckers" {
  team_id    = "${github_team.fuckers.id}"
  repository = "${github_repository.fuckers.name}"
  permission = "pull"
}

resource "github_team" "fuckers" {
  name        = "fuckers"
  description = "fuckers"
}

resource "github_team_membership" "fuckers_membership_ronly" {
  count    = "${length(var.fuckers_members["ronly"])}"
  team_id  = "${github_team.fuckers.id}"
  username = "${element(var.fuckers_members["ronly"],count.index)}"
  role     = "member"
}

variable "fuckers_members" {
  type = "map"

  default = {
    ronly = ["claytonsilva", "b1zzy1"]
    all   = []
  }
}
