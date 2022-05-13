

data "github_repository" "centralized" {
  full_name      = "voulem/centralized"

} 

data "github_repository_file" "centralized_file" {
  repository          = github_repository.centralized.full_name
  branch              = "main"
  file                = "newfile.txt"
}

data "github_repository" "micro_services" {
  full_name      = "voulem/sample"

}
resource "github_repository_file" "micro_services_file" {
  repository          = data.github_repository.micro_services.full_name
  branch              = "main"
  file                = "newfile.txt"
  content             = file(data.github_repository_file.centralized_file.file)
  overwrite_on_create = true
}