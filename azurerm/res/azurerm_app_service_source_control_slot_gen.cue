package res

import "list"

#azurerm_app_service_source_control_slot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_service_source_control_slot")
	close({
		// The URL for the repository
		branch?: string

		// The branch name to use for deployments.
		repo_url?: string
		id?:       string

		// Should the Deployment Rollback be enabled? Defaults to `false`
		rollback_enabled?: bool

		// The SCM Type in use. This value is decoded by the service from
		// the repository information supplied.
		scm_type?: string

		// The ID of the Linux or Windows Web App Slot.
		slot_id!: string

		// Should the Slot use local Git configuration.
		use_local_git?: bool

		// Should code be deployed manually. Set to `true` to disable
		// continuous integration, such as webhooks into online repos
		// such as GitHub. Defaults to `false`
		use_manual_integration?: bool
		github_action_configuration?: matchN(1, [#github_action_configuration, list.MaxItems(1) & [...#github_action_configuration]])
		timeouts?: #timeouts

		// The repository specified is Mercurial. Defaults to `false`.
		use_mercurial?: bool

		// Indicates if the Slot uses a GitHub action for deployment. This
		// value is decoded by the service from the repository
		// information supplied.
		uses_github_action?: bool
	})

	#github_action_configuration: close({
		code_configuration?: matchN(1, [_#defs."/$defs/github_action_configuration/$defs/code_configuration", list.MaxItems(1) & [..._#defs."/$defs/github_action_configuration/$defs/code_configuration"]])
		container_configuration?: matchN(1, [_#defs."/$defs/github_action_configuration/$defs/container_configuration", list.MaxItems(1) & [..._#defs."/$defs/github_action_configuration/$defs/container_configuration"]])

		// Should the service generate the GitHub Action Workflow file.
		// Defaults to `true`
		generate_workflow_file?: bool

		// Denotes this action uses a Linux base image.
		linux_action?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/github_action_configuration/$defs/code_configuration": close({
		// The value to use for the Runtime Stack in the workflow file
		// content for code base apps.
		runtime_stack!: string

		// The value to use for the Runtime Version in the workflow file
		// content for code base apps.
		runtime_version!: string
	})

	_#defs: "/$defs/github_action_configuration/$defs/container_configuration": close({
		// The image name for the build.
		image_name!: string

		// The password used to upload the image to the container
		// registry.
		registry_password?: string

		// The server URL for the container registry where the build will
		// be hosted.
		registry_url!: string

		// The username used to upload the image to the container
		// registry.
		registry_username?: string
	})
}
