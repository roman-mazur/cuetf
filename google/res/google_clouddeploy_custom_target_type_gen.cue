package res

import "list"

#google_clouddeploy_custom_target_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddeploy_custom_target_type")
	close({
		// User annotations. These attributes can only be set and used by
		// the user, and not by Cloud Deploy. See
		// https://google.aip.dev/128#annotations for more details such
		// as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Time at which the 'CustomTargetType' was created.
		create_time?: string

		// Resource id of the 'CustomTargetType'.
		custom_target_type_id?: string

		// Description of the 'CustomTargetType'. Max length is 255
		// characters.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The weak etag of the 'CustomTargetType' resource. This checksum
		// is computed by the server based on the value of other fields,
		// and may be sent on update and delete requests to ensure the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Labels are attributes that can be set and used by both the user
		// and by Cloud Deploy. Labels must meet the following
		// constraints: * Keys and values can contain only lowercase
		// letters, numeric characters, underscores, and dashes. * All
		// characters must use UTF-8 encoding, and international
		// characters are allowed. * Keys must start with a lowercase
		// letter or international character. * Each resource is limited
		// to a maximum of 64 labels. Both keys and values are
		// additionally constrained to be <= 128 bytes.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the source.
		location!: string
		custom_actions?: matchN(1, [#custom_actions, list.MaxItems(1) & [...#custom_actions]])
		timeouts?: #timeouts

		// Name of the 'CustomTargetType'.
		name!:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Unique identifier of the 'CustomTargetType'.
		uid?: string

		// Time at which the 'CustomTargetType' was updated.
		update_time?: string
	})

	#custom_actions: close({
		include_skaffold_modules?: matchN(1, [_#defs."/$defs/custom_actions/$defs/include_skaffold_modules", [..._#defs."/$defs/custom_actions/$defs/include_skaffold_modules"]])

		// The Skaffold custom action responsible for deploy operations.
		deploy_action!: string

		// The Skaffold custom action responsible for render operations.
		// If not provided then Cloud Deploy will perform the render
		// operations via 'skaffold render'.
		render_action?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/custom_actions/$defs/include_skaffold_modules": close({
		git?: matchN(1, [_#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/git", list.MaxItems(1) & [..._#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/git"]])
		google_cloud_build_repo?: matchN(1, [_#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_build_repo", list.MaxItems(1) & [..._#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_build_repo"]])
		google_cloud_storage?: matchN(1, [_#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_storage", list.MaxItems(1) & [..._#defs."/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_storage"]])

		// The Skaffold Config modules to use from the specified source.
		configs?: [...string]
	})

	_#defs: "/$defs/custom_actions/$defs/include_skaffold_modules/$defs/git": close({
		// Relative path from the repository root to the Skaffold file.
		path?: string

		// Git ref the package should be cloned from.
		ref?: string

		// Git repository the package should be cloned from.
		repo!: string
	})

	_#defs: "/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_build_repo": close({
		// Relative path from the repository root to the Skaffold file.
		path?: string

		// Branch or tag to use when cloning the repository.
		ref?: string

		// Cloud Build 2nd gen repository in the format of
		// 'projects/<project>/locations/<location>/connections/<connection>/repositories/<repository>'.
		repository!: string
	})

	_#defs: "/$defs/custom_actions/$defs/include_skaffold_modules/$defs/google_cloud_storage": close({
		// Relative path from the source to the Skaffold file.
		path?: string

		// Cloud Storage source paths to copy recursively. For example,
		// providing 'gs://my-bucket/dir/configs/*' will result in
		// Skaffold copying all files within the 'dir/configs' directory
		// in the bucket 'my-bucket'.
		source!: string
	})
}
