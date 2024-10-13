package res

#github_organization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization_settings")
	advanced_security_enabled_for_new_repositories?:               bool
	billing_email!:                                                string
	blog?:                                                         string
	company?:                                                      string
	default_repository_permission?:                                string
	dependabot_alerts_enabled_for_new_repositories?:               bool
	dependabot_security_updates_enabled_for_new_repositories?:     bool
	dependency_graph_enabled_for_new_repositories?:                bool
	description?:                                                  string
	email?:                                                        string
	has_organization_projects?:                                    bool
	has_repository_projects?:                                      bool
	id?:                                                           string
	location?:                                                     string
	members_can_create_internal_repositories?:                     bool
	members_can_create_pages?:                                     bool
	members_can_create_private_pages?:                             bool
	members_can_create_private_repositories?:                      bool
	members_can_create_public_pages?:                              bool
	members_can_create_public_repositories?:                       bool
	members_can_create_repositories?:                              bool
	members_can_fork_private_repositories?:                        bool
	name?:                                                         string
	secret_scanning_enabled_for_new_repositories?:                 bool
	secret_scanning_push_protection_enabled_for_new_repositories?: bool
	twitter_username?:                                             string
	web_commit_signoff_required?:                                  bool
}
