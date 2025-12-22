package res

#github_organization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_organization_settings")
	close({
		// Whether or not advanced security is enabled for new
		// repositories.
		advanced_security_enabled_for_new_repositories?: bool

		// The billing email address for the organization.
		billing_email!: string

		// The blog URL for the organization.
		blog?: string

		// The company name for the organization.
		company?: string

		// The default permission for organization members to create new
		// repositories. Can be one of 'read', 'write', 'admin' or
		// 'none'.
		default_repository_permission?: string

		// Whether or not dependabot alerts are enabled for new
		// repositories.
		dependabot_alerts_enabled_for_new_repositories?: bool

		// Whether or not dependabot security updates are enabled for new
		// repositories.
		dependabot_security_updates_enabled_for_new_repositories?: bool

		// Whether or not dependency graph is enabled for new
		// repositories.
		dependency_graph_enabled_for_new_repositories?: bool

		// The description for the organization.
		description?: string

		// The email address for the organization.
		email?: string

		// Whether or not organization projects are enabled for the
		// organization.
		has_organization_projects?: bool

		// Whether or not repository projects are enabled for the
		// organization.
		has_repository_projects?: bool

		// The location for the organization.
		location?: string

		// Whether or not organization members can create new internal
		// repositories. For Enterprise Organizations only.
		members_can_create_internal_repositories?: bool
		id?:                                       string

		// Whether or not organization members can create new pages.
		members_can_create_pages?: bool

		// Whether or not organization members can create new private
		// pages.
		members_can_create_private_pages?: bool

		// Whether or not organization members can create new private
		// repositories.
		members_can_create_private_repositories?: bool

		// Whether or not organization members can create new public
		// pages.
		members_can_create_public_pages?: bool

		// Whether or not organization members can create new public
		// repositories.
		members_can_create_public_repositories?: bool

		// Whether or not organization members can create new
		// repositories.
		members_can_create_repositories?: bool

		// Whether or not organization members can fork private
		// repositories.
		members_can_fork_private_repositories?: bool

		// The name for the organization.
		name?: string

		// Whether or not secret scanning is enabled for new repositories.
		secret_scanning_enabled_for_new_repositories?: bool

		// Whether or not secret scanning push protection is enabled for
		// new repositories.
		secret_scanning_push_protection_enabled_for_new_repositories?: bool

		// The Twitter username for the organization.
		twitter_username?: string

		// Whether or not commit signatures are required for commits to
		// the organization.
		web_commit_signoff_required?: bool
	})
}
