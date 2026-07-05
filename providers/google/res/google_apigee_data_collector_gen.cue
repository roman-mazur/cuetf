package res

google_apigee_data_collector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_data_collector")
	close({
		timeouts?: #timeouts

		// The time at which the data collector was created in milliseconds since the epoch.
		created_at?: string

		// The ID for the data collector. Must begin with 'dc_'.
		data_collector_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A description of the data collector.
		description?: string
		id?:          string

		// The time at which the data collector was last modified in milliseconds since the epoch.
		last_modified_at?: string

		// The resource name of the data collector, in the format
		// 'organizations/{{org_name}}/datacollectors/{{data_collector_id}}'.
		name?: string

		// The Apigee Organization associated with the Apigee data collector,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// The type of data this data collector will collect. Possible values:
		// ["BOOLEAN", "DATETIME", "FLOAT", "INTEGER", "STRING"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
