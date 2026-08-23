package res

aws_lambdamicrovms_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambdamicrovms_image")
	close({
		code_artifact?: matchN(1, [#code_artifact, [...#code_artifact]])
		cpu_configuration?: matchN(1, [#cpu_configuration, [...#cpu_configuration]])
		timeouts?: #timeouts
		additional_os_capabilities?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		arn?:                string
		base_image_arn!:     string
		base_image_version?: string
		build_role_arn!:     string
		created_at?:         string
		description?:        string
		egress_network_connectors?: [...string]
		environment_variables?: [string]: string
		image_version?:               string
		latest_active_image_version?: string
		latest_failed_image_version?: string
		name!:                        string
		state?:                       string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
	})

	#code_artifact: close({
		uri!: string
	})

	#cpu_configuration: close({
		architecture!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
