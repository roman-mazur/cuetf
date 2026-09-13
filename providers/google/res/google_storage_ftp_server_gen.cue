package res

import "list"

google_storage_ftp_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_ftp_server")
	close({
		external_config?: matchN(1, [#external_config, list.MaxItems(1) & [...#external_config]])
		internal_config?: matchN(1, [#internal_config, list.MaxItems(1) & [...#internal_config]])
		timeouts?: #timeouts

		// The access type for this SFTP server. Possible values: INTERNAL, EXTERNAL
		// Possible values: ["INTERNAL", "EXTERNAL"]
		access_type!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A display name for the server.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// A set of key/value label pairs to assign to the Storage FTP Server.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location (region) of the Storage FTP Server.
		location!: string

		// A unique ID for the server. Must start with a lowercase letter, and end with
		// a lowercase letter or number. Can contain lowercase letters, numbers, and
		// hyphens. Maximum 30 characters.
		server_id!: string
		project?:   string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#external_config: close({
		// A list of allowed IPv4 or IPv6 CIDR block ranges that can connect to this server.
		allowed_cidr_blocks?: [...string]
	})

	#internal_config: close({
		consumer_accept_list?: matchN(1, [_#defs."/$defs/internal_config/$defs/consumer_accept_list", [..._#defs."/$defs/internal_config/$defs/consumer_accept_list"]])
		consumer_reject_list?: matchN(1, [_#defs."/$defs/internal_config/$defs/consumer_reject_list", [..._#defs."/$defs/internal_config/$defs/consumer_reject_list"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/internal_config/$defs/consumer_accept_list": close({
		// The maximum number of Private Service Connect endpoints that can be created
		// in the consumer project.
		connection_limit!: number

		// The project that is allowed to connect, in the format 'projects/{project}'.
		project!: string
	})

	_#defs: "/$defs/internal_config/$defs/consumer_reject_list": close({
		// The project that is rejected from connecting, in the format 'projects/{project}'.
		project!: string
	})
}
