package res

#aws_storagegateway_tape_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_storagegateway_tape_pool")
	close({
		arn?:       string
		id?:        string
		pool_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		retention_lock_time_in_days?: number
		retention_lock_type?:         string
		storage_class!:               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
