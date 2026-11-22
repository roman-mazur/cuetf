package res

import "list"

google_design_center_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_design_center_application")
	close({
		app_parameters?: matchN(1, [#app_parameters, [...#app_parameters]])
		attributes?: matchN(1, [#attributes, list.MaxItems(1) & [...#attributes]])
		component_parameters?: matchN(1, [#component_parameters, [...#component_parameters]])
		composite_application_parameters?: matchN(1, [#composite_application_parameters, list.MaxItems(1) & [...#composite_application_parameters]])
		connection_configs?: matchN(1, [#connection_configs, [...#connection_configs]])
		deployment_target?: matchN(1, [#deployment_target, list.MaxItems(1) & [...#deployment_target]])
		roles_apis_config?: matchN(1, [#roles_apis_config, [...#roles_apis_config]])
		scope!: matchN(1, [#scope, list.MaxItems(1) & [_, ...] & [...#scope]])
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		timeouts?: #timeouts

		// AppHub application URI.
		apphub_application?: string

		// The ID of the application.
		application_id!: string

		// Create time.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Deployment metadata of the application.
		deployment_metadata?: [...close({
			build?: string
			component_output_parameters?: [...close({
				component?: string
				parameters?: [...close({
					key?:   string
					value?: string
				})]
			})]
			error?: [...close({
				code?:          string
				detail?:        string
				error_message?: string
				type?:          string
			})]
			retry_attempts?: number
			revision?:       string
			worker_pool?:    string
		})]

		// Deployment project.
		deployment_project?: string

		// Deployment region.
		deployment_region?: string

		// Description of the application.
		description?: string

		// Display name.
		display_name?: string
		id?:           string

		// The location of the space.
		location!: string

		// Name of the application.
		name?: string

		// Service account for deployment.
		service_account?: string
		project?:         string

		// The space for the application.
		space!: string

		// State of the application.
		state?: string

		// Update time.
		update_time?: string
	})

	#app_parameters: close({
		// The key of the parameter.
		key!: string

		// The value of the parameter, as a JSON-encoded string. Use
		// 'jsonencode()' to set it.
		value?: string
	})

	#attributes: close({
		business_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/business_owners", [..._#defs."/$defs/attributes/$defs/business_owners"]])
		criticality?: matchN(1, [_#defs."/$defs/attributes/$defs/criticality", list.MaxItems(1) & [..._#defs."/$defs/attributes/$defs/criticality"]])
		developer_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/developer_owners", [..._#defs."/$defs/attributes/$defs/developer_owners"]])
		environment?: matchN(1, [_#defs."/$defs/attributes/$defs/environment", list.MaxItems(1) & [..._#defs."/$defs/attributes/$defs/environment"]])
		operator_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/operator_owners", [..._#defs."/$defs/attributes/$defs/operator_owners"]])
	})

	#component_parameters: close({
		parameters?: matchN(1, [_#defs."/$defs/component_parameters/$defs/parameters", [..._#defs."/$defs/component_parameters/$defs/parameters"]])

		// The URI of the component that the parameters belong to.
		component!: string

		// The deployment state of the component.
		state?: string
	})

	#composite_application_parameters: close({
		// A map from a component URI to the service account that deploys the
		// component. Keys use the format
		// 'projects/{project}/locations/{location}/spaces/{space}/applicationTemplates/{application_template}/components/{component}'
		// and values use the format
		// 'projects/{project}/serviceAccounts/{email_address}'.
		service_account_map?: [string]: string
	})

	#connection_configs: close({
		destination_component_parameters?: matchN(1, [_#defs."/$defs/connection_configs/$defs/destination_component_parameters", [..._#defs."/$defs/connection_configs/$defs/destination_component_parameters"]])
		source_component_parameters?: matchN(1, [_#defs."/$defs/connection_configs/$defs/source_component_parameters", [..._#defs."/$defs/connection_configs/$defs/source_component_parameters"]])

		// The URI of the connection.
		connection_uri!: string
	})

	#deployment_target: close({
		gke_deployment_target?: matchN(1, [_#defs."/$defs/deployment_target/$defs/gke_deployment_target", list.MaxItems(1) & [..._#defs."/$defs/deployment_target/$defs/gke_deployment_target"]])
	})

	#roles_apis_config: close({
		apis?: matchN(1, [_#defs."/$defs/roles_apis_config/$defs/apis", [..._#defs."/$defs/roles_apis_config/$defs/apis"]])
		roles?: matchN(1, [_#defs."/$defs/roles_apis_config/$defs/roles", [..._#defs."/$defs/roles_apis_config/$defs/roles"]])

		// The project ID to which these configurations apply.
		project_id!: string
	})

	#scope: close({
		// Scope type.
		type?: string
	})

	#source: close({
		// Application template revision URI.
		application_template_revision?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attributes/$defs/business_owners": close({
		// Contact's name.
		display_name?: string

		// Email address of the contact.
		email!: string
	})

	_#defs: "/$defs/attributes/$defs/criticality": close({
		// Criticality type. Possible values are 'MISSION_CRITICAL', 'HIGH',
		// 'MEDIUM' and 'LOW'.
		type!: string
	})

	_#defs: "/$defs/attributes/$defs/developer_owners": close({
		// Contact's name.
		display_name?: string

		// Email address of the contact.
		email!: string
	})

	_#defs: "/$defs/attributes/$defs/environment": close({
		// Environment type. Possible values are 'PRODUCTION', 'STAGING',
		// 'TEST' and 'DEVELOPMENT'.
		type!: string
	})

	_#defs: "/$defs/attributes/$defs/operator_owners": close({
		// Contact's name.
		display_name?: string

		// Email address of the contact.
		email!: string
	})

	_#defs: "/$defs/component_parameters/$defs/parameters": close({
		// The key of the parameter.
		key!: string

		// The value of the parameter, as a JSON-encoded string. Use
		// 'jsonencode()' to set it.
		value?: string
	})

	_#defs: "/$defs/connection_configs/$defs/destination_component_parameters": close({
		// The key of the parameter.
		key!: string

		// The value of the parameter, as a JSON-encoded string. Use
		// 'jsonencode()' to set it.
		value?: string
	})

	_#defs: "/$defs/connection_configs/$defs/source_component_parameters": close({
		// The key of the parameter.
		key!: string

		// The value of the parameter, as a JSON-encoded string. Use
		// 'jsonencode()' to set it.
		value?: string
	})

	_#defs: "/$defs/deployment_target/$defs/gke_deployment_target": close({
		// The self link of the cluster where the GKE based application is
		// deployed.
		cluster_self_link!: string

		// The Kubernetes service account in the namespace, such as
		// 'default'.
		kubernetes_service_account!: string

		// Whether to create the Kubernetes service account. If 'true', the
		// service account is created in the namespace. If 'false', the
		// service account must already exist in the namespace.
		kubernetes_service_account_creation?: bool

		// The namespace where the application is deployed.
		namespace!: string
	})

	_#defs: "/$defs/roles_apis_config/$defs/apis": close({
		// API name, such as 'compute.googleapis.com'.
		api!: string

		// Whether Application Design Center added the API.
		system_provided?: bool
	})

	_#defs: "/$defs/roles_apis_config/$defs/roles": close({
		// IAM role name, such as 'roles/editor'.
		role!: string

		// Whether Application Design Center added the role.
		system_provided?: bool
	})
}
