package res

import "list"

google_secure_source_manager_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_secure_source_manager_repository")
	close({
		initial_config?: matchN(1, [#initial_config, list.MaxItems(1) & [...#initial_config]])
		timeouts?: #timeouts

		// Time the repository was created in UTC.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "PREVENT".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the repository, which cannot exceed 500 characters.
		description?: string
		id?:          string

		// The name of the instance in which the repository is hosted.
		instance!: string

		// The location for the Repository.
		location!: string

		// The resource name for the Repository.
		name?: string

		// The ID for the Repository.
		repository_id!: string
		project?:       string

		// Unique identifier of the repository.
		uid?: string

		// Time the repository was updated in UTC.
		update_time?: string

		// URIs for the repository.
		uris?: [...close({
			api?:       string
			git_https?: string
			html?:      string
		})]
	})

	#initial_config: close({
		// Default branch name of the repository.
		default_branch?: string

		// List of gitignore template names user can choose from.
		// Valid values can be viewed at
		// https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
		gitignores?: [...string]

		// License template name user can choose from.
		// Valid values can be viewed at
		// https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
		license?: string

		// README template name.
		// Valid values can be viewed at
		// https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
		readme?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
