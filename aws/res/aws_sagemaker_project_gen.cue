package res

import "list"

#aws_sagemaker_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_project")
	arn?:                 string
	id?:                  string
	project_description?: string
	project_id?:          string
	project_name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	service_catalog_provisioning_details?: #service_catalog_provisioning_details | list.MaxItems(1) & [_, ...] & [...#service_catalog_provisioning_details]

	#service_catalog_provisioning_details: {
		path_id?:                  string
		product_id!:               string
		provisioning_artifact_id?: string
		provisioning_parameter?: #service_catalog_provisioning_details.#provisioning_parameter | [...#service_catalog_provisioning_details.#provisioning_parameter]

		#provisioning_parameter: {
			key!:   string
			value?: string
		}
	}
}
