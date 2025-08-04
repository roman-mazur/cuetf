package res

#aws_directory_service_shared_directory_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_shared_directory_accepter")
	close({
		id?:     string
		method?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		notes?:               string
		owner_account_id?:    string
		owner_directory_id?:  string
		shared_directory_id!: string
		timeouts?:            #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
