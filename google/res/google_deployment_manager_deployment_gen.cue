package res

import "list"

#google_deployment_manager_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_deployment_manager_deployment")
	close({
		// Set the policy to use for creating new resources. Only used on
		// create and update. Valid values are 'CREATE_OR_ACQUIRE'
		// (default) or
		// 'ACQUIRE'. If set to 'ACQUIRE' and resources do not already
		// exist,
		// the deployment will fail. Note that updating this field does
		// not
		// actually affect the deployment, just how it is updated. Default
		// value: "CREATE_OR_ACQUIRE" Possible values: ["ACQUIRE",
		// "CREATE_OR_ACQUIRE"]
		create_policy?: string

		// Set the policy to use for deleting new resources on
		// update/delete.
		// Valid values are 'DELETE' (default) or 'ABANDON'. If 'DELETE',
		// resource is deleted after removal from Deployment Manager. If
		// 'ABANDON', the resource is only removed from Deployment Manager
		// and is not actually deleted. Note that updating this field does
		// not
		// actually change the deployment, just how it is updated. Default
		// value: "DELETE" Possible values: ["ABANDON", "DELETE"]
		delete_policy?: string

		// Unique identifier for deployment. Output only.
		deployment_id?: string

		// Optional user-provided description of deployment.
		description?: string
		id?:          string

		// Output only. URL of the manifest representing the last manifest
		// that
		// was successfully deployed.
		manifest?: string

		// Unique name for the deployment
		name!: string

		// If set to true, a deployment is created with "shell" resources
		// that are not actually instantiated. This allows you to preview
		// a
		// deployment. It can be updated to false to actually deploy
		// with real resources.
		// ~>**NOTE:** Deployment Manager does not allow update
		// of a deployment in preview (unless updating to preview=false).
		// Thus,
		// Terraform will force-recreate deployments if either preview is
		// updated
		// to true or if other fields are updated while preview is true.
		preview?: bool
		labels?: matchN(1, [#labels, [...#labels]])
		target!: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?: #timeouts
		project?:  string

		// Output only. Server defined URL for the resource.
		self_link?: string
	})

	#labels: close({
		// Key for label.
		key?: string

		// Value of label.
		value?: string
	})

	#target: close({
		config!: matchN(1, [_#defs."/$defs/target/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target/$defs/config"]])
		imports?: matchN(1, [_#defs."/$defs/target/$defs/imports", [..._#defs."/$defs/target/$defs/imports"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/target/$defs/config": close({
		// The full YAML contents of your configuration file.
		content!: string
	})

	_#defs: "/$defs/target/$defs/imports": close({
		// The full contents of the template that you want to import.
		content?: string

		// The name of the template to import, as declared in the YAML
		// configuration.
		name?: string
	})
}
