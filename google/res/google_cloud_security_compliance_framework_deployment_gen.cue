package res

import "list"

#google_cloud_security_compliance_framework_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_security_compliance_framework_deployment")
	close({
		// The references to the cloud control deployments. It has all the
		// CloudControlDeployments which are either directly added in the
		// framework or
		// through a CloudControlGroup.
		// Example: If a framework deployment deploys two
		// cloud controls, cc-deployment-1 and cc-deployment-2, then the
		// cloud_control_deployment_references will be:
		// {
		// cloud_control_deployment_reference: {
		// cloud_control_deployment:
		// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-1"
		// },
		// cloud_control_deployment_reference: {
		// cloud_control_deployment:
		// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-2"
		// }
		cloud_control_deployment_references?: [...close({
			cloud_control_deployment?: string
		})]

		// The resource on which the Framework is deployed based on the
		// provided
		// TargetResourceConfig in the following format:
		// organizations/{organization}, folders/{folder} or
		// projects/{project}
		computed_target_resource?: string

		// The time at which the resource was created.
		create_time?: string

		// The deployment state of the framework.
		// Possible values:
		// DEPLOYMENT_STATE_VALIDATING
		// DEPLOYMENT_STATE_CREATING
		// DEPLOYMENT_STATE_DELETING
		// DEPLOYMENT_STATE_FAILED
		// DEPLOYMENT_STATE_READY
		// DEPLOYMENT_STATE_PARTIALLY_DEPLOYED
		// DEPLOYMENT_STATE_PARTIALLY_DELETED
		deployment_state?: string

		// User provided description of the Framework deployment
		description?: string

		// To prevent concurrent updates from overwriting each other,
		// always provide
		// the 'etag' when you update a FrameworkDeployment. You can also
		// provide the 'etag' when you delete a FrameworkDeployment, to
		// help
		// ensure that you're deleting the intended version of the
		// FrameworkDeployment.
		etag?: string

		// User provided identifier. It should be unique in scope of a
		// parent.
		// This is optional and if not provided, a random UUID will be
		// generated.
		framework_deployment_id!: string
		id?:                      string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		cloud_control_metadata!: matchN(1, [#cloud_control_metadata, [_, ...] & [...#cloud_control_metadata]])
		framework!: matchN(1, [#framework, list.MaxItems(1) & [_, ...] & [...#framework]])
		target_resource_config!: matchN(1, [#target_resource_config, list.MaxItems(1) & [_, ...] & [...#target_resource_config]])
		timeouts?: #timeouts

		// Identifier. FrameworkDeployment name in the following format:
		// organizations/{organization}/locations/{location}/frameworkDeployments/{framework_deployment_id}
		name?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		organization!: string

		// The display name of the target resource.
		target_resource_display_name?: string

		// The time at which the resource last updated.
		update_time?: string
	})

	#cloud_control_metadata: close({
		cloud_control_details!: matchN(1, [_#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details"]])

		// Enforcement mode for the framework deployment.
		// Possible values:
		// PREVENTIVE
		// DETECTIVE
		// AUDIT
		enforcement_mode!: string
	})

	#framework: close({
		// In the format:
		// organizations/{org}/locations/{location}/frameworks/{framework}
		framework!: string

		// Major revision id of the framework.
		major_revision_id!: string
	})

	#target_resource_config: close({
		target_resource_creation_config?: matchN(1, [_#defs."/$defs/target_resource_config/$defs/target_resource_creation_config", list.MaxItems(1) & [..._#defs."/$defs/target_resource_config/$defs/target_resource_creation_config"]])

		// CRM node in format organizations/{organization},
		// folders/{folder},
		// or projects/{project}
		existing_target_resource?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/cloud_control_metadata/$defs/cloud_control_details": close({
		parameters?: matchN(1, [_#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters", [..._#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters"]])

		// Major revision of cloudcontrol
		major_revision_id!: string

		// The name of the CloudControl in the format:
		// “organizations/{organization}/locations/{location}/
		// cloudControls/{cloud-control}”
		name!: string
	})

	_#defs: "/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters": close({
		parameter_value!: matchN(1, [_#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value"]])

		// The name of the parameter.
		name!: string
	})

	_#defs: "/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value": close({
		// Represents a boolean value.
		bool_value?: bool
		string_list_value?: matchN(1, [_#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value", list.MaxItems(1) & [..._#defs."/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value"]])

		// Represents a double value.
		number_value?: number

		// Represents a string value.
		string_value?: string
	})

	_#defs: "/$defs/cloud_control_metadata/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value": close({
		// The strings in the list.
		values!: [...string]
	})

	_#defs: "/$defs/target_resource_config/$defs/target_resource_creation_config": close({
		folder_creation_config?: matchN(1, [_#defs."/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/folder_creation_config", list.MaxItems(1) & [..._#defs."/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/folder_creation_config"]])
		project_creation_config?: matchN(1, [_#defs."/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/project_creation_config", list.MaxItems(1) & [..._#defs."/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/project_creation_config"]])
	})

	_#defs: "/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/folder_creation_config": close({
		// Display name of the folder to be created
		folder_display_name!: string

		// The parent of the folder to be created. It can be an
		// organizations/{org} or
		// folders/{folder}
		parent!: string
	})

	_#defs: "/$defs/target_resource_config/$defs/target_resource_creation_config/$defs/project_creation_config": close({
		// Billing account id to be used for the project.
		billing_account_id!: string

		// organizations/{org} or folders/{folder}
		parent!: string

		// Display name of the project to be created.
		project_display_name!: string
	})
}
