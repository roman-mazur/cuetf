package res

import "list"

#aws_fsx_data_repository_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_data_repository_association")
	close({
		arn?:                              string
		association_id?:                   string
		batch_import_meta_data_on_create?: bool
		data_repository_path!:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		delete_data_in_filesystem?: bool
		file_system_id!:            string
		s3?: matchN(1, [#s3, list.MaxItems(1) & [...#s3]])
		timeouts?:                 #timeouts
		file_system_path!:         string
		id?:                       string
		imported_file_chunk_size?: number
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#s3: close({
		auto_export_policy?: matchN(1, [_#defs."/$defs/s3/$defs/auto_export_policy", list.MaxItems(1) & [..._#defs."/$defs/s3/$defs/auto_export_policy"]])
		auto_import_policy?: matchN(1, [_#defs."/$defs/s3/$defs/auto_import_policy", list.MaxItems(1) & [..._#defs."/$defs/s3/$defs/auto_import_policy"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/s3/$defs/auto_export_policy": close({
		events?: [...string]
	})

	_#defs: "/$defs/s3/$defs/auto_import_policy": close({
		events?: [...string]
	})
}
