resource "github_team_repository" "fuckers" {
  team_id    = "${github_team.sample_team.id}"
  repository = "${github_repository.sample.name}"
  permission = "pull"
}
