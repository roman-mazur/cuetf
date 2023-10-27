package data

#github_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization")
	advanced_security_enabled_for_new_repositories?:           bool
	default_repository_permission?:                            string
	dependabot_alerts_enabled_for_new_repositories?:           bool
	dependabot_security_updates_enabled_for_new_repositories?: bool
	dependency_graph_enabled_for_new_repositories?:            bool
	description?:                                              string
	id?:                                                       string
	login?:                                                    string
	members_allowed_repository_creation_type?:                 string
	members_can_create_internal_repositories?:                 bool
	members_can_create_pages?:                                 bool
	members_can_create_private_pages?:                         bool
	members_can_create_private_repositories?:                  bool
	members_can_create_public_pages?:                          bool
	members_can_create_public_repositories?:                   bool
	members_can_create_repositories?:                          bool
	members_can_fork_private_repositories?:                    bool
	name:                                                      string
	node_id?:                                                  string
	orgname?:                                                  string
	plan?:                                                     string
	repositories?: [...string]
	secret_scanning_enabled_for_new_repositories?:                 bool
	secret_scanning_push_protection_enabled_for_new_repositories?: bool
	two_factor_requirement_enabled?:                               bool
	users?: [...{
		[string]: string
	}]
	web_commit_signoff_required?: bool
}
