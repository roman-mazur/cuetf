package res

import "list"

google_network_services_service_lb_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_service_lb_policies")
	close({
		auto_capacity_drain?: matchN(1, [#auto_capacity_drain, list.MaxItems(1) & [...#auto_capacity_drain]])
		failover_config?: matchN(1, [#failover_config, list.MaxItems(1) & [...#failover_config]])
		timeouts?: #timeouts

		// Time the ServiceLbPolicy was created in UTC.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A free-text description of the resource. Max length 1024 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of label tags associated with the ServiceLbPolicy resource.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The type of load balancing algorithm to be used. The default behavior is
		// WATERFALL_BY_REGION. Possible values: ["SPRAY_TO_REGION", "SPRAY_TO_WORLD",
		// "WATERFALL_BY_REGION", "WATERFALL_BY_ZONE"]
		load_balancing_algorithm?: string

		// The location of the service lb policy.
		location!: string

		// Name of the ServiceLbPolicy resource. It matches pattern
		// 'projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}'.
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Time the ServiceLbPolicy was updated in UTC.
		update_time?: string
	})

	#auto_capacity_drain: close({
		// Optional. If set to 'True', an unhealthy MIG/NEG will be set as drained. - An
		// MIG/NEG is considered unhealthy if less than 25% of the instances/endpoints
		// in the MIG/NEG are healthy. - This option will never result in draining more
		// than 50% of the configured IGs/NEGs for the Backend Service.
		enable?: bool
	})

	#failover_config: close({
		// Optional. The percentage threshold that a load balancer will begin to send
		// traffic to failover backends. If the percentage of endpoints in a MIG/NEG is
		// smaller than this value, traffic would be sent to failover backends if
		// possible. This field should be set to a value between 1 and 99. The default
		// value is 50 for Global external HTTP(S) load balancer (classic) and
		// Proxyless service mesh, and 70 for others.
		failover_health_threshold!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
