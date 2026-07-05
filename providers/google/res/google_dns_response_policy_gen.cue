package res

google_dns_response_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dns_response_policy")
	close({
		gke_clusters?: matchN(1, [#gke_clusters, [...#gke_clusters]])
		networks?: matchN(1, [#networks, [...#networks]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the response policy, such as 'My new response policy'.
		description?: string
		id?:          string

		// The user assigned name for this Response Policy, such as 'myresponsepolicy'.
		response_policy_name!: string
		project?:              string
	})

	#gke_clusters: close({
		// The resource name of the cluster to bind this ManagedZone to.
		// This should be specified in the format like
		// 'projects/*/locations/*/clusters/*'
		gke_cluster_name!: string
	})

	#networks: close({
		// The fully qualified URL of the VPC network to bind to.
		// This should be formatted like
		// 'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}'
		network_url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
