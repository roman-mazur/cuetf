package res

google_oracle_database_cloud_exadata_infrastructure_exascale_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_cloud_exadata_infrastructure_exascale_config")
	close({
		timeouts?: #timeouts

		// A reference to CloudExadataInfrastructure resource
		cloud_exadata_infrastructure!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The total storage to be allocated to Exascale in GBs.
		total_storage_size_gb!: number
		location!:              string
		project?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
