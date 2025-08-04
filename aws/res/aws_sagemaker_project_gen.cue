package res

import "list"

#aws_sagemaker_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_project")
	close({
		service_catalog_provisioning_details?: matchN(1, [#service_catalog_provisioning_details, list.MaxItems(1) & [_, ...] & [...#service_catalog_provisioning_details]])
		arn?:                 string
		id?:                  string
		project_description?: string
		project_id?:          string
		project_name!:        string
		region?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#service_catalog_provisioning_details: close({
		provisioning_parameter?: matchN(1, [_#defs."/$defs/service_catalog_provisioning_details/$defs/provisioning_parameter", [..._#defs."/$defs/service_catalog_provisioning_details/$defs/provisioning_parameter"]])
		path_id?:                  string
		product_id!:               string
		provisioning_artifact_id?: string
	})

	_#defs: "/$defs/service_catalog_provisioning_details/$defs/provisioning_parameter": close({
		key!:   string
		value?: string
	})
}
