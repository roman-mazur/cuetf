package res

google_biglake_iceberg_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_namespace")
	close({
		timeouts?: #timeouts

		// The name of the IcebergCatalog.
		catalog!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The unique identifier of the namespace.
		namespace_id!: string

		// User-defined properties for the namespace.
		properties?: [string]: string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
