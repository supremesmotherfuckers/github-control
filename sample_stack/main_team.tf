resource "github_team" "sample" {
  name        = "sample"
  description = "sample"
  privacy     = "closed"
}

resource "github_team" "sample_team" {
  name        = "sample_team"
  description = "sample_team"
}

resource "github_team_membership" "sample_team_membership" {
  team_id  = "${github_team.sample_team.id}"
  username = "claytonsilva"
  role     = "maintainer"
}
