package res

#aws_cloudhsm_v2_hsm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudhsm_v2_hsm")
	close({
		availability_zone?: string
		cluster_id!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		hsm_eni_id?: string
		hsm_id?:     string
		hsm_state?:  string
		id?:         string
		ip_address?: string
		subnet_id?:  string
		timeouts?:   #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
