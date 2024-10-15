package res

#aws_servicecatalog_provisioning_artifact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_provisioning_artifact")
	accept_language?:             string
	active?:                      bool
	created_time?:                string
	description?:                 string
	disable_template_validation?: bool
	guidance?:                    string
	id?:                          string
	name?:                        string
	product_id!:                  string
	provisioning_artifact_id?:    string
	template_physical_id?:        string
	template_url?:                string
	type?:                        string
	timeouts?:                    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
