package res

import "list"

google_compute_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_vpn_gateway")
	close({
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string

		// The unique identifier for the resource.
		gateway_id?: number
		id?:         string

		// Name of the resource. Provided by the client when the resource is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except the last
		// character, which cannot be a dash.
		name!: string

		// The network this VPN gateway is accepting traffic for.
		network!: string

		// The region this gateway should sit in.
		region?:    string
		project?:   string
		self_link?: string
	})

	#params: close({
		// Resource manager tags to be bound to the Vpn Gateway. Tag keys and values have the
		// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
