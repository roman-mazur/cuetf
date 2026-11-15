package res

google_redis_cluster_token_auth_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_redis_cluster_token_auth_user")
	close({
		timeouts?: #timeouts

		// The name or resource ID of the Redis cluster.
		cluster!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The full resource name of the Token Auth User.
		name?: string

		// The name of the region of the Redis cluster.
		region?:  string
		project?: string

		// The current state of the Token Auth User.
		state?: string

		// The unique ID (username) of the Token Auth User.
		// The 'default' user cannot be managed with this resource.
		user_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
