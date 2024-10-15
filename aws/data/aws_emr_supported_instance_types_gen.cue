package data

#aws_emr_supported_instance_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_supported_instance_types")
	id?:            string
	release_label!: string
	supported_instance_types?: #supported_instance_types | [...#supported_instance_types]

	#supported_instance_types: {
		architecture?:             string
		ebs_optimized_available?:  bool
		ebs_optimized_by_default?: bool
		ebs_storage_only?:         bool
		instance_family_id?:       string
		is_64_bits_only?:          bool
		memory_gb?:                number
		number_of_disks?:          number
		storage_gb?:               number
		type?:                     string
		vcpu?:                     number
	}
}
