package res

import "list"

#google_secure_source_manager_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_secure_source_manager_repository")
	close({
		// Time the repository was created in UTC.
		create_time?: string

		// The deletion policy for the repository. Setting 'ABANDON'
		// allows the resource
		// to be abandoned, rather than deleted. Setting 'DELETE' deletes
		// the resource
		// and all its contents. Setting 'PREVENT' prevents the resource
		// from accidental deletion
		// by erroring out during plan.
		// Default is 'PREVENT'. Possible values are:
		// * DELETE
		// * PREVENT
		// * ABANDON
		deletion_policy?: string

		// Description of the repository, which cannot exceed 500
		// characters.
		description?: string

		// The name of the instance in which the repository is hosted.
		instance!: string
		id?:       string

		// The location for the Repository.
		location!: string

		// The resource name for the Repository.
		name?: string

		// The ID for the Repository.
		repository_id!: string

		// Unique identifier of the repository.
		uid?: string
		initial_config?: matchN(1, [#initial_config, list.MaxItems(1) & [...#initial_config]])
		project?:  string
		timeouts?: #timeouts

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
